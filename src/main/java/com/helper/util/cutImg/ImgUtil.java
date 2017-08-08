package com.helper.util.cutImg;

import java.awt.Graphics;  
import java.awt.Image;  
import java.awt.Rectangle;  
import java.awt.Toolkit;  
import java.awt.image.BufferedImage;  
import java.awt.image.CropImageFilter;  
import java.awt.image.FilteredImageSource;  
import java.io.ByteArrayInputStream;  
import java.io.ByteArrayOutputStream;  
import java.io.File;  
import java.io.IOException;  
import java.util.Iterator;  
  
import javax.imageio.ImageIO;  
import javax.imageio.ImageReadParam;  
import javax.imageio.ImageReader;  
import javax.imageio.stream.ImageInputStream;  
/** 
 * 图片工具类 
 * @author xiangxg 
 * 
 */  
public class ImgUtil {  
  
    /** 对图片裁剪，并把裁剪完的新图片保存 */  
    /** 
     *  
     * @param x 
     * @param y 
     * @param width 
     * @param height 
     * @param srcPath 
     * @param desWidth缩放目标宽 
     * @param desHeight缩放目标高 
     * @return 
     * @throws IOException 
     */  
    public static byte[] cut(int x, int y, int width, int height,  
            String srcPath, String desWidth, String desHeight)  
            throws IOException {  
        ByteArrayOutputStream srcImgStream = new ByteArrayOutputStream();  
        ByteArrayOutputStream destImgStream = new ByteArrayOutputStream();  
        // 对原图进行缩放  
        createThumb(srcPath, srcImgStream, Integer.parseInt(desWidth),  
                Integer.parseInt(desHeight));  
  
        ImageInputStream iis = null;  
  
        try {  
  
            /* 
             * 返回包含所有当前已注册 ImageReader 的 Iterator，这些 ImageReader 声称能够解码指定格式。 
             * 参数：formatName - 包含非正式格式名称 . （例如 "jpeg" 或 "tiff"）等 。 
             */  
            Iterator<ImageReader> it = ImageIO  
                    .getImageReadersByFormatName("jpg");  
            ImageReader reader = it.next();  
            // 获取图片流  
            iis = ImageIO.createImageInputStream(new ByteArrayInputStream(  
                    srcImgStream.toByteArray()));  
            /* 
             * < 此设置意味着包含在输入源中的图像将只按顺序读取，可能允许 reader 
             * 避免缓存包含与以前已经读取的图像关联的数据的那些输入部分。 
             */  
            reader.setInput(iis, true);  
            /* 
             * 描述如何对流进行解码的类用于指定如何在输入时从 Java Image I/O 
             * 框架的上下文中的流转换一幅图像或一组图像。用于特定图像格式的插件 将从其 ImageReader 实现的 
             * getDefaultReadParam 方法中返回 ImageReadParam 的实例。 
             */  
            ImageReadParam param = reader.getDefaultReadParam();  
            /* 
             * 图片裁剪区域。Rectangle 指定了坐标空间中的一个区域，通过 Rectangle 对象 
             * 的左上顶点的坐标（x，y）、宽度和高度可以定义这个区域。 
             */  
            Rectangle rect = new Rectangle(x, y, width, height);  
            // 提供一个 BufferedImage，将其用作解码像素数据的目标。  
            param.setSourceRegion(rect);  
            /* 
             * 使用所提供的 ImageReadParam 读取通过索引 imageIndex 指定的对象，并将 它作为一个完整的 
             * BufferedImage 返回。 
             */  
            BufferedImage bi = reader.read(0, param);  
  
            ImageIO.write(bi, "jpg", destImgStream);  
            destImgStream.flush();  
  
            return destImgStream.toByteArray();  
  
        } finally {  
            if (destImgStream != null)  
                destImgStream.close();  
            if (srcImgStream != null)  
                srcImgStream.close();  
            if (iis != null)  
                iis.close();  
        }  
  
    }  
  
    /** 
     *  
     * @param srcImgPath 
     *            待切割图片路径 
     * @param destImgPath 
     *            切割后图片路径 
     * @param destImgW 
     *            所需宽度 
     * @param destImgH 
     *            所需高度 
     * @throws IOException 
     */  
    public static void createThumb(String srcImgPath,  
            ByteArrayOutputStream out, int destImgW, int destImgH)  
            throws IOException {  
  
        BufferedImage bi = ImageIO.read(new File(srcImgPath));  
        BufferedImage cutRightNarrowImg = adjustImage(bi, destImgW, destImgH);  
        ImageIO.write(cutRightNarrowImg, "JPEG", out);  
  
    }  
  
    public static void createThumb(byte[] srcImg, String destFile,  
            int destImgW, int destImgH) throws IOException {  
  
        BufferedImage bi = ImageIO.read(new ByteArrayInputStream(srcImg));  
          
        BufferedImage cutRightNarrowImg = adjustImage(bi, destImgW, destImgH);  
        File file = new File(destFile);  
        if(!file.exists()){  
            file.mkdirs();  
        }  
        ImageIO.write(cutRightNarrowImg, "JPEG", file);  
  
    }  
  
    private static BufferedImage adjustImage(BufferedImage bi, int destImgW,  
            int destImgH) throws IOException {  
        // 原图片等比例缩小或放大之后的图片  
        int narrowImgW;  
        int narrowImgH;  
        BufferedImage cutRightNarrowImg = null;  
        // 原图片大小  
        int srcImgW;  
        int srcImgH;  
        srcImgW = bi.getWidth();  
        srcImgH = bi.getHeight();  
  
        // 转换图片尺寸与目标尺寸比较 ， 如果转换图片较小，说明转换图片相对于目标图片来说高较小，需要以高为基准进行缩放。  
        if ((float) srcImgW / srcImgH > (float) destImgW / destImgH) {  
            narrowImgW = (int) (((float) destImgH / (float) srcImgH) * srcImgW);  
            narrowImgH = destImgH;  
            // 按照原图以高为基准等比例缩放、或放大。这一步高为所需图片的高度，宽度肯定会比目标宽度宽。  
            int cutNarrowImgSize = (narrowImgW - destImgW) / 2;  
            BufferedImage narrowImg = new BufferedImage(narrowImgW, narrowImgH,  
                    BufferedImage.TYPE_INT_RGB);  
            narrowImg.getGraphics().drawImage(  
                    bi.getScaledInstance(narrowImgW, narrowImgH,  
                            Image.SCALE_SMOOTH), 0, 0, null);  
            // 等比例缩放完成后宽度与目标尺寸宽度相比较 ， 将多余宽的部分分为两份 ，左边删除一部分  
            Image image = narrowImg.getScaledInstance(narrowImgW, narrowImgH,  
                    Image.SCALE_DEFAULT);  
            CropImageFilter cropFilter = new CropImageFilter(cutNarrowImgSize,  
                    0, narrowImgW - cutNarrowImgSize, narrowImgH);  
            Image img = Toolkit.getDefaultToolkit().createImage(  
                    new FilteredImageSource(image.getSource(), cropFilter));  
            BufferedImage cutLiftNarrowImg = new BufferedImage(narrowImgW  
                    - cutNarrowImgSize, narrowImgH, BufferedImage.TYPE_INT_RGB);  
            cutLiftNarrowImg.getGraphics().drawImage(img, 0, 0, null);  
            // 右边删除一部分  
            image = cutLiftNarrowImg.getScaledInstance(narrowImgW  
                    - cutNarrowImgSize, narrowImgH, Image.SCALE_DEFAULT);  
            cropFilter = new CropImageFilter(0, 0, narrowImgW  
                    - cutNarrowImgSize * 2, narrowImgH);  
            img = Toolkit.getDefaultToolkit().createImage(  
                    new FilteredImageSource(image.getSource(), cropFilter));  
            cutRightNarrowImg = new BufferedImage(narrowImgW - cutNarrowImgSize  
                    * 2, narrowImgH, BufferedImage.TYPE_INT_RGB);  
            Graphics g = cutRightNarrowImg.getGraphics();  
            g.drawImage(img, 0, 0, null); // 绘制截取后的图  
            g.dispose();  
            // 输出为文件 最终为所需要的格式  
  
        } else { // 以宽度为基准  
            narrowImgW = destImgW;  
            narrowImgH = (int) (((float) destImgW / (float) srcImgW) * srcImgH);  
            int cutNarrowImgSize = (narrowImgH - destImgH) / 2;  
  
            BufferedImage narrowImg = new BufferedImage(narrowImgW, narrowImgH,  
                    BufferedImage.TYPE_INT_RGB);  
            narrowImg.getGraphics().drawImage(  
                    bi.getScaledInstance(narrowImgW, narrowImgH,  
                            Image.SCALE_SMOOTH), 0, 0, null);  
  
            Image image = narrowImg.getScaledInstance(narrowImgW, narrowImgH,  
                    Image.SCALE_DEFAULT);  
            CropImageFilter cropFilter = new CropImageFilter(0,  
                    cutNarrowImgSize, narrowImgW, narrowImgH - cutNarrowImgSize);  
            Image img = Toolkit.getDefaultToolkit().createImage(  
                    new FilteredImageSource(image.getSource(), cropFilter));  
            BufferedImage cutTopNarrowImg = new BufferedImage(narrowImgW,  
                    narrowImgH - cutNarrowImgSize, BufferedImage.TYPE_INT_RGB);  
            cutTopNarrowImg.getGraphics().drawImage(img, 0, 0, null);  
  
            image = cutTopNarrowImg.getScaledInstance(narrowImgW, narrowImgH  
                    - cutNarrowImgSize, Image.SCALE_DEFAULT);  
            cropFilter = new CropImageFilter(0, 0, narrowImgW, narrowImgH  
                    - cutNarrowImgSize * 2);  
            img = Toolkit.getDefaultToolkit().createImage(  
                    new FilteredImageSource(image.getSource(), cropFilter));  
            cutRightNarrowImg = new BufferedImage(narrowImgW, narrowImgH  
                    - cutNarrowImgSize * 2, BufferedImage.TYPE_INT_RGB);  
            Graphics g = cutRightNarrowImg.getGraphics();  
            g.drawImage(img, 0, 0, null);  
            g.dispose();  
  
        }  
        return cutRightNarrowImg;  
    }  
  
}  
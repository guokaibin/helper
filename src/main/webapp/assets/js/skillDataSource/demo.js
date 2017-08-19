$(document).ready(function () {
    console.log("document ready");


    //默认及实例
    (function demo1() {
        var $area1Input = $("input[name=area1]").areaselect()
        var area1SelectInstance = $area1Input.data('amui.areaselect');
        $(document).on("keyup", function (e) {
            if (e.key == '`') {
                area1SelectInstance.open();
            }
            if (e.key == 'Escape') {
                area1SelectInstance.close();
            }
            if (e.key == 'Backspace') {
                area1SelectInstance.back();
            }
            if (e.key == 'Delete') {
                area1SelectInstance.destory();
            }
            if (e.key == 's') {
                console.info("demo1 selectedArea:")
                console.log(area1SelectInstance.selectedArea);
            }
        })
    })();

    //事件监听
    (function demo2() {
        var $area2Input = $("input[name=area2]").areaselect({
            allSelectedCallback: function (selectedAreaObjArr) {
                console.info("demo2 options allSelectedCallback fired");
                console.log(arguments)
            },
            selectedCallback: function (selectedAreaObj) {
                console.info("demo2 options selectedCallback fired");
                console.log(arguments)
            }
        });

        $area2Input.on("open.areaselect.amui", function (e) {
            console.info("demo2 open.areaselect.amui fired");
            console.log(arguments)
        })
        $area2Input.on("close.areaselect.amui", function (e) {
            console.info("demo2 close.areaselect.amui fired");
            console.log(arguments)
        })
        $area2Input.on("back.areaselect.amui", function (e) {
            console.info("demo2 back.areaselect.amui fired");
            console.log(arguments)
        })
        $area2Input.on("selected.areaselect.amui", function (e, selectedAreaObj) {
            console.info("demo2 selected.areaselect.amui fired");
            console.log(arguments)
        })
        $area2Input.on("allselected.areaselect.amui", function (e, selectedAreaObjArr) {
            console.info("demo2 allselected.areaselect.amui fired");
            console.log(arguments)
        })
    })();


    //自定义数据源
    (function demo3() {
        var $area3Input = $("input[name=area3]").areaselect({
            data: [
                { careaName: '教育学习', careaValue: '10000' , 
		                					  csub: [
			                                             { careaName: '口语练习', careaValue: '10100' , csub: [{ careaName: '俄语辅导',  careaValue: '10101' },{ careaName: '粤语', careaValue: '10102' },{ careaName: '西班牙', careaValue: '10103' },{ careaName: '英语口语', careaValue: '10104' },{ careaName: '法语口语', careaValue: '10105' },{ careaName: '日语', careaValue: '10106' },{ careaName: '韩语', careaValue: '10107' },{ careaName: '德语', careaValue: '10108' },{ careaName: '普通话', careaValue: '10109' }] }, 
			                                             { careaName: '舞蹈练习', careaValue: '10200',  csub: [{ careaName: '街舞', careaValue: '10201' },{ careaName: '瑜伽教学', careaValue: '10202' },{ careaName: '民族舞', careaValue: '10203' },{ careaName: '拉丁舞', careaValue: '10204' },{ careaName: '儿童舞蹈', careaValue: '10205' } ] },
			                                             { careaName: '学生辅导', careaValue: '10300',  csub: [{ careaName: '艺考辅导', careaValue: '10301'},{ careaName: '幼儿教育', careaValue: '10302'},{ careaName: '代写作业', careaValue: '10303'},{ careaName: '家教', careaValue: '10304'},{ careaName: '语文教学', careaValue: '10305'},{ careaName: '数学教学', careaValue: '10306'},{ careaName: '综合辅导', careaValue: '10307'},{ careaName: '记忆力训练', careaValue: '10308'}] },
			                                             { careaName: '股票指导', careaValue: '10400',  csub: [{ careaName: '投资辅导',  careaValue: '10401'},{ careaName: '期货投资',  careaValue: '10402'},{ careaName: '股票分析',  careaValue: '10403'},{ careaName: '入市指导',  careaValue: '10404'}] },
			                                             { careaName: '琴棋书画', careaValue: '10500',  csub: [{ careaName: '绘画', careaValue: '10501' },{ careaName: '毛笔字教学', careaValue: '10502' },{ careaName: '书法', careaValue: '10503' },{ careaName: '吉他', careaValue: '10504' },{ careaName: '古琴', careaValue: '10505' },{ careaName: '琵琶', careaValue: '10506' },{ careaName: '萨克斯', careaValue: '10507' },{ careaName: '小提琴', careaValue: '10508' },{ careaName: '茶道', careaValue: '10509' },{ careaName: '架子鼓', careaValue: '10510' },{ careaName: '钢琴演奏', careaValue: '10511' }] },
		                                             ]},
                                             
              { careaName: '专业技能', careaValue: '20000' , 
                           					  csub: [
                                                          { careaName: '模特', 	careaValue: '20100' , csub: [{ careaName: '礼仪模特',  careaValue: '20101' },{ careaName: '淘宝模特', careaValue: '20102' },{ careaName: '展会模特', careaValue: '20103' },{ careaName: '走秀模特', careaValue: '20104' },{ careaName: 'T台模特', careaValue: '20105' },{ careaName: '其他', careaValue: '20106' },{ careaName: '平台模特', careaValue: '20107' },{ careaName: '摄影模特', careaValue: '20108' }] }, 
                                                          { careaName: '乐器初教', careaValue: '20200',  csub: [{ careaName: '吉它初教', careaValue: '20201' },{ careaName: '小提琴初教', careaValue: '20202' },{ careaName: 'BBOX', careaValue: '20203' } ] },
                                                          { careaName: '摄影师', careaValue: '20300',  csub: [{ careaName: '个人写真', careaValue: '20301'},{ careaName: '婚纱摄影', careaValue: '20302'},{ careaName: '儿童摄影', careaValue: '20303'},{ careaName: '风景摄影', careaValue: '20304'},{ careaName: '摄影爱好者', careaValue: '20305'},{ careaName: '其他', careaValue: '20306'}] },
                                                          { careaName: 'IT技术', careaValue: '20400',  csub: [{ careaName: '网络推广',  careaValue: '20401'},{ careaName: '网络集成',  careaValue: '20402'},{ careaName: 'IDC数据中心',  careaValue: '20403'},{ careaName: 'ORACLE实施',  careaValue: '20404'},{ careaName: 'IOS技术开发',  careaValue: '20405'},{ careaName: 'JAVA技术开发',  careaValue: '20405'},{ careaName: 'WEB技术开发',  careaValue: '20406'},{ careaName: '.NET技术开发',  careaValue: '20407'} ,{ careaName: 'python技术开发',  careaValue: '20408'},{ careaName: 'PS技术',  careaValue: '20409'},{ careaName: '前端开发',  careaValue: '20410'}  ] },
                                                      ]},   
                                                      
             { careaName: '情感娱乐', careaValue: '30000' , 
                                       		  csub: [
                                                          { careaName: '聊天', 	careaValue: '30100' , csub: [{ careaName: '文字聊天',  careaValue: '30101' },{ careaName: '视频聊天', careaValue: '30102' },{ careaName: '语音聊天', careaValue: '30103' },{ careaName: '真心话大冒险', careaValue: '30104' },{ careaName: '一条语音', careaValue: '30105' },{ careaName: '图文聊天', careaValue: '20106' }] }, 
                                                          { careaName: '占星占卜', careaValue: '30200',  csub: [{ careaName: '生命密码占卜', careaValue: '30201' },{ careaName: '塔罗占卜', careaValue: '30202' },{ careaName: '通灵占卜', careaValue: '30203' },{ careaName: '灵摆塔罗占卜', careaValue: '30204'},{ careaName: '爱情塔罗占卜', careaValue: '30205'},{ careaName: '八字命理占卜', careaValue: '30206'},{ careaName: '星座占卜', careaValue: '30207'},{ careaName: '周易预测', careaValue: '30208'}] },
                                                          { careaName: '游戏组队', careaValue: '30300',  csub: [{ careaName: '炉石传说', careaValue: '30301'},{ careaName: '坦克世界', careaValue: '30302'},{ careaName: '英雄联盟', careaValue: '30303'},{ careaName: '穿越火线', careaValue: '30304'},{ careaName: '三国杀', careaValue: '30305'},{ careaName: '星际争霸', careaValue: '30306'},{ careaName: '魔兽', careaValue: '30307'},{ careaName: '劲舞团', careaValue: '30308'},{ careaName: '剑灵', careaValue: '30309'},{ careaName: 'dota探讨', careaValue: '30310'},{ careaName: '玩游戏', careaValue: '30311'}] },
                                                       ]},                                          
                                             
            ],
            areaNameKey: 'careaName',
            areaValueKey: 'careaValue',
            subAreaKey: 'csub'
        });
    })();


    //自定义异步数据源
    (function demo4() {
        var $area4Input = $("input[name=area4]").areaselect({
            dataUrl: function (selectedAreaObj) {
                //data from mock.js , please "npm install && npm run dev"
                if (selectedAreaObj) {
                    return "/mock/area?areaId=" + selectedAreaObj.areaValue;
                }
                else {
                    return "/mock/area";
                }

            }

        });
    })();


    //自定义异步数据源Promise
    (function demo5() {
        var $area5Input = $("input[name=area5]").areaselect({
            dataUrl: function (selectedAreaObj) {
                //data from mock.js , please "npm install && npm run dev"
                var url = "/mock/area";
                return $.ajax(url, {
                    data: selectedAreaObj ? { areaId: selectedAreaObj.areaValue } : ""
                }).then(function (resData) {
                    //handle resData
                    console.info(resData)
                    return resData;
                })
            }
        });
    })();



    //自定义input[type=hidden][name]
    (function demo6() {
        //hidden会根据name来查找,如果出现多个则会在对应input的同级元素查找
        var $area6Input = $("input[name=area6]").areaselect({
            inputValueName: function (inputName) {
                console.log(inputName);
                return "customValue";
            },
            //inputValueName:"customValue",//也可以是String
        });
    })();







});
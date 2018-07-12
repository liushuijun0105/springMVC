$(function() {
    var INDEXPAGE = '/app/login';

//    if(window.parent.$("iframe").length>0){
//        parent.top.location= ctxPath+'/login';
//        return 
//    }

    // 取得cookie的内容，放入用户名和密码框中
    //readUserAndPass();


    /**
     * 登录
     */
    $("#pwdBtn").on("click", function() {
    	$(".input-top").removeClass("error");
        $(".input-bottom").removeClass("error");
        $('#msg').html("");
        $('#msgPwd').html("");
        if (!doCheck()) { 
            return;
        }
        // 是否选择记住密码?
        //var rememberMe = $("#rememberMe").prop('checked');
        var rememberMe = false;
        //if (rememberMe) {
           // rememberMe = "on";
        //}
       // var pass = $.cookie('password');
       // if(pass != $("#passwd").val()){
          //  pass = md5($("#passwd").val());
        //}
        var pass = $("#passwd").val();
        console.log(pass);
        var formData = {
            username : $("#account").val(),
            password : pass,
            captcha : rememberMe
        };
        var data = common_ajax({
            url:'app/login',
            data:formData
        });
        
        // 数据异常
        if(!callbackValidator(data)){ 
            return false;
        }

        if(data.successful === true){
           //nevigate(INDEXPAGE);
            window.location.href=INDEXPAGE;
        }else if(data.code === 500){
            $('#msg').html(data.msg).fadeIn(); 
        	$(".input-top").addClass("error")
        }else{
          alert(data.msg);
          return;
        }
    });

    // 回车提交
    $('body').on('keypress', function(event){
        var e = window.event||event;
        console.log(e);
        if (e.keyCode == 13) {
            $("#pwdBtn").trigger('click');
        }
    });

    // 证书登录
//    $("#cetBtn").on("click", function() {
//        // $.messager.alert('信息', '// TODO 证书登录 后续完成', 'info');
//        $("#account").val('');
//        $("#passwd").val('');
//        $("#msg").html('');
//        $('#rememberMe').prop('checked', false);
//    });

    // 默认编辑用户名
    //$("#account").focus();

    //=============================================//
    //=========== 下面的是函数声明==================//
    //=============================================//

    /**
     * 验证登录输入框
     * @returns {Boolean}
     */
    function doCheck() {
        var rlt = true;
        var account = $("#account").val().trim();
        $("#account").val(account);

        if (hb.StrUtil.isBlank(account)) {
            $('#msg').html('用户帐号必须输入！').fadeIn();
            $(".input-top").addClass("error")
            $("#account").focus();
            rlt = false;
        } else if (hb.StrUtil.isBlank($("#passwd").val())) {
            $('#msgPwd').html('登录密码必须输入！').fadeIn();
            $(".input-bottom").addClass("error")
            $("#passwd").focus();
            rlt = false;
        }
        return rlt;
    }

    /**
     * 验证回掉函数
     * @param data Object
     * @returns Boolean;
     */
    function callbackValidator(data){
        var res = true;
        if(data === null){
            res = false;
        }
        if($.type(data) != 'object'){
            res = false;
        }
        return res;
    }

    /**
     * 公用ajax方法
     * @param url必填
     */
    function common_ajax(params) {
        var defaultOpt = {
            type:'post',
            data:{},
            dataType:'json'
        };
        $.extend(defaultOpt, params);
        if(!defaultOpt.url){
            alert('请输入url参数！');
        }
        var result = null;
        $.ajax({
            type : defaultOpt.type,
            url : defaultOpt.url,
            async : false,
            data : defaultOpt.data,
            dataType : defaultOpt.dataType,
            success : function(r) {
                result = r;
            },
            error : function(XMLHttpRequest, textStatus, errorThrown) {
                return {
                    code:999,
                    msg:'获取数据失败'
                };
            }
        });
        return result;
    }

    /** 打开新页面，且页面最大化 */
    function nevigate(str) {
        var Sys = {};
        var ua = navigator.userAgent.toLowerCase();
        var s;
        (s = ua.match(/msie ([\d.]+)/)) ? Sys.ie = s[1] : (s = ua
                .match(/firefox\/([\d.]+)/)) ? Sys.firefox = s[1] : (s = ua
                .match(/chrome\/([\d.]+)/)) ? Sys.chrome = s[1] : (s = ua
                .match(/opera.([\d.]+)/)) ? Sys.opera = s[1] : (s = ua
                .match(/version\/([\d.]+).*safari/)) ? Sys.safari = s[1] : 0;
        var ieversion;

        var width = screen.width - 10;
        var height = screen.height - 80;

        var winPara = "top=0,";
        winPara += "left=0,";
        winPara += "width=" + width + ",";
        winPara += "height=" + height + ",";
        winPara += "directories=no,";
        winPara += "status=yes,";
        winPara += "menubar=no";

        window.open(str, "", winPara);
        $('#msg').fadeOut();
        // IE内核
        if (Sys.ie) {
            ieversion = parseInt(Sys.ie);
            if (ieversion < 7) {
                window.opener = null;
            } else {
                window.opener = null;
                window.open("", "_self");
            }
        }

        // webkit内核
        if (Sys.chrome) {
            window.opener = null;
            window.open("", "_self");
        }

        window.close();
    }
    
    /**
     * 读取cookid 是否回填数据
     */
    function readUserAndPass(){
        var user = {
            username: $.cookie('username'),
            password: $.cookie('password'),
            captcha: $.cookie('captcha')
        };
        if(user.captcha == 'on' && user.password && user.username){
            $('#account').val(user.username);
            $('#passwd').val(user.password);
            $('#rememberMe').prop('checked', true);
        }else{
            $.removeCookie('username');
            $.removeCookie('password');
            $.removeCookie('captcha');
        }
    }

});




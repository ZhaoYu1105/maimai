<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="Cache-Control" content="no-cache,must-revalidate"/>
    <title>注册-个人用户</title>
    <link type="text/css" rel="stylesheet" href="/css/regist.personal.css"/>
    <link type="text/css" rel="stylesheet" href="/css/passport.base.css"/>
    <script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
	(function ($) {
	    $.fn.Jdropdown = function (d, e) {
	        if (!this.length) {
	            return
	        }
	        if (typeof d == "function") {
	            e = d;
	            d = {}
	        }
	        var c = a.extend({event: "mouseover", current: "hover", delay: 0}, d || {});
	        var b = (c.event == "mouseover") ? "mouseout" : "mouseleave";
	        a.each(this, function () {
	            var h = null, g = null, f = false;
	            a(this).bind(c.event,
                    function () {
                        if (f) {
                            clearTimeout(g)
                        } else {
                            var j = a(this);
                            h = setTimeout(function () {
                                j.addClass(c.current);
                                f = true;
                                if (e) {
                                    e(j)
                                }
                            }, c.delay)
                        }
                    }).bind(b, function () {
                        if (f) {
                            var j = a(this);
                            g = setTimeout(function () {
                                j.removeClass(c.current);
                                f = false
                            }, c.delay)
                        } else {
                            clearTimeout(h)
                        }
                    })
	        });
	    }
	})(jQuery);
	</script>
</head>
<body>
	<div class="w" id="logo">
	    <div>
	    	<a href="http://www.maimai.com/">
	    		<img src="/images/taotao-logo.gif" alt="买买商城" width="170" height="60"/>
	    	</a> <b></b>
	    </div>
	</div>

<div class="w" id="regist">
    <div class="mt">
        <ul class="tab">
            <li class="curr">个人用户</li>
            <li class="line hide"><a clstag="regist|keycount|personalreg|02" href="../reg/company">企业用户</a></li>
            <li class="fore hide"><a href="http://passport.en.jd.com/user/facade">International Customers</a></li>
        </ul>
        <div class="extra">
        <span style="text-align: right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        		<a class="flk13"
        		   onclick="javascript:location.href='http://en.360buy.com&quot;+location.search;'"
                   href="#">English</a></span> <span>我已经注册，现在就&nbsp;<a
                href="/login"
                class="flk13">登录</a></span>
        </div>
    </div>
    <div class="mc">
        <form id="personRegForm" method="post" onsubmit="return false;">
            <input type="hidden" name="regType" id="regType" value="person"/>
            <input type="hidden" name="uuid" id="uuid" value="${uuid}"/>
            <input type="hidden" name="verifymc" id="verifymc" value=""/>
            <input type="hidden" name="emailMg" id="emailMg"/>
            <input type="hidden" name="authcodeMg" id="authcodeMg"/>
            <input type="hidden" name="state" id="state" value=""/>

            <div class="form" onselectstart="return false;">
                <div class="item" id="select-regName">
                    <span class="label"><b class="ftx04">*</b>用户名：</span>

                    <div class="fl item-ifo">
                        <div class="o-intelligent-regName">
                            <input type="text" id="regName" name="username" class="text" tabindex="1" autoComplete="off"
                                   onpaste="return false;"
                                   value=""
                                   onfocus="if(this.value=='') this.value='';this.style.color='#333'"
                                   onblur="if(this.value=='') {this.value='';this.style.color='#999999'}"/>
                            <i class="i-name"></i>
                            <ul id="intelligent-regName" class="hide"></ul>
                            <label id="regName_succeed" class="blank"></label>
                            <label id="regName_error" class="hide"></label>
                        </div>

                        <div class="intelligent-error hide" id="morePinDiv">
                            <h5>推荐您使用：</h5>

                            <div class="groom" id="morePinGroom"></div>
                        </div>
                         <input type="hidden" value="-1" id="hnschool" class="hide"/>
                         <input type="hidden" id="schoolid" name="schoolid" class="hide"/>
                             <input type="hidden" name="eBHtwyeixI" value="EyEFt"/>
                         <input type="hidden" id="hnseli" class="hide"/>
                    </div>
                </div>

                <div id="capslock"><i></i><s></s>键盘大写锁定已打开，请注意大小写</div>
                <div id="o-password">
                    <div class="item">
                        <span class="label"><b class="ftx04">*</b>请设置密码：</span>

                        <div class="fl item-ifo">
                            <input type="password" id="pwd" name="password" class="text" tabindex="2"
                                   style="ime-mode:disabled;"
                                   onpaste="return  false" autocomplete="off"/>
                            <i class="i-pass"></i>
                            <label id="pwd_succeed" class="blank"></label>
                            <label id="pwd_error"></label>
                            <span class="clr"></span>
                            <label class="hide" id="pwdstrength"><span class="fl">安全程度：</span><b></b></label>

                        </div>
                    </div>

                    <script type="text/javascript">
                        $('#pwd')[0].onkeypress = function (event) {
                            var e = event || window.event,
                                $tip =
                            $('#capslock'),
                                    kc = e.keyCode || e.which, // 按键的keyCode
                                    isShift = e.shiftKey || (kc == 16 ) || false; // shift键是否按住
                            if (((kc >= 65 && kc <= 90) && !isShift) || ((kc >= 97 && kc <= 122) && isShift)) {
                                    $tip.show();
                            }
                            else {
                                    $tip.hide();
                            }
                        };
                    </script>

                    <div class="item">
                        <span class="label"><b class="ftx04">*</b>请确认密码：</span>

                        <div class="fl item-ifo">
                            <input type="password" id="pwdRepeat" name="pwdRepeat" class="text" tabindex="3"
                                   onpaste="return  false" autocomplete="off"/>
                            <i class="i-pass"></i>
                            <label id="pwdRepeat_succeed" class="blank"></label>
                            <label id="pwdRepeat_error"></label>
                        </div>
                    </div>
					<div class="item" id="dphone">
                        <span class="label"><b class="ftx04">*</b>验证手机：</span>

                        <div class="fl item-ifo">
                            <input type="text" id="phone" maxlength="11" name="phone" class="text" tabindex="4" onfocus="phoneFocus();" onKeyup="phoneKeyup();" onblur="phoneBlur();" autocomplete="off"/>
                            <i class="i-phone"></i>
                            <label id="phone_succeed" class="blank"></label>
                            <label id="phone_error"></label>
                        </div>
						<div class="fl">
                            <span class="ftx-03 ml5">或</span><a class="ftx-05 ml5 mail-verify"
                                                                style="text-decoration:underline;" href="javascript:;">验证邮箱</a>
                        </div>
					</div>
					</div>
                   	<div class="item item-new">
                    <span class="label">&nbsp;</span>

                    <div class="fl item-ifo">
                        <input type="checkbox" class="checkbox" checked="checked" id="readme"
                               onclick="agreeonProtocol();"/>
                        <label for="protocol">我已阅读并同意<a href="#" class="blue" id="protocol">《买买用户注册协议》</a></label>
                        <span class="clr"></span>
                        <label id="protocol_error" class="error hide">请接受服务条款</label>
                    </div>
                </div>
                <div class="item">
                    <span class="label">&nbsp;</span>
                    <input type="button" class="btn-img btn-regist" id="registsubmit" value="立即注册" tabindex="8"
                           clstag="regist|keycount|personalreg|07"
                           onclick="reg();"/>
                </div>
            </div>
            <div class="phone">
                <img width="180" height="180" src="/images/phone-bg.jpg"/>
            </div>
            <span class="clr"></span>
        </form>
    </div>
</div>

<script type="text/javascript">
    function hello() {
        var helloUrl = "http://passport.jd.com/call/getHelloJson?m=ls";
        jQuery.ajax({url: helloUrl, dataType: "jsonp", scriptCharset: "gb2312", success: function (a) {
            if (a && a.info) {
                $("#loginbar").html(a.info);
            }
            if (a && a.sso) {
                $.each(a.sso, function () {
                    $.getJSON(this)
                })
            }
        }});
    }
    (function ($) {
        $("#shortcut-2013 .menu").Jdropdown({delay: 50});
    })(jQuery);
</script>

<div class="w">
	<!-- links start -->
    <jsp:include page="../commons/footer-links.jsp"></jsp:include>
    <!-- links end -->
</div>
<script type="text/javascript" src="/js/register/jd.lib.js"></script>
<script type="text/javascript" src="/js/register/jdThickBox.js"></script>
<script type="text/javascript" src="/js/register/jdValidate.js"></script>
<script type="text/javascript" src="/js/register/jdValidate.emReg.js"></script>
<script type="text/javascript" src="/js/register/jdValidate.regSuccess.js"></script>

<script type="text/javascript">
  var closeMobileReg='$closeMobileReg';
    $(function () {
        $('.mail-verify').bind('click', function () {

            if (validateRegName() && validateFunction.regValidate()) {
    			oldEmail="";
    			emailCheckResult="";
    			oldMobile1="";
    			mobileResult1="";
				emailCheckResult="";
                clearTimeout(countDown1.timer);
				delayTime1=120;
				delayFlag1=true;
                jQuery.jdThickBox({
                    type: "text", /*也可以是text,html,image,ajax,json*/
                    width: 500,
                    height: 260,
                    source: $('#box02').html(),
                    title: "验证邮箱",
                    _close_val: "×",
                    _con: "opinioncon",
                    _titleOn: true
                }, function () {
                    $('#mail').bind('blur', function () {
                        var mail = $("#mail").val();
                        if (mail == "") {
                            $('#mail').removeClass().addClass("text");
                            $('#mail_error').removeClass("error");
                            $("#mail_error").hide();
                            $('#mail_succeed').removeClass('error-ico');
                            return;
                        }
                        var email = strTrim(mail);
                        var format = validateRules.isEmail(email);
                        var format2 = validateRules.betweenLength(email, 0, 50);
                        if (!format) {
                            $('#mail_error').removeClass().addClass("error");
                            $("#mail_error").html("邮箱地址不正确，请重新输入");
                            $('#mail_succeed').addClass('error-ico');
                            $('#mail').removeClass("highlight1").addClass('highlight2');
                            return;
                        } else {
                            if (!format2) {
                                $('#mail_error').removeClass().addClass("error");
                                $("#mail_error").html("邮箱地址长度应在4-50个字符之间");
                                $('#mail_succeed').addClass('error-ico');
                                $('#mail').removeClass("highlight1").addClass('highlight2');
                                return;
                            }
                            jQuery.getJSON("../validate/isEmailEngaged?email=" + escape(email) + "&r=" + Math.random(),
                                    function (result) {
                                        emailResult = result.success;
                                        // 邮箱未被验证 可注册
                                        if (emailResult == 0) {
                                            $("#mail_error").removeClass().addClass("success").html("此邮箱可用");
                                            $('#mail_succeed').removeClass().addClass('blank succeed');
                                            $('#mail').removeClass('highlight2');
                                        }
                                        if (emailResult == 1) {
											$('#mail').removeClass().addClass("text highlight2");
                                            $('#mail_error').removeClass().addClass("error");
                                            $("#mail_error").html("该邮箱已被使用，请更换其它邮箱");
											$('#mail_succeed').removeClass().addClass('blank error-ico');
                                            return;
                                        }
                                        if (emailResult == 2) {
											$('#mail').removeClass().addClass("text highlight2");
                                            $('#mail_error').removeClass().addClass("error");
                                            $("#mail_error").html("邮箱地址不正确，请重新输入");
											$('#mail_succeed').removeClass().addClass('blank error-ico');
                                            return;
                                        }
                                    });

                        }
                    });
                    $('#mail').bind('focus', function () {
                        $('#mail').removeClass().addClass('text highlight1');
                        $("#mail_error").removeClass().addClass("focus").html("完成验证后，您可以用该邮箱登录和找回密码");
                        $("#mail_error").show();
                        $('#mail_succeed').removeClass('error-ico');
                    });
                    $('#JD_Verification2').click();
                });
            }
        });
    });
</script>
</body>
</html>
<script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/js/jquery.cookie.js"></script>
<script type="text/javascript">
$(function(){
    //获取当前的页面路径
    var redirectURL = window.encodeURIComponent(location.href);

	// 查看是否已经登录，如果已经登录查询登录信息
	var ticket = $.cookie("maimai_ticket");
	if (ticket){
		$.ajax({
			url : "http://sso.maimai.com/user/" + ticket,
			dataType : "jsonp",
			type : "get",
			success : function(data){
				if(data){
					var html = data.username + "，欢迎来到买买！" +
						"<a href=\"http://sso.maimai.com/user/logout?redirectURL="+redirectURL+"\" class=\"link-logout\">[退出]</a>";
					//替换登陆和注册行
					$("#loginbar").html(html);
				}
			}
		});
	}
	$("#login_btn").click(function () {
        location.href = "http://sso.maimai.com/login?redirectURL="+redirectURL;
    });
});
</script>
<div id="shortcut-2013">
	<div class="w">
		<ul class="fl lh">
			<li class="fore1 ld" clstag="homepage|keycount|home2013|01a"><b></b><a href="javascript:addToFavorite()" rel="nofollow">收藏买买</a></li>
		</ul>
		<ul class="fr lh">
			<li class="fore1" id="loginbar" clstag="homepage|keycount|home2013|01b">您好！欢迎来到买买商城！<a href="javascript:;" id="login_btn">[登录]</a>&nbsp;<a href="http://sso.maimai.com/register">[免费注册]</a></li>
			<li class="fore2 ld" clstag="homepage|keycount|home2013|01c">
				<a href="http://jd2008.jd.com/JdHome/OrderList.aspx" rel="nofollow">我的订单</a>
			</li>
			<li class="fore2-1 ld" id="jd-vip">
				<a target="_blank" rel="nofollow" href="http://vip.jd.com">会员俱乐部</a>
			</li>
			<li class="fore3 ld menu" id="app-jd" data-widget="dropdown" clstag="homepage|keycount|home2013|01d">
				<i></i><span class="outline"></span><span class="blank"></span>
				<a href="http://app.jd.com/" target="_blank">手机买买</a><b></b>
			</li>
			<li class="fore4 ld menu" id="biz-service" data-widget="dropdown" clstag="homepage|keycount|home2013|01e">
				<span class="outline"></span>
				<span class="blank"></span>
				客户服务
				<b></b>
				<div class="dd">
					<div><a href="http://help.jd.com/index.html" target="_blank">帮助中心</a></div>
					<div><a href="http://myjd.jd.com/repair/orderlist.action" target="_blank" rel="nofollow">售后服务</a></div>
					<div><a href="http://chat.jd.com/jdchat/custom.action" target="_blank" rel="nofollow">在线客服</a></div>
					<div><a href="http://myjd.jd.com/opinion/list.action" target="_blank" rel="nofollow">投诉中心</a></div>
					<div><a href="http://www.jd.com/contact/service.html" target="_blank">客服邮箱</a></div>
				</div>
			</li>
			<li class="fore5 ld menu" id="site-nav" data-widget="dropdown" clstag="homepage|keycount|home2013|01f">
				<span class="outline"></span>
				<span class="blank"></span>
				网站导航
				<b></b>
				<div class="dd lh">
					<dl class="item fore1">
						<dt>特色栏目</dt>
						<dd>
							<div><a target="_blank" href="http://mobile.jd.com/index.do">买买通信</a></div>
							<div><a target="_blank" href="http://jdstar.jd.com/">校园之星</a></div>
							<div><a target="_blank" href="http://my.jd.com/personal/guess.html">为我推荐</a></div>
							<div><a target="_blank" href="http://shipingou.jd.com/">视频购物</a></div>
							<div><a target="_blank" href="http://club.jd.com/">买买社区</a></div>
							<div><a target="_blank" href="http://read.jd.com/">在线读书</a></div>
							<div><a target="_blank" href="http://diy.jd.com/">装机大师</a></div>
							<div><a target="_blank" href="http://giftcard.jd.com/market/index.action">买买E卡</a></div>
							<div><a target="_blank" href="http://channel.jd.com/jiazhuang.html">家装城</a></div>
							<div><a target="_blank" href="http://dapeigou.jd.com/">搭配购</a></div>
							<div><a target="_blank" href="http://xihuan.jd.com/">我喜欢</a></div>
						</dd>
					</dl>
					<dl class="item fore2">
						<dt>企业服务</dt>
						<dd>
							<div><a target="_blank" href="http://giftcard.jd.com/company/index">企业客户</a></div>
							<div><a target="_blank" href="http://sale.jd.com/p10997.html">办公直通车</a></div>
						</dd>
					</dl>
					<dl class="item fore3">
						<dt>旗下网站</dt>
						<dd>
							<div><a target="_blank" href="http://en.jd.com/">English Site</a></div>
						</dd>
					</dl>
				</div>
			</li>
		</ul>
		<span class="clr"></span>
	</div>
</div>
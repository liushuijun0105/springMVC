<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<jsp:include page="common/common.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>小鱼儿管理平台</title>
<script type="text/javascript">
var treeData = <%=request.getAttribute("treeJson") %>;

$(function(){
	$('#help_tree').tree({
		checkbox: false,
		animate:true,
		lines:true,
		data: treeData,
		onClick:function(node) {
			if (node.attributes && node.attributes.menuUrl) {
				$('#show_win').panel('refresh','<%=request.getContextPath() %>' + node.attributes.menuUrl);
				$('body').layout('panel', 'center').panel('setTitle', node.text);
			} 
		},
		formatter: function(node) {
			return node.text + "-";
		}
	});
	$('#show_win').panel({
				fit:true,
				border:false,
				noheader:false
	});
});
</script>
</head>
<body class="easyui-layout">

<div data-options="region:'north'" style="height:50px;overflow:hidden;">
  <h1 style="font-size:19px;">&nbsp;&nbsp;小鱼儿管理平台</h1>
  <div id="login_user_info">欢迎你：${currentUser.name}. <a href="<%=request.getContextPath() %>/app/logout">退出</a></div>
</div>


<div data-options="region:'west',split:true,title:'导航窗口',iconCls:'icon-help'" style="width:248px;padding:5px; text-align:left;">
	<ul id="help_tree" class="easyui-tree"></ul>
</div>
<div data-options="region:'center'" title="主窗口" style=" padding:10px; text-align:left;">
  <div id="show_win">
      <%--<jsp:include page="report/echart.jsp"/>--%>
  </div>
</div>

<script>
setInterval(function() {
	var url = '<%=request.getContextPath() %>/app/checkSession';
	$.get(url, function(result) {
		if (! result.successful) {
			window.location.href="<%=request.getContextPath() %>";
		}
	}, 'json');
}, 60000);
</script>
</body>
</html>

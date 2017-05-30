<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 引入jQuery -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<!-- EasyUI核心 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/easyui/jquery.easyui.min.js"></script>
<!-- EasyUI国际化 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/easyui/locale/easyui-lang-zh_CN.js"></script>
<!-- EasyUI主题样式CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/js/easyui/themes/default/easyui.css" />
<!-- EasyUI图标 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/js/easyui/themes/icon.css" />
<!-- zTree的js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ztree/jquery.ztree.all-3.5.js"></script>
<!-- zTree样式 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/ztree/zTreeStyle.css"/>
<script type="text/javascript">
  $(function(){
	  //2.进行ztree设置 
	  var setting = {};
	  //3.初始化数据 
	  var zNodes=[
	             {name:"搜索引擎",children:[
              	        {name:"百度"},
            	        {name:"谷歌"},                
	                        ]},
	              {name:"搜狐"},
	              {name:"新浪"}
	     ];
	  //4.初始化并生成ztree
	  $.fn.zTree.init($("#standardZtree"), setting, zNodes);
  });
</script>
</head>
<body class="easyui-layout">
	<div style="height:100px" region="north" title="XXX管理系统">北部</div>
	<div style="width:200px" data-options="region:'west',title:'系统菜单'"  class="easyui-accordion">
      <div title="菜单1">
       <ul id="standardZtree" class="ztree"></ul>
      </div>	  
      <div title="菜单2">菜单2内容</div>	  
      <div title="菜单3">菜单3内容</div>	  
	</div>
	<div class="easyui-tabs" data-options="region:'center'">
	  <div title="选项卡1">内容1</div>
	  <div data-options="title:'选项卡2',selected:true">内容2</div>
	  <div title="选项卡3" data-options="closable:true,href:'www.baidu.com'">内容3</div>
	</div>
	<div style="width:80px" data-options="region:'east'">东部</div>
	<div style="height:60px" data-options="region:'south'">南部</div>
</body>
</html>
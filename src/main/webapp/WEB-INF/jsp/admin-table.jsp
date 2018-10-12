<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Amaze后台管理系统模板HTML 表格页面 - cssmoban</title>
  <meta name="description" content="这是一个 table 页面">
  <meta name="keywords" content="table">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/i/favicon.png">
  <link href="${pageContext.request.contextPath}/js/bootstrap.min.css" rel="stylesheet">
<!-- 引入bootstrap-table样式 -->
<link href="http://cdn.bootcss.com/bootstrap-table/1.11.1/bootstrap-table.min.css" rel="stylesheet">


  <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin.css">
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="${pageContext.request.contextPath}/http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong>Amaze</strong> <small>后台管理模板</small>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
          <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
          <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      <li><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main">
  <!-- sidebar start -->
  <div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">
      <li><a href="admin-index.html"><span class="am-icon-home"></span> 首页</a></li>
      <li class="admin-parent">
        <a class="am-cf" data-am-collapse="{target: '#collapse-nav'}"><span class="am-icon-file"></span> 页面模块 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
          <li><a href="admin-user.html" class="am-cf"><span class="am-icon-check"></span> 个人资料<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
          <li><a href="admin-help.html"><span class="am-icon-puzzle-piece"></span> 帮助页</a></li>
          <li><a href="admin-gallery.html"><span class="am-icon-th"></span> 相册页面<span class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
          <li><a href="admin-log.html"><span class="am-icon-calendar"></span> 系统日志</a></li>
          <li><a href="admin-404.html"><span class="am-icon-bug"></span> 404</a></li>
        </ul>
      </li>
      <li><a href="admin-table.html"><span class="am-icon-table"></span> 表格</a></li>
      <li><a href="admin-form.html"><span class="am-icon-pencil-square-o"></span> 表单</a></li>
      <li><a href="#"><span class="am-icon-sign-out"></span> 注销</a></li>
    </ul>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-bookmark"></span> 公告</p>
        <p>时光静好，与君语；细水流年，与君同。—— Amaze</p>
      </div>
    </div>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-tag"></span> wiki</p>
        <p>Welcome to the Amaze</p>
      </div>
    </div>
  </div>
  <!-- sidebar end -->

  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">表格</strong> / <small>Table</small></div>
    </div>

    <div class="am-g">
      <div class="am-u-md-6 am-cf">
        <div class="am-fl am-cf">
          <div class="am-btn-toolbar am-fl">
            <div class="am-btn-group am-btn-group-xs">
              <button type="button" class="am-btn am-btn-default"  role="button" data-toggle="modal" data-target="#myModal"><span class="am-icon-plus"></span> 新增</button>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 保存</button>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-archive"></span> 审核</button>
              <button type="button" class="am-btn am-btn-default" onclick="deleteUserList1()" ><span class="am-icon-trash-o" ></span> 删除</button>
            </div>

           
          </div>
        </div>
      </div>
      <div class="am-u-md-3 am-cf">
        <div class="am-fr">
          <div class="am-input-group am-input-group-sm">
          
                <span class="am-input-group-btn">

                </span>
          </div>
        </div>
      </div>
    </div>

    <div class="am-g">
      <div class="am-u-sm-12" id="reportTableDiv">
       
      	 <table id="reportTable"></table>
      </div>

    </div>
  </div>
  <!-- content end -->
</div>

 <!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document">
	        <div class="modal-content">
	            <div class="modal-header" id="div1">
	                <h4 class="modal-title" id="myModalLabel">添加用户</h4>
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	            </div>
	            <div class="modal-body">
	                <form action="#" id="myForm">
	                	 <div class="form-group">
	                        <input type="hidden" id="idname" name="id" class="form-control"  >
	                    </div>
	                
	                    <div class="form-group">
	                        <label for="uname">测试姓名</label>
	                        <input type="text" id="uname" name="uname" class="form-control" placeholder="请输入测试姓名">
	                    </div>
	                    <div class="form-group">
	                        <label for="pwd">测试密码</label>
	                        <input type="password" id="pwd" name="pwd" class="form-control" placeholder="请输入测试密码" >
	                    </div>
	                    <div class="form-group">
	                        <label for="age">年龄</label>
	                        <input type="text" id="age" name="age" class="form-control" placeholder="请输入年龄" >
	                    </div>
	                    <div class="form-group">
	                        <label for="sex">性别</label>
	                        <input type="text" id="sex" name="sex" class="form-control" placeholder="请输入性别" >
	                    </div>
	                    
	                      <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="close1()">关闭</button>
	                <button type="submit" class="btn btn-primary" id="save" >提交</button>
	                <button type="button" class="btn btn-primary" id="update1" style="display: none">修改</button>
	            </div>
	                </form>
	            </div>
	          
	        </div>
	    </div>
	</div>


<footer>
  <hr>
  <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
</footer>



<script src="http://cdn.bootcss.com/jquery/2.2.3/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/app.js"></script>


<script src="http://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- bootstrap-table.min.js -->
<script src="http://cdn.bootcss.com/bootstrap-table/1.11.1/bootstrap-table.min.js"></script>
<!-- 引入中文语言包 -->
<script src="http://cdn.bootcss.com/bootstrap-table/1.11.1/locale/bootstrap-table-zh-CN.min.js"></script>

<script type="text/javascript">
	$(function () {

		$('#reportTable').bootstrapTable({
			url : '${pageContext.request.contextPath}/user/getAllList.do', // 请求后台的URL（*）			

			method : 'post', // 请求方式（*）

			toolbar : '#toolbar', // 工具按钮用哪个容器
			cache: false,

			queryParamsType:'limit',//查询参数组织方式

			

			striped: true,

			pagination: true,
			
			searchOnEnterKey: true,
			
			pageSize: 10,

			pageNumber:1,

			pageList: [5,10,15,20], 
			
			sidePagination:'server',
			 
			
			
			search: true,

			showColumns: true,

			showRefresh: false,

			showExport: false,

		

			search: true,

			clickToSelect: true,

			columns: 

			[

				{field:"checked",checkbox:true},
				{field:"id",title:"测试id",align:"center",valign:"middle",sortable:"true"},
				{field:"uname",title:"测试姓名",align:"center",valign:"middle",sortable:"true"},
				{field:"pwd",title:"测试密码",align:"center",valign:"middle",sortable:"true"},

				{field:"age",title:"年龄",align:"center",valign:"middle",sortable:"true"},

				{field:"sex",title:"性别",align:"center",valign:"middle",sortable:"true"},
				{              title: "操作",  
								align: 'center',       
								valign: 'middle',  
								width: 160, // 定义列的宽度，单位为像素px   
						formatter: function (value, row, index) {   
							var obj = JSON.stringify(row);
					
							//return '<button class="btn btn-info btn-sm"  onclick="update('+obj+')"  data-toggle="modal" data-target="#myModal" >修改  <button class="btn btn-danger btn-sm" onclick="del(\'' + obj+ '\')">删除</button>';        
						return	"<button  class='btn btn-info btn-sm'   data-toggle='modal' data-target='#myModal' onclick='update("+obj+")'>修改</button> <button  class='btn btn-danger btn-sm'    onclick='delete1("+row.id+")'>删除</button>"

						} 
	
	}



			],
			silent : true,
			

		});										

	});	

 $("#myForm").validate({
	 rules:{
		 "uname":{required:true},
		 "pwd":{required:true},
		 "age":{required:true,digits:true}
	 },
	 messages:{
		 "uname":{required:"<font color='red'>测试名不能为空</font>"},
		 "pwd":{required:"<font color='red'>测试密码不能为空</font>"},
		 "age":{required:"<font color='red'>年龄不能为空</font>",digits:"<font color='red'>年龄必须为数字</font>"}
		 
	 },
	 submitHandler:function(){
		 var parm =$("#myForm").serialize();
		
		 $.ajax({
			url:'${pageContext.request.contextPath}/user/insert.do',
			type:'post',
			data:parm,
			dataType:'text',
			success:function(rec){
				if(rec=="success")
					alert("添加成功")
					
			}
		 })
		 
	 }
	 
	 
 })
 
 //关闭
 function close1() {
	 location.href="${pageContext.request.contextPath}/user/tologin.do";
	
}
 
 //修改模态框
 function update(obj){
	
	$("#myModalLabel").html("修改用户");
	$("#idname").val(obj.id)
	$("#uname").val(obj.uname)
	$("#pwd").val(obj.pwd)
	$("#age").val(obj.age)
	$("#sex").val(obj.sex)
	$("#save").hide()
	$("#update1").show();
}
 
 //使用ajax进行跟新
 $("#update1").click(function(){
 /* $("#myForm").validate({
	 rules:{
		 "uname":{required:true},
		 "pwd":{required:true},
		 "age":{required:true,digits:true}
	 },
	 messages:{
		 "uname":{required:"<font color='red'>测试名不能为空</font>"},
		 "pwd":{required:"<font color='red'>测试密码不能为空</font>"},
		 "age":{required:"<font color='red'>年龄不能为空</font>",digits:"<font color='red'>年龄必须为数字</font>"}
		 
	 },
	 submitHandler:function(){ */
		 var parm =$("#myForm").serialize();
	
		 $.ajax({
			url:'${pageContext.request.contextPath}/user/update.do',
			type:'post',
			data:parm,
			dataType:'text',
			success:function(rec){
				if(rec=="success")
					alert("修改成功")
					$("#idname").val("")
					$("#uname").val("")
					$("#pwd").val("")
					$("#age").val("")
					$("#sex").val("")
					
					
			}
		 })
		 
/* 	 }
	 
	 
 }) */
 })
 
//删除单个
 function delete1(id) {
	 var message ="是否确定删除?"
	if(confirm(message)==true){		 
	 $.ajax({
			url:'${pageContext.request.contextPath}/user/delete1.do?id='+id,
			type:'get',
			
			dataType:'text',
			success:function(rec){
				if(rec=="success")
					alert("删除成功")
					top.location.reload();
					
			}
		 })
	} 
}
 
 
 

//批量删除

function deleteUserList1() {

   //获取所有被选中的记录

   var rows = $("#reportTable").bootstrapTable('getSelections');

   if (rows.length== 0) {

       alert("请先选择要删除的记录!");

       return;

   }

   var ids = '';

   for (var i = 0; i < rows.length; i++) {

       ids += rows[i].id + ",";
		
   }

   ids = ids.substring(0, ids.length - 1);
	
   deleteUser(ids);

}



//删除

function deleteUser(ids) {

  var msg = "您真的确定要删除吗？";

  if (confirm(msg) == true) {

      $.ajax({

          url:'${pageContext.request.contextPath}/user/deleteUserList.do',

          type: 'post',

          data: {

              ids: ids

          },

          success: function (data) {
				if(data=="success"){
              alert("删除成功");

              //重新加载记录

              //重新加载数据

              $("#reportTable").bootstrapTable('refresh', {url: '${pageContext.request.contextPath}/user/getAllList.do'});
				}
          }

      });

  }

} 

	</script>

</body>
</html>


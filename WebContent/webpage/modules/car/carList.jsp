<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>车辆信息管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
		});
	</script>
</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content">
	<div class="ibox">
	<div class="ibox-title">
		<h5>车辆信息列表 </h5>
		<div class="ibox-tools">
			<a class="collapse-link">
				<i class="fa fa-chevron-up"></i>
			</a>
			<a class="dropdown-toggle" data-toggle="dropdown" href="#">
				<i class="fa fa-wrench"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#">选项1</a>
				</li>
				<li><a href="#">选项2</a>
				</li>
			</ul>
			<a class="close-link">
				<i class="fa fa-times"></i>
			</a>
		</div>
	</div>
    
    <div class="ibox-content">
	<sys:message content="${message}"/>
	
	<!--查询条件-->
	<div class="row">
	<div class="col-sm-12">
	<form:form id="searchForm" modelAttribute="car" action="${ctx}/car/car/" method="post" class="form-inline">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<table:sortColumn id="orderBy" name="orderBy" value="${page.orderBy}" callback="sortOrRefresh();"/><!-- 支持排序 -->
		<div class="form-group">
			<span>车牌号：</span>
				<form:input path="carNo" htmlEscape="false" maxlength="64"  class=" form-control input-sm"/>
			<span>车辆状态：</span>
				<form:select path="status"  class="form-control m-b">
					<form:option value="" label="请选择车辆状态"/>
					<form:option value="1" label="在途"/>
						<form:option value="0" label="空闲"/>
							<form:option value="2" label="维修"/>
					<%-- <form:options items="${fns:getDictList('')}" itemLabel="label" itemValue="value" htmlEscape="false"/> --%>
				</form:select>
		 </div>	
	</form:form>
	<br/>
	</div>
	</div>
	
	<!-- 工具栏 -->
	<div class="row">
	<div class="col-sm-12">
		<div class="pull-left">
			<shiro:hasPermission name="car:car:add">
				<table:addRow url="${ctx}/car/car/form" title="车辆信息"></table:addRow><!-- 增加按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="car:car:edit">
			    <table:editRow url="${ctx}/car/car/form" title="车辆信息" id="contentTable"></table:editRow><!-- 编辑按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="car:car:del">
				<table:delRow url="${ctx}/car/car/deleteAll" id="contentTable"></table:delRow><!-- 删除按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="car:car:import">
				<table:importExcel url="${ctx}/car/car/import"></table:importExcel><!-- 导入按钮 -->
			</shiro:hasPermission>
			<shiro:hasPermission name="car:car:export">
	       		<table:exportExcel url="${ctx}/car/car/export"></table:exportExcel><!-- 导出按钮 -->
	       	</shiro:hasPermission>
	       <button class="btn btn-white btn-sm " data-toggle="tooltip" data-placement="left" onclick="sortOrRefresh()" title="刷新"><i class="glyphicon glyphicon-repeat"></i> 刷新</button>
		
			</div>
		<div class="pull-right">
			<button  class="btn btn-primary btn-rounded btn-outline btn-sm " onclick="search()" ><i class="fa fa-search"></i> 查询</button>
			<button  class="btn btn-primary btn-rounded btn-outline btn-sm " onclick="reset()" ><i class="fa fa-refresh"></i> 重置</button>
		</div>
	</div>
	</div>
	
	<!-- 表格 -->
	<table id="contentTable" class="table table-striped table-bordered table-hover table-condensed dataTables-example dataTable">
		<thead>
			<tr>
				<th> <input type="checkbox" class="i-checks"></th>
				<th  class="sort-column remarks">备注信息</th>
				<th  class="sort-column carNo">车牌号</th>
				<th  class="sort-column driver">司机</th>
				<th  class="sort-column driverPhone">司机电话</th>
				<th  class="sort-column status">车辆状态</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="car">
			<tr>
				<td> <input type="checkbox" id="${car.id}" class="i-checks"></td>
				<td><a  href="#" onclick="openDialogView('查看车辆信息', '${ctx}/car/car/form?id=${car.id}','800px', '500px')">
					${car.remarks}
				</a></td>
				<td>
					${car.carNo}
				</td>
				<td>
					${car.driver}
				</td>
				<td>
					${car.driverPhone}
				</td>
				<td>
					<c:if test="${car.status==0}">
					空闲
					</c:if>
					<c:if test="${car.status==1}">
					在途
					</c:if>
					<c:if test="${car.status==2}">
					维修
					</c:if>
				</td>
				<td>
					<shiro:hasPermission name="car:car:view">
						<a href="#" onclick="openDialogView('查看车辆信息', '${ctx}/car/car/form?id=${car.id}','800px', '500px')" class="btn btn-info btn-xs" ><i class="fa fa-search-plus"></i> 查看</a>
					</shiro:hasPermission>
					<shiro:hasPermission name="car:car:edit">
    					<a href="#" onclick="openDialog('修改车辆信息', '${ctx}/car/car/form?id=${car.id}','800px', '500px')" class="btn btn-success btn-xs" ><i class="fa fa-edit"></i> 修改</a>
    				</shiro:hasPermission>
    				<shiro:hasPermission name="car:car:del">
						<a href="${ctx}/car/car/delete?id=${car.id}" onclick="return confirmx('确认要删除该车辆信息吗？', this.href)"   class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> 删除</a>
					</shiro:hasPermission>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	
		<!-- 分页代码 -->
	<table:page page="${page}"></table:page>
	<br/>
	<br/>
	</div>
	</div>
</div>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/webpage/include/taglib.jsp"%>
<html>
<head>
	<title>账单管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		var validateForm;
		function doSubmit(){//回调函数，在编辑和保存动作时，供openDialog调用提交表单。
		  if(validateForm.form()){
			  $("#inputForm").submit();
			  return true;
		  }
	
		  return false;
		}
		$(document).ready(function() {
			validateForm = $("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
			
		});
	</script>
</head>
<body>
		<form:form id="inputForm" modelAttribute="bill" action="${ctx}/bill/bill/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>	
		<table class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
		   <tbody>
				<tr>
				
					<td class="width-15 active"><label class="pull-right">支出：</label></td>
					<td class="width-35">
						<form:input path="pay" htmlEscape="false" maxlength="64" class="form-control " value="${pay }"/>
					</td>
					<td class="width-15 active"><label class="pull-right">收入：</label></td>
					<td class="width-35">
						<form:input path="income" htmlEscape="false" maxlength="64" class="form-control " value="${income }"/>
					</td>
				</tr>
				<tr>
					
						<td class="width-15 active"><label class="pull-right">备注信息：</label></td>
					<td class="width-35">
						<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="form-control "/>
					</td>
					<td class="width-15 active"><label class="pull-right">订单编号：</label></td>
					<td class="width-35">
					<!-- 此处不可用disable  disable后台无法获得前台传来的值 -->
						<form:input path="orderId" value="${orderId}" htmlEscape="false" maxlength="64" class="form-control " readonly="readonly"/>
					</td>
				</tr>
		 	</tbody>
		</table>
	</form:form>
</body>
</html>
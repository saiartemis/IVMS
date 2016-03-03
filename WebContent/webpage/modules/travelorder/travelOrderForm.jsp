<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/webpage/include/taglib.jsp"%>

<html>
<head>
<title>旅行单管理</title>
<meta name="decorator" content="default" />
<script type="text/javascript">
	var validateForm;
	function doSubmit() {//回调函数，在编辑和保存动作时，供openDialog调用提交表单。
		if (validateForm.form()) {
			$("#inputForm").submit();
			return true;
		}

		return false;
	}
	$(document).ready(
			function() {
				validateForm = $("#inputForm")
						.validate(
								{
									submitHandler : function(form) {
										loading('正在提交，请稍等...');
										form.submit();
									},
									errorContainer : "#messageBox",
									errorPlacement : function(error, element) {
										$("#messageBox").text("输入有误，请先更正。");
										if (element.is(":checkbox")
												|| element.is(":radio")
												|| element.parent().is(
														".input-append")) {
											error.appendTo(element.parent()
													.parent());
										} else {
											error.insertAfter(element);
										}
									}
								});

				laydate({
					elem : '#startTime', //目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
					event : 'focus' //响应事件。如果没有传入event，则按照默认的click
				});
				laydate({
					elem : '#endTime', //目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
					event : 'focus' //响应事件。如果没有传入event，则按照默认的click
				});
			});
</script>
</head>
<body>
	<form:form id="inputForm" modelAttribute="travelOrder"
		action="${ctx}/travelorder/travelOrder/save" method="post"
		class="form-horizontal">
		<form:hidden path="id" />
		<sys:message content="${message}" />
		<table
			class="table table-bordered  table-condensed dataTables-example dataTable no-footer">
			<tbody>
				<tr>
					<td class="width-15 active"><label class="pull-right">备注信息：</label></td>
					<td class="width-35"><form:textarea path="remarks"
							htmlEscape="false" rows="4" maxlength="255" class="form-control " />
					</td>
					<td class="width-15 active"><label class="pull-right">订单名称：</label></td>
					<td class="width-35"><form:input path="orderName"
							htmlEscape="false" maxlength="64" class="form-control required" /></td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">出发地：</label></td>
					<td class="width-35"><sys:treeselect id="startAddress"
							name="startAddress.id" value="${travelOrder.startAddress.id}"
							labelName="startAddress.name"
							labelValue="${travelOrder.startAddress.name}" title="区域"
							url="/sys/area/treeData" cssClass="form-control "
							allowClear="true" notAllowSelectParent="true" /></td>
					<td class="width-15 active"><label class="pull-right">目的地：</label></td>
					<td class="width-35"><sys:treeselect id="endAddress"
							name="endAddress.id" value="${travelOrder.endAddress.id}"
							labelName="endAddress.name"
							labelValue="${travelOrder.endAddress.name}" title="区域"
							url="/sys/area/treeData" cssClass="form-control "
							allowClear="true" notAllowSelectParent="true" /></td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">人数：</label></td>
					<td class="width-35"><form:input path="peopleNum"
							htmlEscape="false" maxlength="64" class="form-control " /></td>
					<td class="width-15 active"><label class="pull-right">开始时间：</label></td>
					<td class="width-35"><input id="startTime" name="startTime"
						type="text" maxlength="20"
						class="laydate-icon form-control layer-date "
						<fmt:parseDate value="${travelOrder.startTime}" var="date"/>
						value="<fmt:formatDate value="${date}" pattern="yyyy-MM-dd HH:mm:ss"/>"</td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">结束时间：</label></td>
					<td class="width-35"><input id="endTime" name="endTime"
						type="text" maxlength="20"
						class="laydate-icon form-control layer-date "
						<fmt:parseDate value="${travelOrder.endTime}" var="date"/>
						value="<fmt:formatDate value="${date}" pattern="yyyy-MM-dd HH:mm:ss"/>" />
					</td>
					<td class="width-15 active"><label class="pull-right">状态：</label></td>
					<td class="width-35"><form:select path="status" class="form-control ">
					<form:option value="0" label="完成" />
					<form:option value="1" label="在途" />
					</form:select></td>
				</tr>
				<tr>
					<td class="width-15 active"><label class="pull-right">运营车辆：</label></td>
					<td class="width-35"><form:select path="car.id"
							class="form-control m-b">
							<form:option value="${travelOrder.car.id }"
								label="${travelOrder.car.carNo }" />
							<c:forEach items="${carList}" var="car">
							过滤重复代码
								<c:if test="${car.id != travelOrder.car.id}">
									<form:option value="${car.id }" label="${car.carNo }" />
								</c:if>

							</c:forEach>
						</form:select></td>
				</tr>
			</tbody>
		</table>
	</form:form>
</body>
</html>
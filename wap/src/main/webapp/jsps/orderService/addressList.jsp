<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<c:set value="选择服务地址" var="titleName"></c:set>
	<title><c:out value="${titleName}"/></title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/my.css"/>
	<%@include file="../common/common.jsp"%> 
	<script src="${pageContext.request.contextPath}/js/common/base.js"></script>    
	<script src="${pageContext.request.contextPath}/js/hgl/myAddress.js"></script>    
</head>
<body>
<%@include file="../common/header.jsp"%>
<div class="container verify">
	<ul class="address-list"> 
		<c:forEach var="item" items="${addressList}" varStatus="i">
			<li>	
				<div class="address-input" id="checkedDiv">
					<c:if test="${param.addressId != item.id}">
						<input type="radio"  name="defaultAddressChecked" value="${item.id }">
					</c:if>
					<c:if test="${param.addressId == item.id}">
						<input type="radio"  name="defaultAddressChecked" checked="checked" value="${item.id }">
					</c:if>
				</div>
				<div class="address-list-top">
					<span>${item.recipient }</span>
					<span>${item.phone }</span>
				</div>
				<div class="address-list-button">
					<a href="#">
						<c:if test="${item.checkFlag == 0}">
							<em id="defaultEm" style="color:#f2000e;">[默认]</em>
						</c:if>
							${item.extensionField }
					</a>
				</div>
			</li>
		</c:forEach>
	</ul>
</div>
<footer class="reap-site">
	<a href="#" class="add-addr" onclick="$('#addAddressForm').submit()">新增新地址</a>
</footer>  
<c:if test="${param.updateServiceId>0}" var="isupdate">
	<form id="settlementForm" method="post" action="${ctx }/wapOrderService/goUpdateService?id=${param.updateServiceId}">
	<input type="hidden" value="${param.addressId }" id="addressId" name="addressId"/>
	<input type="hidden" value="${param.serviceTypeId }" id="id" name="id"/>
	<input type="hidden" value="${param.messageStr }" id="messageStr" name="messageStr"/>
	<input type="hidden" value="${param.appointmentsStr }" id="appointmentsStr" name="appointmentsStr"/>
	<input type="hidden" value="${param.appointmentsStrId }" id="appointmentsStrId" name="appointmentsStrId"/>
</form>
</c:if>
<c:if test="${!isupdate }">
<form id="settlementForm" method="post" action="${ctx }/wapOrderService/goAppointmentPage">
	<input type="hidden" value="${param.addressId }" id="addressId" name="addressId"/>
	<input type="hidden" value="${param.serviceTypeId }" id="id" name="id"/>
	<input type="hidden" value="${param.messageStr }" id="messageStr" name="messageStr"/>
	<input type="hidden" value="${param.appointmentsStr }" id="appointmentsStr" name="appointmentsStr"/>
	<input type="hidden" value="${param.appointmentsStrId }" id="appointmentsStrId" name="appointmentsStrId"/>
</form>
</c:if>
<form id="addAddressForm" method="post" action="${ctx }/myAddress/addLocationAddressInit">
	<input type="hidden" value="${param.serviceTypeId }" id="serviceTypeId" name="serviceTypeId"/>
	<input type="hidden" value="${param.messageStr }" id="messageStr" name="messageStr"/>
	<input type="hidden" value="${param.updateServiceId }" id="updateServiceId" name="updateServiceId"/>
	<input type="hidden" value="${param.appointmentsStr }" id="appointmentsStr" name="appointmentsStr"/>
	<input type="hidden" value="${param.appointmentsStrId }" id="appointmentsStrId" name="appointmentsStrId"/>
</form>
</body>
</html>
<script type="text/javascript">
$(function(){
	$('.address-list li').click(function(){
		$(this).find('input').prop('checked',true);
		settlementForm($(this).find('input').val());
	});
});

  function settlementForm(id){
	  $("#settlementForm #addressId").val(id);
	  $("#settlementForm").submit();
  }
</script>
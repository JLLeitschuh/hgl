<%@page pageEncoding="UTF-8"%>
<table class="col-10 hover" id="mytable">
	<thead class="bg-gray">
		<tr>
			<th>序号</th>
			<th>货品</th>
			<th>日销售</th>
			<th>剩余量</th>
			<th>预计销售天数</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${fn:length(inventoryWarningList) <= 0}">
			<tr>
				<td colspan="5">没有数据</td>
			</tr>
		</c:if>
		<c:forEach var="item" items="${inventoryWarningList}" varStatus="s">
			<tr>
				<td>${s.index+1 }</td>
				<td>${item.inventoryName }</td>
				<td>${item.saleNumDay }</td>
				<td>${item.saleInventory }</td>
				<td>${item.saleNumDay==0?'-':item.saleDay }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>	
<liguo:pagination pageAction="serachInventory" />
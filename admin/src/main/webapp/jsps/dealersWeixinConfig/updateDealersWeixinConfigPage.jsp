<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tiles:insert beanName="indexPage">
<tiles:put name="title" value="配置修改" />
<tiles:put name="body" type="String">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>经销商微信支付配置修改</title>
	<script src="${ctx}/js/hgl/dealersWeixinConfig.js"></script> 
	<c:set var="ctx" value="${ctx}"/>
</head>
<body class="skin-blue fixed">
<div class="wrapper">
  <div class="content-wrapper">
  	<section class="content-header">
      <h1>我的主页
        <small>经销商微信支付配置修改</small>
      </h1>
    </section>
    <section class="contet">
    	<div class="row no-margin">       
    		<div class="box box-primary">
    			 <div class="box-body">
             <form action="../dealersWeixinConfig/updateDealersWeixinConfig" id="updateDealersWeixinConfigPage" method="post" class="form-horizontal">
             <input name="id" type="hidden" id="id" value="${dealersWeixinConfig.id }">
              <div class="form-group">
                <label  class="col-sm-2 control-label">店铺名称</label>
                <div class="col-sm-8">
	                 <select class="form-control inputNotNull" name="shopId" id="shopId" disabled="disabled"> 
	                    <option value="">请选择</option>
		                <c:forEach var="item" items="${shopInfoList}" varStatus="s">
		                	<c:if test="${item.id == dealersWeixinConfig.shopId}">
		                		<option value="${item.id }" selected="selected">${item.shopName}</option>
		                	</c:if>
		                	<c:if test="${item.id != dealersWeixinConfig.shopId}">
		                		<option value="${item.id }">${item.shopName}</option>
		                	</c:if>
		                    
		                </c:forEach> 
	                 </select>
                 </div>
              </div>  
              <div class="form-group">
                <label  class="col-sm-2 control-label">公众号ID</label>
                <div class="col-sm-8">
                  <input type="text" id="appId" class="form-control inputNotNull" value="${dealersWeixinConfig.appId }" maxlength="100" name="appId" />
                </div>
              </div> 
              <div class="form-group">
                <label  class="col-sm-2 control-label">商户号ID</label>
                <div class="col-sm-8">
                  <input type="text" id="mchId" class="form-control inputNotNull" value="${dealersWeixinConfig.mchId }" maxlength="100" name="mchId" />
                </div>
              </div> 
              <div class="form-group">
                <label  class="col-sm-2 control-label">商户密钥</label>
                <div class="col-sm-8">
                  <input type="text" id="appKey" class="form-control inputNotNull" value="${dealersWeixinConfig.appKey }" maxlength="100" name="appKey" />
                </div>
              </div> 
              <div class="form-group">
                <label  class="col-sm-2 control-label">微信回调URL</label>
                <div class="col-sm-8">
                  <input type="text" id="notifyUrl" class="form-control inputNotNull" value="${dealersWeixinConfig.notifyUrl }" maxlength="100" name="notifyUrl" />
                </div>
              </div> 
              <div class="row">
                <div class="col-sm-6 text-right">
                  <button type="button" onclick="updateSystemConfig();" class="btn btn-primary">确定</button>
                </div>
                <div class="col-sm-6 text-left">
                  <button onclick="goDealersWeixinConfigIndex();" type="button" class="btn btn-default">取消</button>
                </div>
              </div>
             </form>
    			 </div>
    		</div>
    	</div>    
    </section>
  </div>
</div>
</body>
</html>
</tiles:put>
</tiles:insert>
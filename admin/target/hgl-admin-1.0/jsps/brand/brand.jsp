<%@ page language="java" pageEncoding="UTF-8"%>
<tiles:insert beanName="indexPage">
	<tiles:put name="title" value="品牌列表" />
	<tiles:put name="body" type="String">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>品牌管理</title>
	 <script src="${ctx}/js/hgl/brand.js"></script> 
</head>
<body >
<c:set value="brand" var="modalName"></c:set>
<div class="content-wrapper">
  	<section class="content-header">
      <h1>我的主页
		<small>品牌管理</small>
      </h1>
    </section>
    <section class="content">
    	<div class="row no-margin">
    	<input type="hidden" id="brandId">
    		<div class="box box-primary">
    			 <div class="box-body">
             <form id="key_${modalName}_qryFrm" class="form-horizontal">
              <div  class="col-sm-4">
                <div class="form-group">
                  <label class="col-sm-2 control-label">名称</label>
                  <div class="col-sm-8">
                    <input type="text" name="name" id="name" class="form-control" placeholder="请输入查询名称">
                  </div>
                </div>
              </div>
              <div class="col-sm-4 ">
                   <button type="button"  onclick="formsubmit()" class="btn btn-primary">查询</button>
                  <!-- <button onclick="goAddPage();" type="button" class="btn btn-info">添加</button> -->
              </div>
             </form>
              <div class="col-sm-12">
                <div id="key_${modalName}_list">
               		<%@include file="brandList.jsp"%>
               </div>
              </div>
    		</div>
    		</div>
    	</div>
    </section>
  </div>
<!-- 二级类弹出框  deleteSecond-->
<div class="modal fade" id="deleteBrand">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><strong>删除</strong></h4>
      </div>
      <div class="modal-body">
        	你确定要删除该品牌吗？
      </div>
      <div class="modal-footer" style="text-align:center!important;" >
        <button type="button"  class="btn btn-default btn-sm" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary btn-sm" onclick='goDeleteBrand()'>确定</button>
      </div>
    </div>
  </div>
</div>



<!-- 该品牌下有产品 不能删除-->
<div class="modal fade" id="canNotDel">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><strong>提示</strong></h4>
      </div>
      <div class="modal-body">
        	该品牌下有产品不能删除！
      </div>
      <div class="modal-footer" style="text-align:center!important;" >
        <button type="button"  class="btn btn-default btn-sm" data-dismiss="modal">取消</button>
      </div>
    </div>
  </div>
</div>
</body>
	<script type="text/javascript">
		EcWeb.currentModalName = '${modalName}';
		/*************************************************************************************************/
		 function formsubmit(){
			var name = $("#name").val();
			var frmId = "key_" + EcWeb.currentModalName + "_qryFrm";
		    var  dataDomId = "key_" + EcWeb.currentModalName + "_list";
		    var frm = $("#" + frmId);
		   var params=frm.serialize();;
			$.ajax({
		        type : "POST",
		        url : 'serachBrand',
		        data :params,
		        success : function(response) {
		            $("#" + dataDomId).html(response);
		        }
		    });
		} 
	</script>
</html>
</tiles:put>
</tiles:insert>
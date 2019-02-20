<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>



<link href="../res/lecheng/css/admin.css" rel="stylesheet" type="text/css"/>
<link href="../res/common/css/theme.css" rel="stylesheet" type="text/css"/>
<link href="../res/common/css/jquery.validate.css" rel="stylesheet" type="text/css"/>
<link href="../res/common/css/jquery.treeview.css" rel="stylesheet" type="text/css"/>
<link href="../res/common/css/jquery.ui.css" rel="stylesheet" type="text/css"/>

<!-- <script src="/thirdparty/ckeditor/ckeditor.js" type="text/javascript"></script> -->
<!-- <script src="/thirdparty/My97DatePicker/WdatePicker.js" type="text/javascript"></script> -->
<script type="text/javascript" src="../res/fckeditor/fckeditor.js"></script>
<script src="../res/common/js/jquery.js" type="text/javascript"></script>
<script src="../res/common/js/jquery.ext.js" type="text/javascript"></script>
<script src="../res/common/js/jquery.form.js" type="text/javascript"></script>
<script src="../res/common/js/lecheng.js" type="text/javascript"></script>
<script src="../res/lecheng/js/admin.js" type="text/javascript"></script>

<link rel="stylesheet" href="../res/css/style.css" />






<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>库存管理</title>
<script type="text/javascript">
//修改按钮
function updateSku(skuId){
	//让市场价亮起来
	$("#m" + skuId).attr("disabled",false);
	//售价
	$("#p" + skuId).attr("disabled",false);
	//库存
	$("#i" + skuId).attr("disabled",false);
	//限购
	$("#l" + skuId).attr("disabled",false);
	//运费
	$("#f" + skuId).attr("disabled",false);
	
}
//保存按钮
function addSku(skuId){
	
	//让市场价暗
	var m = $("#m" + skuId).attr("disabled",true).val();
	//售价
	var p = $("#p" + skuId).attr("disabled",true).val();
	//库存
	var i = $("#i" + skuId).attr("disabled",true).val();
	//限购
	var l = $("#l" + skuId).attr("disabled",true).val();
	//运费
	var f = $("#f" + skuId).attr("disabled",true).val();
	
	//保存
	var url = "/admin/skuAdd.do";
	var params = {"marketPrice" : m,"skuPrice" : p,"stockInventory" : i,"skuUpperLimit" : l,"deliveFee" : f,"id" : skuId };
	$.post(url,params,function(data){
		alert(data.message);
	},"json");
}
</script>
</head>
<body>
<div class="box-positon">
	<div class="rpos">当前位置: 库存管理 - 列表</div>
	<div class="clear"></div>
</div>
<div class="body-box">
<form method="post" id="tableForm">
<table cellspacing="1" cellpadding="0" border="0" width="100%" class="pn-ltable">
	<thead class="pn-lthead">
		<tr>
			<th width="20"><input type="checkbox" onclick="Pn.checkbox('ids',this.checked)"/></th>
			<th>商品编号</th>
			<th>商品颜色</th>
			<th>商品尺码</th>
			<th>市场价格</th>
			<th>销售价格</th>
			<th>库       存</th>
			<th>购买限制</th>
			<th>运       费</th>
			<th>是否赠品</th>
			<th>操       作</th>
		</tr>
	</thead>
	<tbody class="pn-ltbody">
		
			<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
				<td><input type="checkbox" name="ids" value="73"/></td>
				<td>630--297</td>
				<td align="center">墨绿</td>
				<td align="center">34</td>
				<td align="center"><input type="text" id="m630" value="100.0" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="p630" value="80.0" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="i630" value="100" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="l630" value="5" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="f630" value="5.0" disabled="disabled" size="10"/></td>
				<td align="center">不是</td>
				<td align="center"><a href="javascript:updateSku(630)" class="pn-opt">修改</a> | <a href="javascript:addSku(630)" class="pn-opt">保存</a></td>
			</tr>
		
			<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
				<td><input type="checkbox" name="ids" value="73"/></td>
				<td>631--297</td>
				<td align="center">墨绿</td>
				<td align="center">35</td>
				<td align="center"><input type="text" id="m631" value="100.0" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="p631" value="80.0" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="i631" value="100" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="l631" value="5" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="f631" value="5.0" disabled="disabled" size="10"/></td>
				<td align="center">不是</td>
				<td align="center"><a href="javascript:updateSku(631)" class="pn-opt">修改</a> | <a href="javascript:addSku(631)" class="pn-opt">保存</a></td>
			</tr>
		
			<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
				<td><input type="checkbox" name="ids" value="73"/></td>
				<td>632--297</td>
				<td align="center">草绿</td>
				<td align="center">34</td>
				<td align="center"><input type="text" id="m632" value="100.0" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="p632" value="80.0" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="i632" value="100" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="l632" value="5" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="f632" value="5.0" disabled="disabled" size="10"/></td>
				<td align="center">不是</td>
				<td align="center"><a href="javascript:updateSku(632)" class="pn-opt">修改</a> | <a href="javascript:addSku(632)" class="pn-opt">保存</a></td>
			</tr>
		
			<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
				<td><input type="checkbox" name="ids" value="73"/></td>
				<td>633--297</td>
				<td align="center">草绿</td>
				<td align="center">35</td>
				<td align="center"><input type="text" id="m633" value="100.0" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="p633" value="80.0" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="i633" value="100" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="l633" value="5" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="f633" value="5.0" disabled="disabled" size="10"/></td>
				<td align="center">不是</td>
				<td align="center"><a href="javascript:updateSku(633)" class="pn-opt">修改</a> | <a href="javascript:addSku(633)" class="pn-opt">保存</a></td>
			</tr>
		
			<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
				<td><input type="checkbox" name="ids" value="73"/></td>
				<td>634--297</td>
				<td align="center">青绿</td>
				<td align="center">34</td>
				<td align="center"><input type="text" id="m634" value="100.0" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="p634" value="80.0" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="i634" value="100" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="l634" value="5" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="f634" value="5.0" disabled="disabled" size="10"/></td>
				<td align="center">不是</td>
				<td align="center"><a href="javascript:updateSku(634)" class="pn-opt">修改</a> | <a href="javascript:addSku(634)" class="pn-opt">保存</a></td>
			</tr>
		
			<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
				<td><input type="checkbox" name="ids" value="73"/></td>
				<td>635--297</td>
				<td align="center">青绿</td>
				<td align="center">35</td>
				<td align="center"><input type="text" id="m635" value="100.0" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="p635" value="80.0" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="i635" value="100" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="l635" value="5" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="f635" value="5.0" disabled="disabled" size="10"/></td>
				<td align="center">不是</td>
				<td align="center"><a href="javascript:updateSku(635)" class="pn-opt">修改</a> | <a href="javascript:addSku(635)" class="pn-opt">保存</a></td>
			</tr>
		
			<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
				<td><input type="checkbox" name="ids" value="73"/></td>
				<td>636--297</td>
				<td align="center">海军蓝</td>
				<td align="center">34</td>
				<td align="center"><input type="text" id="m636" value="100.0" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="p636" value="80.0" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="i636" value="100" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="l636" value="5" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="f636" value="5.0" disabled="disabled" size="10"/></td>
				<td align="center">不是</td>
				<td align="center"><a href="javascript:updateSku(636)" class="pn-opt">修改</a> | <a href="javascript:addSku(636)" class="pn-opt">保存</a></td>
			</tr>
		
			<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
				<td><input type="checkbox" name="ids" value="73"/></td>
				<td>637--297</td>
				<td align="center">海军蓝</td>
				<td align="center">35</td>
				<td align="center"><input type="text" id="m637" value="100.0" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="p637" value="80.0" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="i637" value="100" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="l637" value="5" disabled="disabled" size="10"/></td>
				<td align="center"><input type="text" id="f637" value="5.0" disabled="disabled" size="10"/></td>
				<td align="center">不是</td>
				<td align="center"><a href="javascript:updateSku(637)" class="pn-opt">修改</a> | <a href="javascript:addSku(637)" class="pn-opt">保存</a></td>
			</tr>
		
			
		
			
	</tbody>
</table>
</form>
</div>
</body>
</html>
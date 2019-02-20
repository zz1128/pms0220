
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
	<div class="rpos">当前位置: 类别管理 - 列表</div>
	<form class="ropt">
		<input class="add" type="button" value="添加" onclick="javascript:window.location.href='add.html'"/>
	</form>
	<div class="clear"></div>
	
</div>
<div class="body-box">
<form method="post" id="tableForm">
<table cellspacing="1" cellpadding="0" border="0" width="100%" class="pn-ltable">
	<thead class="pn-lthead">
		<tr>
			<th width="20"><input type="checkbox" onclick="Pn.checkbox('ids',this.checked)"/></th>
			<th>类别编号</th>
			<th>类别名称</th>
			<th>上级类别</th>
			<th>是否可用</th>
			<th>类别描述</th>
			<th>操       作</th>
		</tr>
	</thead>
	<tbody class="pn-ltbody">
		
			<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
				<td><input type="checkbox" name="ids" value="73"/></td>
				<td>1</td>
				<td align="center"><input type="text" id="m630" value="鞋" disabled="disabled" size="10"/></td>
				<td align="center"><select><option value="1">无</option><option value="0">鞋</option><option value="0">衣服</option><option value="0">其他</option></select></td>
				<td align="center"><select><option value="1">是</option><option value="0">否</option></select></td>
				<td align="center"><input type="text" id="p630" value="鞋" disabled="disabled" size="10"/></td>

				<td align="center"><a href="javascript:updateSku(630)" class="pn-opt">修改</a> | <a href="javascript:addSku(630)" class="pn-opt">保存</a></td>
			</tr>
			<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
				<td><input type="checkbox" name="ids" value="73"/></td>
				<td>1</td>
				<td align="center"><input type="text" id="m630" value="鞋" disabled="disabled" size="10"/></td>
				<td align="center"><select><option value="1">无</option><option value="0">鞋</option><option value="0">衣服</option><option value="0">其他</option></select></td>
				<td align="center"><select><option value="1">是</option><option value="0">否</option></select></td>
				<td align="center"><input type="text" id="p630" value="鞋" disabled="disabled" size="10"/></td>

				<td align="center"><a href="javascript:updateSku(630)" class="pn-opt">修改</a> | <a href="javascript:addSku(630)" class="pn-opt">保存</a></td>
			</tr>
			<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
				<td><input type="checkbox" name="ids" value="73"/></td>
				<td>1</td>
				<td align="center"><input type="text" id="m630" value="鞋" disabled="disabled" size="10"/></td>
				<td align="center"><select><option value="1">无</option><option value="0">鞋</option><option value="0">衣服</option><option value="0">其他</option></select></td>
				<td align="center"><select><option value="1">是</option><option value="0">否</option></select></td>
				<td align="center"><input type="text" id="p630" value="鞋" disabled="disabled" size="10"/></td>

				<td align="center"><a href="javascript:updateSku(630)" class="pn-opt">修改</a> | <a href="javascript:addSku(630)" class="pn-opt">保存</a></td>
			</tr>
			<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
				<td><input type="checkbox" name="ids" value="73"/></td>
				<td>1</td>
				<td align="center"><input type="text" id="m630" value="鞋" disabled="disabled" size="10"/></td>
				<td align="center"><select><option value="1">无</option><option value="0">鞋</option><option value="0">衣服</option><option value="0">其他</option></select></td>
				<td align="center"><select><option value="1">是</option><option value="0">否</option></select></td>
				<td align="center"><input type="text" id="p630" value="鞋" disabled="disabled" size="10"/></td>

				<td align="center"><a href="javascript:updateSku(630)" class="pn-opt">修改</a> | <a href="javascript:addSku(630)" class="pn-opt">保存</a></td>
			</tr>
			<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
				<td><input type="checkbox" name="ids" value="73"/></td>
				<td>1</td>
				<td align="center"><input type="text" id="m630" value="鞋" disabled="disabled" size="10"/></td>
				<td align="center"><select><option value="1">无</option><option value="0">鞋</option><option value="0">衣服</option><option value="0">其他</option></select></td>
				<td align="center"><select><option value="1">是</option><option value="0">否</option></select></td>
				<td align="center"><input type="text" id="p630" value="鞋" disabled="disabled" size="10"/></td>

				<td align="center"><a href="javascript:updateSku(630)" class="pn-opt">修改</a> | <a href="javascript:addSku(630)" class="pn-opt">保存</a></td>
			</tr>
		
			
		
			
		
			
	</tbody>
</table>
<div style="margin-top:15px;">
<input class="del-button" type="button" value="删除" onclick="optDelete();"/>
</div>
</form>
</div>
</body>
</html>
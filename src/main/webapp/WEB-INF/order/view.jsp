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
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>babasport-list</title>
</head>
<body>
	<div class="box-positon">
		<div class="rpos">当前位置: 订单管理 - 查看</div>
		<div class="clear"></div>
	</div>
	<div class="body-box">
		<form id="jvForm" action="v_list.do" method="post">
			<table cellspacing="1" cellpadding="2" border="0" width="100%" class="pn-ftable">
				<tbody>
					<tr>
						<td width="12%" class="pn-flabel pn-flabel-h">收货人:</td>
						<td width="38%" colspan="1" class="pn-fcontent">李杨</td>
						<td width="12%" class="pn-flabel pn-flabel-h">手机:</td>
						<td width="38%" colspan="1" class="pn-fcontent">13888888888</td>
					</tr>
					<tr>
						<td width="12%" class="pn-flabel pn-flabel-h">所在地区:</td>
						<td width="38%" colspan="1" class="pn-fcontent">北京市东城区</td>
						<td width="12%" class="pn-flabel pn-flabel-h">地址:</td>
						<td width="38%" colspan="1" class="pn-fcontent">雅儿胡同6号</td>
					</tr>
					<tr>
						<td width="12%" class="pn-flabel pn-flabel-h">订单号:</td>
						<td width="38%" colspan="1" class="pn-fcontent">20141212114007973</td>
						<td width="12%" class="pn-flabel pn-flabel-h">运费:</td>
						<td width="38%" colspan="1" class="pn-fcontent">0.0元</td>
					</tr>
					<tr>
						<td width="12%" class="pn-flabel pn-flabel-h">订单金额:</td>
						<td width="38%" colspan="1" class="pn-fcontent">128.0元</td>
						<td width="12%" class="pn-flabel pn-flabel-h">应付金额:</td>
						<td width="38%" colspan="1" class="pn-fcontent">128.11元</td>
					</tr>
					<tr>
						<td width="12%" class="pn-flabel pn-flabel-h">支付方式:</td>
						<td width="38%" colspan="1" class="pn-fcontent">货到到付</td>
						<td width="12%" class="pn-flabel pn-flabel-h">付款要求:</td>
						<td width="38%" colspan="1" class="pn-fcontent">现金</td>
					</tr>
					<tr>
						<td width="12%" class="pn-flabel pn-flabel-h">支付状态:</td>
						<td width="38%" colspan="1" class="pn-fcontent">货到到付</td>
						<td width="12%" class="pn-flabel pn-flabel-h">订单状态:</td>
						<td width="38%" colspan="1" class="pn-fcontent">提交订单</td>
					</tr>
					<tr>
						<td width="12%" class="pn-flabel pn-flabel-h">送货时间:</td>
						<td width="38%" colspan="1" class="pn-fcontent">只工作日送货（双休日，节假日不送）</td>
						<td width="12%" class="pn-flabel pn-flabel-h">电话确认:</td>
						<td width="38%" colspan="1" class="pn-fcontent">否</td>
					</tr>
					<tr>
						<td width="12%" class="pn-flabel pn-flabel-h">创建时间:</td>
						<td width="38%" colspan="1" class="pn-fcontent">2014-12-12 11:40:08.0</td>
						<td width="12%" class="pn-flabel pn-flabel-h">备注:</td>
						<td width="38%" colspan="1" class="pn-fcontent"></td>
					</tr>
				</tbody>
			</table>
			<table cellspacing="1" cellpadding="0" border="0" width="100%" class="pn-ltable">
				<thead class="pn-ltbody">
					<tr>
						<th>商品编号</th>
						<th>商品名称</th>
						<th>商品颜色</th>
						<th>商品尺码</th>
						<th>商品销售价</th>
						<th>购买数量</th>
					</tr>
				</thead>
				<tbody class="pn-ltbody">
					
					<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
						<td align="center">20141028114510055</td>
						<td align="center">耐克2015款男鞋 支持货到付款</td>
						<td align="center">西瓜红</td>
						<td align="center">42</td>
						<td align="center">128.0元</td>
						<td align="center">1件</td>
					</tr>
					<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
						<td align="center">20141028114510055</td>
						<td align="center">耐克2015款男鞋 支持货到付款</td>
						<td align="center">西瓜红</td>
						<td align="center">42</td>
						<td align="center">128.0元</td>
						<td align="center">1件</td>
					</tr>
					<tr bgcolor="#ffffff" onmouseover="this.bgColor='#eeeeee'" onmouseout="this.bgColor='#ffffff'">
						<td align="center">20141028114510055</td>
						<td align="center">耐克2015款男鞋 支持货到付款</td>
						<td align="center">西瓜红</td>
						<td align="center">42</td>
						<td align="center">128.0元</td>
						<td align="center">1件</td>
					</tr>
					
				</tbody>
			</table>
		</form>
	</div>
	<div style="margin-top:15px;">
		<input type="button" onclick="javascript:window.print()" value="打印" class="submit"/>
	</div>
</body>
</html>
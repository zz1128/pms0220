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
<meta http-equiv="Content-Type" content="text/html; charset=gbk"/>
<title>babasport-list</title>
</head>
<body>
<div class="box-positon">
	<div class="rpos">当前位置: 品牌管理 - 列表</div>
	<form class="ropt">
		<input class="add" type="button" value="添加" onclick="javascript:window.location.href='add.html'"/>
	</form>
	<div class="clear"></div>
</div>
<div class="body-box">
<form action="v_list.shtml" method="post" style="padding-top:5px;">
品牌名称: <input type="text" name="name"/>
	<select >
		<option value="1">是</option>
		<option>不是</option>
	</select>
	<input type="submit" class="query" value="查询"/>
</form>
<table cellspacing="1" cellpadding="0" border="0" width="100%" class="pn-ltable">
	<thead class="pn-lthead">
		<tr>
			<th width="20"><input type="checkbox" onclick="checkBox('ids',this.checked)"/></th>
			<th>品牌ID</th>
			<th>品牌名称</th>
			<th>品牌图片</th>
			<th>品牌描述</th>
			<th>排序</th>
			<th>是否可用</th>
			<th>操作选项</th>
		</tr>
	</thead>
	<tbody class="pn-ltbody">
	
		<tr bgcolor="#ffffff" onmouseout="this.bgColor='#ffffff'" onmouseover="this.bgColor='#eeeeee'">
			<td><input type="checkbox" value="8" name="ids"/></td>
			<td align="center">8</td>
			<td align="center">耐克</td>
			<td align="center"><img width="40" height="40" src="http://192.168.1.116:8088/imageserver/upload/01.jpg"/></td>
			<td align="center"></td>
			<td align="center">99</td>
			<td align="center">是</td>
			<td align="center">
			<a class="pn-opt" href="add.html">修改</a> | <a class="pn-opt" onclick="if(!confirm('您确定删除吗？')) {return false;}" href="#">删除</a>
			</td>
		</tr>
		<tr bgcolor="#ffffff" onmouseout="this.bgColor='#ffffff'" onmouseover="this.bgColor='#eeeeee'">
			<td><input type="checkbox" value="8" name="ids"/></td>
			<td align="center">8</td>
			<td align="center">耐克</td>
			<td align="center"><img width="40" height="40" src="http://192.168.1.116:8088/imageserver/upload/01.jpg"/></td>
			<td align="center"></td>
			<td align="center">99</td>
			<td align="center">是</td>
			<td align="center">
			<a class="pn-opt" href="add.html">修改</a> | <a class="pn-opt" onclick="if(!confirm('您确定删除吗？')) {return false;}" href="#">删除</a>
			</td>
		</tr>
		<tr bgcolor="#ffffff" onmouseout="this.bgColor='#ffffff'" onmouseover="this.bgColor='#eeeeee'">
			<td><input type="checkbox" value="8" name="ids"/></td>
			<td align="center">8</td>
			<td align="center">耐克</td>
			<td align="center"><img width="40" height="40" src="http://192.168.1.116:8088/imageserver/upload/01.jpg"/></td>
			<td align="center"></td>
			<td align="center">99</td>
			<td align="center">是</td>
			<td align="center">
			<a class="pn-opt" href="add.html">修改</a> | <a class="pn-opt" onclick="if(!confirm('您确定删除吗？')) {return false;}" href="#">删除</a>
			</td>
		</tr>
		<tr bgcolor="#ffffff" onmouseout="this.bgColor='#ffffff'" onmouseover="this.bgColor='#eeeeee'">
			<td><input type="checkbox" value="8" name="ids"/></td>
			<td align="center">8</td>
			<td align="center">耐克</td>
			<td align="center"><img width="40" height="40" src="http://192.168.1.116:8088/imageserver/upload/01.jpg"/></td>
			<td align="center"></td>
			<td align="center">99</td>
			<td align="center">是</td>
			<td align="center">
			<a class="pn-opt" href="add.html">修改</a> | <a class="pn-opt" onclick="if(!confirm('您确定删除吗？')) {return false;}" href="#">删除</a>
			</td>
		</tr>
		<tr bgcolor="#ffffff" onmouseout="this.bgColor='#ffffff'" onmouseover="this.bgColor='#eeeeee'">
			<td><input type="checkbox" value="8" name="ids"/></td>
			<td align="center">8</td>
			<td align="center">耐克</td>
			<td align="center"><img width="40" height="40" src="http://192.168.1.116:8088/imageserver/upload/01.jpg"/></td>
			<td align="center"></td>
			<td align="center">99</td>
			<td align="center">是</td>
			<td align="center">
			<a class="pn-opt" href="add.html">修改</a> | <a class="pn-opt" onclick="if(!confirm('您确定删除吗？')) {return false;}" href="#">删除</a>
			</td>
		</tr>
	
		
	
	</tbody>
</table>
<div style="margin-top:15px;"><input class="del-button" type="button" value="删除" onclick="optDelete();"/></div>
</div>
</body>
</html>
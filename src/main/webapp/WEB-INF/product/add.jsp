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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>babasport-add</title>
<style type="">
.h2_ch a:hover, .h2_ch a.here {
    color: #FFF;
    font-weight: bold;
    background-position: 0px -32px;
}
.h2_ch a {
    float: left;
    height: 32px;
    margin-right: -1px;
    padding: 0px 16px;
    line-height: 32px;
    font-size: 14px;
    font-weight: normal;
    border: 1px solid #C5C5C5;
    background: url('../res/lecheng/img/admin/bg_ch.gif') repeat-x scroll 0% 0% transparent;
}
a {
    color: #06C;
    text-decoration: none;
}
</style>
<script type="text/javascript">




$(function(){
	var tObj;
	$("#tabs a").each(function(){
		if($(this).attr("class").indexOf("here") == 0){tObj = $(this)}
		$(this).click(function(){
			var c = $(this).attr("class");
			if(c.indexOf("here") == 0){return;}
			var ref = $(this).attr("ref");
			var ref_t = tObj.attr("ref");
			tObj.attr("class","nor");
			$(this).attr("class","here");
			$(ref_t).hide();
			$(ref).show();
			tObj = $(this);
			if(ref == '#tab_2'){
				var fck = new FCKeditor("productdesc");//productdesc是textarea的ID
				fck.BasePath = "../res/fckeditor/";//基本路径webapp../res/fckeditor/.
				fck.Height = 400 ;
				fck.Config["ImageUploadURL"] = "/upload/uploadFck.do";//上传图片
				fck.ReplaceTextarea();//转成Fck
			}
		});
	});
});

function uploadPic(){
	//定义参数
	var options = {
		url : "/upload/uploadPic.do",
		dataType : "json",
		type :  "post",
		success : function(data){
			//回调 二个路径  
			//url
			//path
			$("#allImgUrl").attr("src",data.url);
			$("#path").val(data.path);
		}
	};
	
	
	//jquery.form使用方式
	$("#jvForm").ajaxSubmit(options);
}

</script>
</head>
<body>
<div class="box-positon">
	<div class="rpos">当前位置: 商品管理 - 添加</div>
	<form class="ropt">
		<input type="submit" onclick="this.form.action='/admin/productList.do';" value="返回列表" class="return-button"/>
	</form>
	<div class="clear"></div>
</div>
<h2 class="h2_ch"><span id="tabs">
<a href="javascript:void(0);" ref="#tab_1" title="基本信息" class="here">基本信息</a>
<a href="javascript:void(0);" ref="#tab_2" title="商品描述" class="nor">商品描述</a>
<a href="javascript:void(3);" ref="#tab_3" title="商品参数" class="nor">包装清单</a>
</span></h2>
<div class="body-box" style="float:right">
	<form id="jvForm" action="/admin/productAdd.do" method="post" enctype="multipart/form-data">
		<table cellspacing="1" cellpadding="2" width="100%" border="0" class="pn-ftable">
			<tbody id="tab_1">
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						商品类型:</td><td width="80%" class="pn-fcontent">
								<select name="typeId">
									<option value="">请选择</option>
									
										<option value="2">运动鞋</option>	
									
										<option value="3">魅力女鞋</option>	
									
										<option value="4">时尚男鞋</option>	
									
										<option value="5">户外鞋</option>	
									
										<option value="6">童鞋</option>	
									
										<option value="7">其它</option>	
									
					
								</select>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						商品名称:</td><td width="80%" class="pn-fcontent">
						<input type="text" class="required" name="name" maxlength="100" size="100"/>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						商品品牌:</td><td width="80%" class="pn-fcontent">
						<select name="brandId">
							<option value="">请选择品牌</option>
								
										<option value="1">耐克（Nike）</option>	
								
										<option value="2">阿迪达斯</option>	
								
										<option value="3">李宁</option>	
								
										<option value="4">361度</option>	
								
										<option value="5">沃特（VOIT）</option>	
								
										<option value="6">星期六</option>	
								
										<option value="7">百丽</option>	
								
										<option value="8">鸿星尔克</option>	
								
						</select>
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						商品毛重:</td><td width="80%" class="pn-fcontent">
						<input type="text" value="" class="required" name="weight" maxlength="10"/>KG
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						材质:</td><td width="80%" class="pn-fcontent">
						
							<input type="checkbox" value="1" name="feature"/>PU/人造革	
						
							<input type="checkbox" value="2" name="feature"/>帆布	
						
							<input type="checkbox" value="3" name="feature"/>牛二层皮	
						
							<input type="checkbox" value="4" name="feature"/>人造革	
						
							<input type="checkbox" value="5" name="feature"/>羊皮	
						
							<input type="checkbox" value="6" name="feature"/>太空革	
						
							<input type="checkbox" value="7" name="feature"/>绒面	
						
							<input type="checkbox" value="8" name="feature"/>牛奶丝	
						
							<input type="checkbox" value="9" name="feature"/>牛皮	
						
							<input type="checkbox" value="10" name="feature"/>合成革	
						
							<input type="checkbox" value="11" name="feature"/>超纤皮	
						
							<input type="checkbox" value="12" name="feature"/>其它	
						
							
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						颜色:</td><td width="80%" class="pn-fcontent">
							
								<input type="checkbox" value="9" name="color"/>西瓜红	
							
								<input type="checkbox" value="10" name="color"/>大红	
							
								<input type="checkbox" value="11" name="color"/>墨绿	
							
								<input type="checkbox" value="12" name="color"/>草绿	
							
								<input type="checkbox" value="13" name="color"/>青绿	
							
								<input type="checkbox" value="14" name="color"/>海军蓝	
							
								<input type="checkbox" value="15" name="color"/>海军白蓝条	
							
								<input type="checkbox" value="16" name="color"/>紫黑	
							
								<input type="checkbox" value="17" name="color"/>纯黑	
							
								<input type="checkbox" value="18" name="color"/>浅粉	
							
								<input type="checkbox" value="19" name="color"/>浅紫	
							
								<input type="checkbox" value="20" name="color"/>浅灰	
							
								<input type="checkbox" value="21" name="color"/>均色	
							
								<input type="checkbox" value="22" name="color"/>桃粉	
							
								<input type="checkbox" value="23" name="color"/>深紫	
							
								<input type="checkbox" value="24" name="color"/>浅蓝	
							
								<input type="checkbox" value="25" name="color"/>深蓝	
							
								<input type="checkbox" value="26" name="color"/>夕阳红	
							
								<input type="checkbox" value="27" name="color"/>深灰	
							
								<input type="checkbox" value="28" name="color"/>卡其灰	
							
								<input type="checkbox" value="29" name="color"/>典雅灰	
							
							
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						尺码:</td><td width="80%" class="pn-fcontent">
						
							<input type="checkbox" name="size" value="34"/>34
						
							<input type="checkbox" name="size" value="35"/>35
						
							<input type="checkbox" name="size" value="36"/>36
						
							<input type="checkbox" name="size" value="37"/>37
						
							<input type="checkbox" name="size" value="38"/>38
						
							<input type="checkbox" name="size" value="39"/>39
						
							<input type="checkbox" name="size" value="40"/>40
						
							<input type="checkbox" name="size" value="41"/>41
						
							<input type="checkbox" name="size" value="42"/>42
						
							<input type="checkbox" name="size" value="43"/>43
						
						
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						状态:</td><td width="80%" class="pn-fcontent">
						<input type="checkbox" name="isNew" value="1"/>新品
						<input type="checkbox" name="isCommend" value="1"/>推荐
						<input type="checkbox" name="isHot" value="1"/>热卖
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h">
						<span class="pn-frequired">*</span>
						上传商品图片(90x150尺寸):</td>
						<td width="80%" class="pn-fcontent">
						注:该尺寸图片必须为90x150。
					</td>
				</tr>
				<tr>
					<td width="20%" class="pn-flabel pn-flabel-h"></td>
						<td width="80%" class="pn-fcontent">
						<img width="100" height="100" id="allImgUrl"/>
						<input type="hidden" name="url" id="path"/>
						<input type="file" onchange="uploadPic()" name="pic"/>
					</td>
				</tr>
			</tbody>
			<tbody id="tab_2" style="display: none">
				<tr>
					<td >
						<textarea rows="10" cols="10" id="productdesc" name="description"></textarea>
					</td>
				</tr>
			</tbody>
			<tbody id="tab_3" style="display: none">
				<tr>
					<td >
						<textarea rows="15" cols="136" id="productList" name="packageList"></textarea>
					</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td class="pn-fbutton" colspan="2">
						<input type="submit" class="submit" value="提交"/> &nbsp; <input type="reset" class="reset" value="重置"/>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</div>
</body>
</html>
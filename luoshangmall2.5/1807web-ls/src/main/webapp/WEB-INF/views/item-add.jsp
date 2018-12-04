<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<div style="padding:10px 10px 10px 10px">
	<form id="itemAddForm" class="itemForm" method="post">
	    <table cellpadding="2">
	        <tr>
	            <td>商品类目:</td>
	            <td>
	            	<select name="categoryName" id="categoryNameSelect" onchange="change(this.value)">
	            		<option value="0" selected>请选择</option>
	            		<option value="奢侈女装">奢侈女装</option>
	            		<option value="成熟女装">成熟女装</option>
	            		<option value="轻奢女装">轻奢女装</option>
	            		<option value="少淑女装">少淑女装</option>
	            		<option value="淑女装">淑女装</option>
	            		<option value="日系女装">日系女装</option>
	            		<option value="台湾女装">台湾女装</option>
	            		<option value="时尚女装">时尚女装</option>
	            		<option value="休闲女装">休闲女装</option>
	            		<option value="商务女装">商务女装</option>
	            	</select>
	            </td>
	        </tr>
	        <tr>
	            <td>商品品牌:</td>
	            <td>
	            	<select name="brandName" id="brandName">
	            		<option value="" selected>请选择</option>
					</select>
	            </td>
	        </tr>
	        <tr>
	            <td>商品名称:</td>
	            <td><input class="easyui-textbox" type="text" name="productName" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>商品价格:</td>
	            <td><input class="easyui-numberbox" type="text" name="productPrice" data-options="required:true" style="width: 280px;"></input>
	            </td>
	        </tr>
	        <tr>
	            <td>S码库存:</td>
	            <td><input class="easyui-numberbox" type="text" name="s" data-options="precision:0" /></td>
	        </tr>
	        <tr>
	            <td>L码库存:</td>
	            <td><input class="easyui-numberbox" type="text" name="l" data-options="precision:0" /></td>
	        </tr>
	        <tr>
	            <td>X码库存:</td>
	            <td><input class="easyui-numberbox" type="text" name="x" data-options="precision:0" /></td>
	        </tr>
	        <tr>   
	            <td>XL码库存:</td>
	            <td><input class="easyui-numberbox" type="text" name="xL" data-options="precision:0" /></td>
	        </tr>
	        <tr>    
	            <td>XXL码库存:</td>
	            <td><input class="easyui-numberbox" type="text" name="xXL" data-options="precision:0" /></td>
	        </tr>
	        <tr>
	            <td>商品图片:</td>
	            <td>
	            	 <a href="javascript:void(0)" class="easyui-linkbutton picFileUpload">上传图片</a>
	                 <input type="text" name="productImgurl"/>
	            </td>
	        </tr>
	        <tr>
	            <td>商品描述:</td>
	            <td>
	                <input type="text" style="width:800px;height:300px;" name="productDescription"></input>
	            	
	            </td>
	        </tr>
	        
	    </table>
	   
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>
</div>
<script type="text/javascript">
	var itemAddEditor ;
	$(function(){
		//和form下的desc组件绑定
		itemAddEditor = KindEditorUtil.createEditor("#itemAddForm [name=desc]");
		KindEditorUtil.init({fun:function(node){
			KindEditorUtil.changeItemParam(node, "itemAddForm");
		}});
	});
	
	function submitForm(){
		//表单校验
		if(!$('#itemAddForm').form('validate')){
			$.messager.alert('提示','表单还未填写完成!');
			return ;
		}
		//alert($("#itemAddForm").serialize());
		$.post("/product/save",$("#itemAddForm").serialize(), function(data){
			if(data.status == 200){
				$.messager.alert('提示','新增商品成功!');
			}
		});
	}
	
	function clearForm(){
		$('#itemAddForm').form('reset');
		itemAddEditor.html('');
	}
	
	function change(categoryName){
		$("#brandName option").replaceWith("");
		$.ajax({
			url: "/product/queryBrands?categoryName="+categoryName,
	        type: "GET",     
	        dataType: "json",
	        success: function (data) {
	            for (var i=0;i<6;i++) {
	                $("#brandName").append("<option>" + data[i] + "</option>");
	            }
	        }
	    });
	}
</script>

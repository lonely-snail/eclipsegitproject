<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<script type="text/javascript">
    function   register(){
    	var  mobile = document.getElementById("mobile").value;
    	console.log(mobile);
    	//通过ajax的方式请求服务器
    	xmlHttpRequest = new  XMLHttpRequest();//不加var全局变量
    	//设置XMLHttpRequest的回调函数
    	xmlHttpRequest.onreadystatechange=callBack ;
    	xmlHttpRequest.open("post","MobileServlet",true);
    	//设置post方式头信息
    	xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    	xmlHttpRequest.send("mobile="+mobile);//k=v
    }
    
    //回调函数(接收服务端的返回值)
    function  callBack(){
    	//alert(xmlHttpRequest.status+"222"+xmlHttpRequest.readyState);
    	if(xmlHttpRequest.readyState==4 && xmlHttpRequest.status==200){
    		//接收服务端返回的数据
    		var  data = xmlHttpRequest.responseText;//服务器返回为string格式
    	
    		alert(data=='true');
    		if(data=='true'){
    			alert(data+"此号码已存在");
    		}else{
    			alert(data+"此号码注册成功");
    		}
    	}
    }
    
    
    
    function   registerGet(){
    	var  mobile = document.getElementById("mobile").value;
    	
    	//通过ajax的方式请求服务器
    	
    	
    	xmlHttpRequest = new  XMLHttpRequest();//不加var全局变量
    	
    	//设置XMLHttpRequest的回调函数
    	xmlHttpRequest.onreadystatechange=callBack ;
    	xmlHttpRequest.open("get","MobileServlet?mobile="+mobile,true);
    	//设置post方式头信息
    	//xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    	xmlHttpRequest.send(null);//k=v
    }
</script>
<title>Insert title here</title>
</head>
<body>
form 表单提交是整个页面刷新 不可以  只能使用局部刷新
  手机：  <input    id="mobile"/>
  <br>
  <input   type="button"    value="注册"    onclick="registerGet()"/>  
</body>
</html>
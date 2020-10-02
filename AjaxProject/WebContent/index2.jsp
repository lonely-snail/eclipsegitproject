 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript"  src="js/jquery.js"></script>
<script type="text/javascript">
    function   register(){
    	var    mobile = $("#mobile").val();
    	/* $.ajax({
    		   url: "MobileServlet",
    		        请求方式:"post",
    		   data: "mobile="+mobile,
    		   success:function(result,testStatus)
    		   {
    			   if(result=='true'){
    	    			alert(result+"此号码已存在");
    	    		}else{
    	    			alert(result+"此号码注册成功");
    	    		}
    		   },
    		   error: function(xhr,errormessage,e){
    			   alert(result+"系统异常");
    		   }

    		}); 

    	$.post(
    			"MobileServlet",
    	"mobile="+mobile,
    	function(result){
    				alert(result);
    				if(result=='true'){
    	    			alert(result+"此号码已存在");
    	    		}else{
    	    			alert(result+"此号码注册成功");
    	    		}
    	},
    	"text",
    	);
    	
    	$.get(
    			"MobileServlet",
    	"mobile="+mobile,
    	function(result){
    				alert(result);
    				if(result=='true'){
    	    			alert(result+"此号码已存在");
    	    		}else{
    	    			alert(result+"此号码注册成功");
    	    		}
    	},
    	);
    	
    	
    	$("#tip").load(
    			"MobileServlet",
    	"mobile="+mobile,
    	);*/
    	
    	var   student = {"name":"zs","age":23};
    	alert(student.name+"===="+ student.age);
    	
    	var  students=[
    		
    		 {"name":"zs","age":23},
    		 {"name":"ls","age":23},
    		 {"name":"ww","age":23},
    	];
    	$.getJSON(

    			"MobileServlet",
    	    	{"mobile":mobile},
    	    	
    	    	function(result){
    	    				alert(result);
    	    				if(result.msg=='true'){
    	    	    			alert(result+"此号码已存在");
    	    	    		}else{
    	    	    			alert(result+"此号码注册成功");
    	    	    		}
    	    	}
);
    	//alert(students[1].name+"===="+ students[2].name);
    }
function   testJson(){
	$.getJSON(
			"JsonServlet",
	    	{"name":"zs","age":23},
	    	function(result){
	    		//js 需要通过一个eval()函数   将返回值转为一个js能识别的json对象
	    				console.log(result);
	    		/* var    jsonStudent = eval(result.stu);
	    		
	    		console.log(jsonStudent+"jsonStudent.name:"+jsonStudent.name +"=="+jsonStudent.age);
	    				if(result.msg=='true'){
	    	    			alert(result+"此号码已存在");
	    	    		}else{
	    	    			alert(result+"此号码注册成功");
	    	    		} */
	    	    		//多个json遍历
	    				var    jsonStudent = eval(result);
	    	    		$.each(jsonStudent,function(i,element){
	    	    			alert(this.name+"===="+this.age);
	    	    		});
	    	}
);
	
}
</script>
<title>Insert title here</title>
</head>
<body>
form 表单提交是整个页面刷新 不可以  只能使用局部刷新      通过Ajax的方式来进行提交
  手机：  <input    id="mobile"/>
  <br>
  <input   type="button"    value="注册"    onclick="register()"/>  
  <input   type="button"    value="测试j'son"    onclick="testJson()"/>  
  <span   id="tip"></span>
</body>
</html>
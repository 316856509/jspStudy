<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册页面</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	 <script type="text/javascript">
  	function checkName(){
  	var name = document.getElementById("username").value;
  	var reg =/^([a-zA-Z0-9]{6,})$/i;
  	
  	if (reg.test(name)){
  		document.getElementById("userId").innerHTML="";
  		return true;
  	  }else{
  		document.getElementById("userId").style.color="red";
  		if(name.length<6){
  			document.getElementById("userId").innerHTML="账户长度需要大于6";
  		}else{
  			document.getElementById("userId").innerHTML="账户只能使用数字和字母";
  		}
  	  	return false;
  	  }
  	}
  	
  	function checkPassword1(){
  		var password = document.getElementById("password1").value;
  		if(password.length<6){
  			document.getElementById("passwordId1").style.color="red";
  			document.getElementById("passwordId1").innerHTML="密码长度需要大于6";
  		}else{
  			document.getElementById("passwordId1").innerHTML="";
  		}
  	}
  	
  	function checkPassword2(){
  		var password1 = document.getElementById("password1").value;
  		var password2 = document.getElementById("password2").value;
  		if(password1!=password2){
  			document.getElementById("passwordId2").style.color="red";
  			document.getElementById("passwordId2").innerHTML="两次密码输入不一致";
  		}else{
  			document.getElementById("passwordId2").innerHTML="";
  		}
  	}
  	
  	function checkIdNumber(){
  		var idNumber = document.getElementById("idNumber").value;
  		if(idNumber.length==16||idNumber.length==18){
  			document.getElementById("numberId1").innerHTML="";
  		}else{
  			document.getElementById("numberId1").style.color="red";
  			document.getElementById("numberId1").innerHTML="身份证号码不正确";
  		}
  	}
  	
  	function checkEmail(){
  		var email = document.getElementById("email").value;
  		var reg = /^[a-zA-Z0-9-_]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/
  		if(reg.test(email)){
  			document.getElementById("emailId").innerHTML="";
  		}else{
  			document.getElementById("emailId").style.color="red";
  			document.getElementById("emailId").innerHTML="邮箱格式不正确";
  		}
  	}
  </script>

  </head>
 
  <body>
	<form action="" method="post" >
		<h2 align="center">用户注册</h2>
	   <table align="center">
	   	<tr>
	   		<td>
	   			帐号：
	   		</td>
	   		<td>
	   			<input id="username" type="text" onblur="checkName()" />
	   			<span id="userId"></span>
	   		</td>
	   	</tr>
	   	<tr>
	   		<td>密码：</td>
	   		<td><input type="password"  id="password1" onblur="checkPassword1()"/><span id="passwordId1"></span></td>
	   	</tr>
	   	<tr>
	   		<td>确认密码:</td>
	   		<td><input type="password" id="password2" onblur="checkPassword2()" /><span id="passwordId2"></span></td>
	   	</tr>
	   	<tr>
	   		<td>身份证号:</td>
	   		<td><input type="text"  id="idNumber" onblur="checkIdNumber()" /><span id="numberId1"></span></td>
	   	</tr>
	   	<tr>
	   		<td>电子邮箱:</td>
	   		<td><input type="text" id="email" onblur="checkEmail()" /><span id="emailId"></span></td>
	   	</tr>
	   	<tr>
	   		<td colspan=2 align="center"><input type="submit" value="提交" onclick="return judge()" /></td>
	   	</tr>
	   </table>
	</form>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	    <style type="text/css">
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
			background-color: #375F9A;
		}
		.login_top_bg {background-image: url(<%=path %>/images/login-top-bg.gif);background-repeat: repeat-x;}
		.body {
			background-color: #EEF2FB;
			left: 0px;
			top: 0px;
			right: 0px;
			bottom: 0px;
		}
		
		.login-buttom-bg {
			background-image: url(<%=path %>/images/login-buttom-bg.gif);
			background-repeat: repeat-x;
		}
		.login-buttom-txt {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 10px;
			color: #ABCAD3;
			text-decoration: none;
			line-height: 20px;
		}
		.login_txt {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			line-height: 25px;
			color: #333333;
		}
		.Submit {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			color: #629DAE;
			text-decoration: none;
			background-image: url(<%=path %>/images/Submit_bg.gif);
			background-repeat: repeat-x;
		}
		.login_bg {
			background-image: url(<%=path %>/images/login_bg.jpg);
			background-repeat: repeat-x;
		}
		.login_bg2 {
			background-image: url(<%=path %>/images/login-content-bg.gif);
			background-repeat: no-repeat;
			background-position: right;
		}
		
		.admin_txt {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			color: #FFFFFF;
			text-decoration: none;
			height: 38px;
			width: 100%;
			position: 固定;
			line-height: 38px;
		}
		.login_txt_bt {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 18px;
			line-height: 25px;
			color: #666666;
			font-weight: bold;
		}
		.admin_topbg {
			background-image: url(<%=path %>/images/top-right.gif);
			background-repeat: repeat-x;
		}
		.txt_bt {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			line-height: 25px;
			font-weight: bold;
			color: #000000;
			text-decoration: none;
		}
		.left_topbg {
			background-image: url(<%=path %>/images/content-bg.gif);
			background-repeat: repeat-x;
		}
		.admin_toptxt {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			color: #4A8091;
			height: 18px;
			width: 100%;
			overflow: hidden;
			position: 固定;
		}
		
		.left_bt {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 14px;
			font-weight: bold;
			color: #395a7b;
		}
		.left_bt2 {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			line-height: 25px;
			font-weight: bold;
			color: #333333;
		}
		.titlebt {
			font-size: 12px;
			line-height: 26px;
			font-weight: bold;
			color: #000000;
			background-image: url(<%=path %>/images/top_bt.jpg);
			background-repeat: no-repeat;
			display: block;
			text-indent: 15px;
			padding-top: 5px;
		}
		
		.left_txt {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			line-height: 25px;
			color: #666666;
		}
		.left_txt2 {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			line-height: 25px;
			color: #000000;
		}
		.nowtable {
			background-color: #e1e5ee;
			border-top-width: 1px;
			border-right-width: 1px;
			border-bottom-width: 1px;
			border-left-width: 1px;
			border-top-style: solid;
			border-top-color: #bfc4ca;
			border-right-color: #bfc4ca;
			border-bottom-color: #bfc4ca;
			border-left-color: #bfc4ca;
		}
		.left_txt3 {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			line-height: 25px;
			color: #003366;
			text-decoration: none;
		}
	
	
	
		.left_ts {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			line-height: 25px;
			font-weight: bold;
			color: #FF6600;
		}
		.line_table {
			border: 1px solid #CCCCCC;
		}
		.sec1 {
			CURSOR: hand;
			COLOR: #000000;
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			line-height: 25px;
			border: 1px solid #B5D0D9;
			background-image: url(<%=path %>/images/right_smbg.jpg);
			background-repeat: repeat-x;
		}
		.sec2 {
			FONT-WEIGHT: bold;
			CURSOR: hand;
			COLOR: #000000;
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			line-height: 25px;
			background-color: #e2e7ed;
			border: 1px solid #e2e7ed;
		}
		.main_tab {
			COLOR: #000000;
			BACKGROUND-COLOR: #e2e7ed;
			border: 1px solid #e2e7ed;
		}
		.MM a {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			line-height: 26px;
			color: #666666;
			background-image: url(<%=path %>/images/menu_bg.gif);
			background-repeat: no-repeat;
			list-style-type: none;
			list-style-image: none;
		}
		a:link {
			font-size: 12px;
			line-height: 25px;
			color: #333333;
			text-decoration: none;
		}
		a:hover {
			font-size: 12px;
			line-height: 25px;
			color: #666666;
			text-decoration: none;
		}
		a:visited {
			font-size: 12px;
			line-height: 25px;
			color: #333333;
			text-decoration: none;
		}
	
	
		.MM a:link {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 12px;
			line-height: 26px;
			color: #666666;
			background-image: url(<%=path %>/images/menu_bg.gif);
			background-repeat: no-repeat;
			list-style-type: none;
			list-style-image: none;
		}
		</style>
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
        
		<script language="javascript">
		function check1()
		{                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入用户名");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 if(document.ThisForm.userType.value=="-1")
			 {
			 	alert("请选择登陆身份");
				document.ThisForm.userType.focus();
				return false;
			 }
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,document.ThisForm.userType.value,callback);
		}
		
		function callback(data)
		{
		    if(data=="no")
		    {
		        alert("用户名或密码错误");
		    }
		    if(data=="yes")
		    {
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		}
	    </script>
</head>
<body>
<table width="100%" height="166" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="42" valign="center">
		<div align="center">
				<br/>
				<br/>
				<table id="__01" width="1024" height="600" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td rowspan="3">
							<img src="images/8548442_180910151137_2_01.gif" width="562" height="600" alt=""></td>
						<td>
							<img src="images/8548442_180910151137_2_02.gif" width="336" height="199" alt=""></td>
						<td rowspan="3">
							<img src="images/8548442_180910151137_2_03.gif" width="126" height="600" alt=""></td>
					</tr>
					<tr style="background-image: url(<%=path %>/images/8548442_180910151137_2_04.gif)"  width="336" height="209" >
						<td>
							<FORM name="ThisForm" action="<%=path %>/adminLogin.action" method=post>
		                        <table cellSpacing="0" cellPadding="0" width="100%" border="0" >
		                          <tr>
		                            <td align="right">用户名： </td>
		                            <td ><input name="userName" value="" size="20">                            </td>
		                          </tr>
		                          <tr>
		                            <td align="right">密 码：  </td>
		                            <td ><input type="password" size="20" name="userPw">
		                              <img src="<%=path %>/images/luck.gif" width="19" height="18"> </td>
		                          </tr>
		                          <tr>
		                            <td align="right">类型：  </td>
		                            <td  > 
		                            <select name="userType" id="userType" > 
		                                                          <option value="-1" selected="selected">-请选择登陆身份-</option>
		                                                          <option value="0">管理员</option>
		                                                          <option value="1">客户</option>
		                                                      </select></td>
		                          </tr>
		                          <tr>
		                            <td  align="right">
		                                
		                            </td>
		                            <td width="67%" class="top_hui_text"><br/>
		                            <input name="button" type="button" class="button" id="Submit" value="登 陆" onclick="check1()"> &nbsp;&nbsp;
		                                
		                            	<input name="cs" type="reset" class="button" id="cs" value="重 置"></td>
		                          </tr>
		                        </table>
		                        <br>
		                    </form>
					    </td>
					</tr>
					<tr>
						<td>
							<img src="images/8548442_180910151137_2_05.gif" width="336" height="192" alt=""></td>
					</tr>
				</table>
		</div> 
    </td>
  </tr>
  <tr>
   
  
</table>
</body>
</html>
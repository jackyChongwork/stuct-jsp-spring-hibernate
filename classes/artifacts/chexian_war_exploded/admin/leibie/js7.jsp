<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:useBean id="db1" scope="page" class="com.dao.DB"/>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
				<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		
        <script language="javascript">
           function shipinAdd()
           {
              var url="<%=path %>/admin/shipin/shipinAdd.jsp";
              window.location.href=url;
           }
           
           function shipinDetail(id)
           {
                 var url="<%=path %>/shipin?type=shipinDetail&id="+id;
                 var n="";
                 var w="500px";
                 var h="400px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
				 openWin(url,n,w,h,s);
           }
           
            function down1(fujianPath,fujianYuashiMing)
           {
               var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
		       url=encodeURI(url); 
               url=encodeURI(url); 
               window.open(url,"_self");
           }
       </script>
       
        <script language="javascript">
           
           function shouzhiAdd()
           {
                 var url="<%=path %>/admin/shebei/Add.jsp";
                 //var n="";
                 //var w="480px";
                 //var h="500px";
                 //var s="resizable:no;help:no;status:no;scroll:yes";
				 //openWin(url,n,w,h,s);
				 window.location.href=url;
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="4" background="<%=path %>/images/tbg.gif">&nbsp;理赔范围介绍&nbsp;</td>
				</tr>
				<tr align="left" bgcolor="#FAFAF1" height="22">
					
					<td>座位险<br/>
一、座位险的保险责任<br/>
购买了座位险的机动车辆在使用过程中，一旦发生意外事故导致保险车辆的车上人员遭受人身伤亡，依法应由被保险人承担的经济赔偿责任，保险人依照《道路交通事故处理办法》和保险合同的规定给予赔偿。<br/>
二、座位险的免除责任<br/>
1.乘客在车下时所受的人身伤亡；<br/>
2.因违章搭乘造成的人身伤亡；<br/>
3.由于驾驶员的故意行为造成的人身伤亡；<br/>
4.其它不属于保险责任范围内的损失和费用。<br/>
5.本车上的人员因疾病、分娩、自残、殴斗、自杀、犯罪行为所致的人身伤亡；<br/>
三、座位险的赔偿限额<br/>
车上人员每人的最高赔偿限额由保险人和投保人在投保时协商确定，投保座位数以保险车辆的核定载客数为限。<br/>
四、座位险的赔偿处理<br/>
1.每次赔偿均实行免赔率，免赔率及办法与第三者责任险相同。<br/>
2.车上人员人身伤亡按《道路交通事故处理办法》规定的赔偿范围、项目和标准以及保险合同的规定计算赔偿，但每人最高赔偿金额不超过保险单载明的本保险每座赔偿限额，最高赔偿人数以投保座位数为限；<br/>

<br/>
</td>
					
				 
 

					 
		        </tr>	
 
				
			</table>
			 
	</body>
</html>

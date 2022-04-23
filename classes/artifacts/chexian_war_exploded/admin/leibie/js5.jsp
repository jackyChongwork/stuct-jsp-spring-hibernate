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
					
					<td>不计免赔险赔偿范围有如下：<br/>

　　经特别约定，保险事故发生后，按照投保人选择投保的附加险的事故责任免赔率和绝对免赔率计算的，应当由被保险人自行承担的免赔金额部分，保险人负责赔偿。<br/>
　　附加险各险种的不计免赔率特约责任作为整体存在，投保人不可选择分别投保。<br/>

　　下列金额，保险人不负责赔偿：<br/>
　　１、因违反法律法规中有关机动车辆装载规定而增加的免赔金额；<br/>
　　２、因保险车辆实际行驶区域超出保险单的约定范围而增加的免赔金额；<br/>
　　３、因投保时指定驾驶人但保险事故发生时为非指定驾驶人驾驶保险车辆而增加的免赔金额，因提供的指定驾驶人信息不真实而增加的免赔金额；<br/>
　　   ４、因应当由第三者负责赔偿但无法找到第三者而增加的免赔金额；<br/>
５、根据多次事故免赔特约条款的绝对免赔率计算的应当由被保险人自行承担的免赔金额。<br/>
<br/>
</td>
					
				 
 

					 
		        </tr>	
 
				
			</table>
			 
	</body>
</html>

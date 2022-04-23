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
					
					<td>
					
				赔偿范围<br/>
1、被保险车辆全车被盗窃或被抢劫，对被保险人造成的直接经济损失。在车辆被盗抢两个月后，保险人按保险金额或出险时车辆实际价值进行赔偿。<br/>
2、保险车辆的零部件或附属设备失窃，没有构成全车被盗，不属保险责任，保险公司不予理赔。<br/>
3、整个保险车辆被盗后，经由公安部门立案，在两个月以上仍未找到者属保险责任;在两个月内查获，但发现车辆已遭破坏或车上零部件、附属设备丢失，这种因全车被盗抢而造成的损失，也属保险责任，保险公司会按照保险条款予以相应的赔付。<br/>

盗抢险的免责范围<br/>

盗抢险的免责范围有哪些?车主们需要注意一旦出现下列情况，保险公司是不负责赔偿的：<br/>
1、非全车被盗抢，仅车上零部件或附属设备被盗抢造成的损失;<br/>
2、因被欺诈发生的损失;<br/>
3、承租人与保险车辆同时失踪情形下发生的损失;<br/>
4、除非另有约定，未办理注册登记期间发生的损失;<br/>
5、保险车辆在检测、修理、罚没、扣押、查封期间发生的损失;<br/>
6、因民事纠纷导致保险车辆被盗抢而发生的损失;<br/>
7、被保险人的故意行为造成的损失。<br/>
<br/>
</td>
					
				 
 

					 
		        </tr>	
 
				
			</table>
			 
	</body>
</html>

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
					
					<td>玻璃险<br/>
第一条 投保范围<br/>
本保险是车辆损失险的附加险，已投保车辆损失险的车辆方可投保本附加险。<br/>
第二条 保险责任<br/>
在保险期间内，保险车辆在使用过程中，发生本车风挡玻璃或车窗玻璃的单独破碎，保险人按实际损失赔偿。<br/>
投保人在与保险人协商的基础上，自愿按进口或国产玻璃选择投保，保险人根据其选择承担相应保险责任。<br/>
第三条 责任免除<br/>
保险车辆的下列损失，保险人不负责赔偿：<br/>
（一）灯具、车镜玻璃破碎；<br/>
（二）安装、维修车辆过程中造成玻璃的破碎。<br/>
第四条 保额如何确定<br/>
保险公司对玻璃破碎通常按实际损失赔付，投保时不需要确定保险金额，但您要确定按国产还是按进口玻璃投保，以便理赔时确定按何种玻璃赔偿。<br/>
第五条 关于保险赔偿<br/>
赔偿项目：对车辆的风挡玻璃和车窗玻璃发生单独破碎 保险公司负责赔偿。
<br/>
</td>
					
				 
 

					 
		        </tr>	
 
				
			</table>
			 
	</body>
</html>

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
					
					<td>交强险：保险公司对被保险机动车发生道路交通事故造成本车人员、被保险人以外的受害人的人身伤亡、财产损失，在责任限额内予以赔偿的强制性责任保险。汽车交通事故责任强制保险在全国范围内实行统一的责任限额。责任限额分为死亡伤残赔偿限额、医疗费用赔偿限额、财产损失赔偿限额以及被保险人在道路交通事故中无责任的赔偿限额。<br/>
机动车在道路交通事故中有责任的赔偿限额<br/>
◆ 死亡伤残赔偿限额：110000元人民币<br/>
◆ 医疗费用赔偿限额：10000元人民币<br/>
◆ 财产损失赔偿限额：2000元人民币<br/>
机动车在道路交通事故中无责任的赔偿限额<br/>
◆ 死亡伤残赔偿限额：11000元人民币<br/>
◆ 医疗费用赔偿限额：1000元人民币<br/>
◆ 财产损失赔偿限额：100元人民币<br/>

</td>
					
				 
 

					 
		        </tr>	
 
				
			</table>
			 
	</body>
</html>

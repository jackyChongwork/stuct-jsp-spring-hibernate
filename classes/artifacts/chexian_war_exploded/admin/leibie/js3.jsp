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
					1.地震不赔<br/>
遵循了大部分财产保险都不保地震责任的惯例，在覆盖了大多数自然灾害之后，车险条款中也剔除了地震。一直以来，保险公司对地震险业务向来小心翼翼。由于缺少数据和经验，保险监管部门也不鼓励保险公司承保。<br/>
2.精神损失不赔<br/>
大部分保险条款会有类似的规定，保险公司缺乏针对精神伤害的定损标准。因保险事故引起的任何有关精神赔偿视为责任免除。<br/>
3.酒后驾车、无照驾驶、未年检不赔<br/>
在上述情况下，司机并不具备上路行驶的资格，严重违反交通法规。此外，如果驾驶员与准驾车型不符、实习期上高速等情形，保险公司也会拒绝赔付。<br/>
4.发动机进水后再启动造成损坏不赔<br/>
在2005年的“麦莎”台风过后，这一点曾经引起不少纠纷。保险公司认为，车辆行驶到水深处，发动机熄火后，如果司机又强行打火造成损坏，属于操作不当造成的，不在赔偿范围之内。<br/>
5.部分零件被偷不赔<br/>
如果不是全车被盗，只是零部件如轮胎、音响设备、车标等被盗，车主只能自认倒霉。保险公司通常规定“非全车遭盗抢，仅车上零部件或附属设备被盗窃、被抢劫、被抢夺、被损坏”为除外责任。<br/>
6.爆胎不赔<br/>
汽车轮胎单独损坏，保险公司不予以赔偿。但因轮胎爆裂而引起的碰撞、翻车等事故，造成车辆其他部位的损失，保险公司会负责赔偿。<br/>
注意：车损险也不是全额赔付，保险公司根据具体情况，在车损险条款中设定绝对免赔额，并罗列责任免除条款。当前许多保险公司出台不计免赔险，被保险人可以将事故责任所承担的免赔金额转给汽车保险公司，车主领到的理赔额会更多。<br/>
<br/>
</td>
					
				 
 

					 
		        </tr>	
 
				
			</table>
			 
	</body>
</html>

<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		
        <script language="javascript">
           function kehuDel(kehuId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/kehuDel.action?kehuId="+kehuId;
               }
           }
           function kehuEditPre(kehuId)
           {
                   window.location.href="<%=path %>/kehuEditPre.action?kehuId="+kehuId;
           }
           function kehuAdd()
           {
                 var url="<%=path %>/admin/kehu/kehuAdd.jsp";
                 //var n="";
                 //var w="480px";
                 //var h="500px";
                 //var s="resizable:no;help:no;status:no;scroll:yes";
				 //openWin(url,n,w,h,s);
				 window.location.href=url;
           }
           
           function excel()
           {
                 window.location.href="<%=path %>/kehuExcel.action";
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#8D3F53" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="12" background="<%=path %>/images/tbg.gif">&nbsp;客户维护&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="7%">ID</td>
					<td width="7%">姓名</td>
					<td width="7%">性别</td>
					<td width="7%">年龄</td>
					<td width="7%">学历</td>
					<td width="7%">职位</td>
					<td width="7%">住址</td>
					<td width="7%">tel</td>
					<td width="7%">email</td>
					<td width="7%">身份证</td>
		 
					<td width="7%">操作</td>
		        </tr>	
				<s:iterator value="#request.kehuList" id="kehu">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#kehu.kehuId"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#kehu.kehuName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#kehu.kehuSex"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#kehu.kehuAge"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#kehu.kehuXueli"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#kehu.kehuZhiwei"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#kehu.kehuAddress"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#kehu.kehuTel"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					   <s:property value="#kehu.kehuEmail"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#kehu.kehuQq"/>
					</td>
				 
					<td bgcolor="#FFFFFF" align="center">
					 <c:if test="${sessionScope.userType==0 }">	
						<a href="#" onclick="kehuDel(<s:property value="#kehu.kehuId"/>)" class="pn-loperator">删除</a>
						&nbsp;&nbsp;&nbsp;
						<a href="#" onclick="kehuEditPre(<s:property value="#kehu.kehuId"/>)" class="pn-loperator">编辑</a>
						</c:if> 
					</td>
				</tr>
				</s:iterator>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
			  <tr>
			    <td>
			      <c:if test="${sessionScope.userType==0 }">
			       <input type="button" value="添加客户" style="width: 80px;" onclick="kehuAdd()" /></c:if> 
			      <input type="button" value="导出Excel" style="width: 80px;" onclick="excel()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>

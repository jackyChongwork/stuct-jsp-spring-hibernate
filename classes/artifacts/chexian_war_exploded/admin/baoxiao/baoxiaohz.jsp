<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:useBean id="db1" scope="page" class="com.dao.DB"/>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>

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
           
           function ListDetail(id)
           {
                 var url="ListDetail.jsp?sqID="+id;
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
           
		function check()
		{                                                                                         
		     if(document.formAdd.bxyf.value=="0")
			 {
			 	alert("请选择月份");
				document.formAdd.bxyf.focus();
				return false;
			 }
			 if(document.formAdd.bxlb.value=="0")
			 {
			 	alert("请选择类别");
				document.formAdd.bxlb.focus();
				return false;
			 }

			 return true; 
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

  <%
    //String spqx= session.getAttribute("spqx").toString();
    String spjd="";
    String sql="";
    String bxyf = request.getParameter("bxyf");
    String bxlb = request.getParameter("bxlb");

    System.out.println(bxyf);
    System.out.println(bxlb);
   String riqi="";
   int count=0;
   double yuan=0;
   %>
   
	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
		<form action="baoxiaohz.jsp" name="formAdd" method="post"  onsubmit="return check()">
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="7" >&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 
						月份：	 <select name="bxyf" id="bxyf" >        
						                 <option value="0">请选择...</option>   
		                                  <option value="shijian>='2017-01-01 00:00' and shijian<='2017-01-31 59:59' ">1月 </option>
		                                  <option value="shijian>='2017-02-01 00:00' and shijian<='2017-02-31 59:59' ">2月</option>
		                                  <option value="shijian>='2017-03-01 00:00' and shijian<='2017-03-31 59:59' ">3月</option>
		                                  <option value="shijian>='2017-04-01 00:00' and shijian<='2017-04-31 59:59' ">4月</option>
		                                  <option value="shijian>='2017-05-01 00:00' and shijian<='2017-05-31 59:59' ">5月</option>
		                                  <option value="shijian>='2017-06-01 00:00' and shijian<='2017-06-31 59:59' ">6月</option>
		                                  <option value="shijian>='2017-07-01 00:00' and shijian<='2017-07-31 59:59' ">7月</option>
		                                  <option value="shijian>='2017-08-01 00:00' and shijian<='2017-08-31 59:59' ">8月</option>
		                                  <option value="shijian>='2017-09-01 00:00' and shijian<='2017-09-31 59:59' ">9月</option>
		                                  <option value="shijian>='2017-10-01 00:00' and shijian<='2017-10-31 59:59' ">10月</option>
		                                  <option value="shijian>='2017-11-01 00:00' and shijian<='2017-11-31 59:59' ">11月</option>
		                                  <option value="shijian>='2017-12-01 00:00' and shijian<='2017-12-31 59:59' ">12月</option>
		                           </select>
		                 &nbsp; &nbsp; 
						费用类型：  <select name="bxlb" id="bxlb" >
						                 <option value="0">请选择...</option>        
		                                 <option value="住宿费 ">住宿费 </option>
		                                  <option value="交通费">交通费</option>
		                                  <option value="餐饮费">餐饮费</option>
		                                  <option value="业务招待费">业务招待费</option>
		                                  <option value="水电费">水电费</option>
		                                  <option value="办公费">办公费</option>
		                                  <option value="采购费">采购费</option>
		                           </select>
						&nbsp; &nbsp; <input type="submit" value="  查 询  "/>&nbsp; 
					</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="15%">客户姓名</td>
					
					<td width="15%">申请名称</td>
					
					<td width="10%">类型</td>
					
					<td width="10%">时间</td>
					
					<td width="10%">进度</td>
					
					<td width="10%">审批结果</td>
					
					<td width="10%">金额</td>

		        </tr>	
			  <%
			      if(bxyf!=null && !bxyf.trim().equals(""))
			      {
			      	sql="select sqrName,bxName,leixing,shijian,jindu,jieguo,fujian,bxje,id from v1 where jieguo='通过' and "+bxyf+" and leixing='"+ bxlb +"' " ;
    			  	riqi="在"+bxyf.substring(15,17)+"月中，";
                    System.out.println(riqi);
    			  }
    			  else
    			  {
    			   bxlb="";
    			  	sql="select sqrName,bxName,leixing,shijian,jindu,jieguo,fujian,bxje,id from v1 where id=0 " ;
    			  }
    			   System.out.println(sql);
    			   
					ResultSet rs = db1.executeQuery(sql);
					 while(rs.next())
	                  {
			  %>
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
					    <%= rs.getString("sqrName") %>
					</td>

					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("bxName") %>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("leixing") %>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("shijian") %>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("jindu") %>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("jieguo") %>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("bxje") %>
					</td>
				</tr>
				
				<%
				yuan= yuan + Double.parseDouble(rs.getString("bxje"));
				count=count+1;
					}
					rs.close();
				%>
				
			</table>
			
             <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="7" >&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 
					汇总：共计<%=count %>条数据，<%=riqi %><%=bxlb %>共计报销<%=yuan %>元
					</td>
					</tr>
					</form>

	</body>
</html>

<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
		}
		.STYLE1 {font-size: 12px;color:#FFFFFF;}
		.STYLE2 {
			color: #FFFFFF;
			font-size: 12px;
		}
		
		a:link {font-size:12px; text-decoration:none; color:#FFFFFF;}
		a:visited {font-size:12px; text-decoration:none; color:#FFFFFF;}
		a:hover {font-size:12px; text-decoration:none; color:#FFFFFF;}
		
		a.v1:link {font-size:12px; text-decoration:none; color:#03515d;}
		a.v1:visited {font-size:12px; text-decoration:none; color:#03515d;}
	</style>
	<script type="text/javascript">
	    function logout()
		{
		   if(confirm("确定要退出本系统吗??"))
		   {
			   window.parent.location="<%=path %>/login.jsp";
		   }
		}
	</script>
  </head>
  
  <body background="<%=path %>/images/1.jpg">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="26" background="<%=path %>/images111/main_03.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="227" height="26" background="<%=path %>/images111/main_01.gif">
								&nbsp;
							</td>
							<td>
								&nbsp;
							</td>
							<td width="60">
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="64">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="457" valign="top" height="64" background="<%=path %>/images111/main_06.gif" nowrap="nowrap">
								<table>
								   <tr height="1"><td></td></tr>
								   <tr  height="20">
								      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								      <td><div style=" FONT-SIZE: 16pt;  COLOR: #ffffff; font-family: 黑体">
								      车险管理系统</div></td>
								   </tr>
								</table>
							</td>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="26" background="<%=path %>/images111/main_07.gif">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td height="26">
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td width="640" height="26">
																	<table width="100%" border="0" cellspacing="0"
																		cellpadding="0">
																		<tr>
																			<td width="30">
																				<div align="center">
																					
																				</div>
																			</td>
																			<td nowrap="nowrap" class="STYLE1">
																				
																			</td>
																		</tr>
																	</table>
																</td>
																<td width="19">
																	
																</td>
																<td width="352">
																	<table width="46%" border="0" align="right"
																		cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="56">
																				<table width="45" border="0" cellspacing="0"
																					cellpadding="0">
																					<tr>
																						<td width="21">
																							<div align="center">
																								
																							</div>
																						</td>
																						<td width="35">
																							<div align="center" class="STYLE1">
																								<a href="#"></a>
																							</div>
																						</td>
																					</tr>
																				</table>
																			</td>
																			<td width="10">
																				
																			</td>
																			<td width="56">
																				<table width="45" border="0" cellspacing="0"
																					cellpadding="0">
																					<tr>
																						<td width="21">
																							<div align="center">
																								
																							</div>
																						</td>
																						<td width="24">
																							<div align="center" class="STYLE1">
																								<a href="#"></a>
																							</div>
																						</td>
																					</tr>
																				</table>
																			</td>
																			<td width="10">
																				
																			</td>
																			<td width="56">
																				<table width="45" border="0" cellspacing="0"
																					cellpadding="0">
																					<tr>
																						<td width="21">
																							<div align="center">
																							
																							</div>
																						</td>
																						<td width="24">
																							<div align="center" class="STYLE1">
																								<a href="#"></a>
																							</div>
																						</td>
																					</tr>
																				</table>
																			</td>
																			<td width="10">
																				
																			</td>
																			<td width="56">
																				<table width="45" border="0" cellspacing="0"
																					cellpadding="0">
																					<tr>
																						<td width="21">
																							<div align="center">
																								
																							</div>
																						</td>
																						<td width="24">
																							<div align="center" class="STYLE1">
																								<a href="#"></a>
																							</div>
																						</td>
																					</tr>
																				</table>
																			</td>
																			<td width="10">
																				
																			</td>
																			<td width="102">
																				<table width="102" border="0" cellspacing="0"
																					cellpadding="0">
																					<tr>
																						<td width="22">
																							<div align="center">
																								
																							</div>
																						</td>
																						<td width="80">
																							<div align="center" class="STYLE1">
																								<a href="<%=path %>/admin/userinfo/userPw.jsp" target="I2"></a>
																							</div>
																						</td>
																					</tr>
																				</table>
																			</td>
																			<td width="10">
																				
																			</td>
																			<td width="56">
																				<table width="45" border="0" cellspacing="0"
																					cellpadding="0">
																					<tr>
																						<td width="21">
																							<div align="center">
																								
																							</div>
																						</td>
																						<td width="24">
																							<div align="center" class="STYLE1">
																								<a href="#" onclick="logout()">退出</a>
																							</div>
																						</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</td>
													<td width="12">
														
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td height="38" >
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td height="38">
														<table border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td width="300" height="26" valign="top">
																	<span class="STYLE2">
																		 &nbsp; &nbsp;
																		 
																	</span>
																</td>
															</tr>
														</table>
													</td>
													<td width="60">
														<div align="right">
															
														</div>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
  </body>
</html>

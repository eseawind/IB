<%--������ϸ����--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%@ page import="com.witsoft.bean.systemManage.grade.LookGrade" %>
<html>
<head>
<script language="javascript" type="text/javascript" src="/IB/common/list.js"></script>
<title>������ϸ����</title>
<style>
div.sele_div_cl{border:1px solid #000000; width:122px; height:18px; clip:rect(0px,112px,17px,0px);overflow:hidden;}
select {position:relative; margin:-2px;width:124px;border:0px;behavior:url('/IB/common/select.htc'); }
</style>

</head>
<body>
<%
LookGrade view=(LookGrade)request.getAttribute("view");
%>

<table width="600px" height="500px" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td align="center" valign="middle" class="outerTable_mainContent">
		<!--�ڱ��ʼ-->
		<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td class="innerTable_top_left"></td>
				<td class="innerTable_top_x"></td>
				<td class="innerTable_top_right"></td>
			</tr>
			<tr>
				<td class="innerTable_left_y"></td>
				<td align="center" valign="top" class="innerTable_main">
				<div id="innerTable_div">
				<!--���ݿ�ʼ-->
				 <form>
					<table width="100%" border="0" cellspacing="1" cellpadding="1">
    <tr>
      <td colspan="2" align="center" bgcolor="#FFFFFF" widtd="25%"><img src="/IB/images/studentoperDet.gif" width="272" height="42"></td>
      </tr>
    <tr>
        <td width="14%" align="center" valign="middle" bgcolor="#FFFFFF" widtd="25%"><strong>�û���ţ�</strong></td>
        <td width="86%" bgcolor="#FFFFFF" widtd="25%"><label><%=view.getUsid()%></label></td>
        </tr>
    <tr>
      <td align="center" valign="middle" bgcolor="#F0F8FF"><strong>�û�������</strong></td>
      <td bgcolor="#F0F8FF"><label><%=view.getUsnm()%></label></td>
      </tr>
    <tr>
      <td align="center" valign="middle" bgcolor="#FFFFFF"><strong>�û��༶��</strong></td>
      <td bgcolor="#FFFFFF"><label><%=view.getUgnm()%></label></td>
      </tr>
     <tr>
      <td align="center" valign="middle" bgcolor="#FFFFFF"><strong>�����ܷ֣�</strong></td>
      <td bgcolor="#FFFFFF"><%=view.getFullMark()%></td>
      </tr>
    <tr>
    <tr>
      <td align="center" valign="middle" bgcolor="#FFFFFF"><strong>ѧ���������������ܷ֣�</strong></td>
      <td bgcolor="#FFFFFF"><%=view.getTheoryMark()%></td>
      </tr>
    <tr>
      <td align="center" valign="middle" bgcolor="#F0F8FF"><strong>�۳�������</strong></td>
      <td bgcolor="#F0F8FF"><%=view.getDeductMark()%></td>
    </tr>
    <tr>
      <td align="center" valign="middle" bgcolor="#FFFFFF"><strong>ʵ�ʵ÷֣�</strong></td>
      <td bgcolor="#FFFFFF"><%=view.getLastMark()%></td>
    </tr>
    <tr>
      <td align="center" valign="top" bgcolor="#F0F8FF"><strong>�۷������</strong></td>
      <td bgcolor="#F0F8FF"><div id="content" style="border:1px #ff9966 dashed; padding:2px; width:98%;height:220;overflow-x:hidden;overflow-y:scroll;word-wrap:break-word"><%=view.getSumup()%></div></td>
<%--      <td bgcolor="#F0F8FF"><%=view.getSumup()%></td>--%>
    </tr>
</table>

				 </form>
				<!--���ݽ���-->
				</div>
			  </td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"></td>
				<td class="innerTable_bottom_right"></td>
			</tr>
		</table>
		<!--�ڱ����--></td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_bottom_left"></td>
		<td class="outerTable_bottom_x"></td>
		<td class="outerTable_bottom_right"></td>
	</tr>

</table>
</body>
</html>

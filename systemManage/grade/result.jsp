<%@ page contentType="text/html; charset=GB2312"%>
<%@ page import="java.util.ArrayList"%>
<html>
<head>
<title>���ʽ���ģ��ϵͳ</title>
<link href="/IB/common/default.css" rel="stylesheet"
	type="text/css">
<script language="javascript" type="text/javascript"
	src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript"
	src="/IB/common/list.js"></script>
</head>

<body>
<html:form action="roleManage.do">
	<html:hidden property="tabID" />
</html:form>
<table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td height="22" class="outerTable_left_y"></td>
		<td class="outerTable_head">
		<table border="0" cellpadding="0" cellspacing="0" align="left"
			valign="bottom" class="tab_blank">
			<tr>
				<td class="tab_active_left" id="tab_left"></td>
				<td class="tab_active_btn" id="tab_btn"><nobr>���ֽ��</nobr></td>
				<td class="tab_active_right" id="tab_right"></td>
			</tr>
		</table>
		</td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_main"><!--�ڱ���ʼ-->
		<form action="systemManage/popedomManage/deleteRoles.jsp">
		<table width="100%" height="100%" border="0" align="center"
			cellpadding="0" cellspacing="0">
			<tr>
				<td class="innerTable_top_left"></td>
				<td class="innerTable_top_x"></td>
				<td class="innerTable_top_right"></td>
			</tr>
			<tr>
				<td class="innerTable_left_y"></td>
				<td align="center" class="innerTable_main">
				<div id="innerTable_divLis" style="width:96%"><!--���ݿ�ʼ-->
				<table width="100%" border="0" cellpadding="0" cellspacing="1"
					id="item_list">

					<tr>
						<th width="25%">�û����</th>
						<th width="25%">����</th>
						<th width="25%">ȫ��������</th>
						<th width="25%">��ɲ�����</th>
					</tr>
					<%
        ArrayList list = (ArrayList) session.getAttribute("gradeList");
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                %>
					<%if ((i % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>
						<%String[] result = (String[]) list.get(i);%>
						<td><%=result[0]%></td>
						<td><%=result[1]%><</td>
						<td><%=result[2]%></td>
						<td><%=result[3]%></td>
					</tr>
					<%}
        }%>
				</table>
				<!--���ݽ���--></div>
				</td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"></td>
				<td class="innerTable_bottom_right"></td>
			</tr>
		</table>
		<!--�ڱ�����--></form>

		</td>
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
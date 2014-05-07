<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName" /></title>
<link href="/IB/common/default.css" rel="stylesheet"
	type="text/css">
<script language="javascript" type="text/javascript"
	src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript"
	src="/IB/common/list.js"></script>
</head>

<body>
<%
        String prid = (String) request.getParameter("prid");%>
<html:form action="invoiceGatheringManageAction.do">
	<html:hidden property="tabID" />
	<%
        if (prid == null) {%>
	<html:hidden property="prid" />
	<%} else {%>
	<html:hidden property="prid" value="<%=prid%>" />
	<%}%>


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
		<td class="outerTable_head"><script language="javascript">showTab("<%=request.getAttribute("opid")%>");</script><!--script
			language="javascript">showOperation("");</script--></td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_main"><!--�ڱ��ʼ-->
		<form method="post" action="">
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
				<div id="innerTable_divLis" style="width:96%"><!-���ݿ�ʼ--><%String cost = com.witsoft.common.Constant.isHaveReceiveDraft(prid,(String)request.getAttribute("tabID"));%><script>showDone("<%if(request.getAttribute("msg")!=null){out.print(request.getAttribute("msg"));}%>");</script>
				<logic:equal
					name="userCommonForm" property="tabID" value="1">
					<table width="100%"  border="0" cellpadding="0"
						cellspacing="1" id="item_list">
						<tr>
						<th width="26%"><bean:message key="common.bpno" /><!--�鸶���--></th>
						<th width="26%"><bean:message key="common.adno" /><!--֪ͨ��--></th>
						<th width="22%"><bean:message key="common.clno" /><!--�ͻ���--></th>
						<th width="26%">���б��<!--������--></th>
						</tr>
						<logic:notEmpty name="list">
							<logic:iterate id="list" name="list" indexId="index" scope="request">

									<span
										<%=cost%>="openReplace('<%=prid%>.do?rfno=<bean:write
                                        name="list" property="id.bpno"/>&prid=<%=prid%>')">
								<%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>
								<td><bean:write name="list" property="id.bpno" /></td>
								<td><bean:write name="list" property="adno" /></td>
								 <td><bean:write name="list" property="clno" /></td>
								<td><bean:write name="list" property="id.brno" /></td>
    							</tr>
    					    </span>
							</logic:iterate>
						</logic:notEmpty>
					</table>
				</logic:equal> <logic:notEqual name="userCommonForm"
					property="tabID" value="1">
<logic:notEqual name="userCommonForm"
					property="tabID" value="0">

					<table width="100%"  border="0" cellpadding="0"
						cellspacing="1" id="item_list">
						<tr>
						<th width="20%"><bean:message key="common.bpno" /><!--�鸶���--></th>
						<th width="22%"><bean:message key="common.rfno" /><!--��ˮ��--></th>
						<th width="18%"><bean:message key="common.clno" /><!--�ͻ���--></th>
						<th width="20%">���б��<!--������--></th>
						<th width="20%"><bean:message key="common.dldt" /><!--��������--></th>
						</tr>
						<logic:notEmpty name="list">
							<logic:iterate id="list" name="list" indexId="index" scope="request">
									<span
										<%=cost%>="openReplace('<%=prid%>.do?rfno=<bean:write
                                        name="list"
                                        property="id.rfno" />&prid=<%=prid%>')">
                                <%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>
									<td><bean:write name="list" property="bpno" /></td>
									<td><bean:write name="list" property="id.rfno" /></td>
									<td><bean:write name="list" property="clno" /></td>
									<td><bean:write name="list" property="id.brno" /></td>
									<td><bean:write name="list" property="dldt" /></td>
								</tr>
								</span>
							</logic:iterate>

						</logic:notEmpty>
					</table>
				</logic:notEqual> 
                </logic:notEqual> 
				<!--��ʾ�����б�-->
				<logic:equal name="userCommonForm"
					property="tabID" value="0">
					<table width="100%" border="0" cellpadding="0" cellspacing="1"
						id="item_list">
						<tr>
							<th width="16%"><bean:message key="common.mgtp" /></th>
							<th width="23%"><bean:message key="common.sentBrno" /></th>
							<th width="20%"><bean:message key="common.prid" /></th>
							<th width="20%">ҵ����</th>
							<th width="21%"><bean:message key="common.sentTime" /></th>
						</tr>
						<logic:notEmpty name="list">
							<logic:iterate id="list" name="list" indexId="index" scope="request">
								<%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>
								 <span
								onclick="openReplace('ViewTelegramText?brno=<bean:write name="list" property="brno" />&mgtp=<bean:write name="list" property="mgtp" />&swid=<bean:write name="list" property="swid" />&rfno=<bean:write name="list" property="rfno" />&prid=<%=prid%>')">
									<td><bean:write name="list" property="mgtp" /></td>
									<td><bean:write name="list" property="brno" /></td>
									<td><bean:write name="list" property="tstp" /></td>
									<td> <bean:write name="list" property="swno" /> </td>
									<td><bean:write name="list" property="dldt" /></td>
									</span>
								</tr>
							</logic:iterate>
						</logic:notEmpty>
					</table>
				</logic:equal>
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
		<!--�ڱ����--></form>

		</td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_bottom_left"></td>
		<td class="outerTable_bottom_x"></td>
		<td class="outerTable_bottom_right"></td>
	</tr>
</table>
<script language="javascript" type="text/javascript">switch_tab("<%=request.getAttribute("opid")%>");</script>
</body>
</html>

<%@ include file="/common/header.jsp"%>
<script language="javascript" type="text/javascript"
	src="/IB/common/list.js"></script>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
<body>
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
				<td class="tab_unactive_left" id="tab_left"></td>
				<td class="tab_unactive_btn" id="tab_btn"><nobr>�ͻ�����</nobr></td>
				<td class="tab_unactive_right" id="tab_right"></td>
			</tr>
		</table>

		<script language="javascript">showOperation("#");</script></td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_main"><!--�ڱ��ʼ-->
		<form name="form1" action="#">
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
				<table width="100%" height="40" border="0" cellpadding="0"
					cellspacing="1" id="item_list">
					<tr>
						<th width="15%">���б��</th>
						<!--������-->
						<th width="30%"><bean:message
							key="systemManage.systemTableManage.clientAccount.ACNO" /></th>
						<!--�ʺ�-->
						<th width="30%"><bean:message
							key="systemManage.systemTableManage.innerAccount.ITEM" /></th>
						<!--��Ŀ����-->
						<th width="5%"><bean:message
							key="systemManage.systemTableManage.innerAccount.CYNO" /></th>
						<!--����-->
						<th width="20%"><bean:message
							key="systemManage.systemTableManage.innerAccount.ITCD" /></th>
						<!--��Ŀ-->
					</tr>
					<logic:notEmpty name="list">
						<logic:iterate id="list" name="list" indexId="index" scope="request"> 
							
							<span onClick="openReplace('*?brno=<bean:write name="list" property="id.brno" />
									&acno=<bean:write name="list" property="id.acno" />')">
								<td><bean:write name="list" property="id.brno" /></td>
								<td><bean:write name="list" property="id.acno" /></td>
								<td><bean:write name="list" property="cyno.cynm" /></td>
								<td><bean:write name="list" property="item.itnm" /></td>
								</span>
							</tr>
						</logic:iterate>
					</logic:notEmpty>
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
<script language="javascript" type="text/javascript">switch_tab('1');</script>
</body>
<html>

<%--�ܾ��޸�--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<head>

</head>

<body onLoad="readOnlyForm(<%=(String)request.getAttribute("tabID")%>)">
<table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_mainContent"><!--�ڱ��ʼ-->
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
				<div id="innerTable_div" class="kuangScroll"><!--���ݿ�ʼ--> <html:form
					action="LCUK.do" onsubmit="checkForm(this)"
					method="post">
					<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<%--������ --%>
						<html:hidden property="prid" />
						<%--������ --%>
						<html:hidden property="brno" />
						<%--��ˮ�� --%>
						<html:hidden property="rfno" />
						<tr>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="40%" height="20" align="right" valign="top">����֤�ţ�</td>
									<td valign="top"><html:text property="lcno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�޸Ĵ�����</td>
									<td valign="top"><html:text property="adno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��֤�����˴��룺</td>
									<td valign="top"><html:text property="apno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��֤���������ƣ�</td>
									<td valign="top"><html:text property="apnm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��֤��������ַ��</td>
									<td valign="top"><html:textarea property="apad" readonly="true"></html:textarea>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">Credit Amount��</td>
									<td valign="top"><html:text property="lcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��֤���ʺ�һ��</td>
									<td valign="top"><html:text property="mgac"  maxlength="36"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���֣�</td>
									<td valign="top"><div class="sele_div"><html:select styleClass="coin" property="accy">
										<option></option>
										<logic:notEmpty name="OPTION_CYNO">
              						<logic:iterate id="list" name="OPTION_CYNO">
									<%String[] cyno = (String[])list;%>
									<html:option value="<%=cyno[0]%>"><%=cyno[1]%></html:option>	
                					</logic:iterate>
                 					</logic:notEmpty>
									</html:select></div></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��</td>
									<td valign="top"><html:text property="mgam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��֤���ʺŶ���</td>
									<td valign="top"><html:text property="mgc2" maxlength="36" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���֣�</td>
									<td valign="top"><div class="sele_div"><html:select styleClass="coin" property="acy2">
										<option></option>
										<logic:notEmpty name="OPTION_CYNO">
              						<logic:iterate id="list" name="OPTION_CYNO">
									<%String[] cyno = (String[])list;%>
									<html:option value="<%=cyno[0]%>"><%=cyno[1]%></html:option>	
                					</logic:iterate>
                 					</logic:notEmpty>
									</html:select></div>
										</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��</td>
									<td valign="top"><html:text property="mam2" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" /></td>
								</tr>
							</table>
							</td>
							<td width="50%" valign="top">&nbsp;</td>
						</tr>
					</table>
					
					
				 <!--���ݽ���-->
			</td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"><html:hidden property="errCode" />
					<table width="100%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                   <td align="center" valign="middle" width="100%" class="Scrollbg">
<%
		String tabID=(String)request.getAttribute("tabID");
		boolean draftFlag=((Boolean)request.getAttribute("draftFlag")).booleanValue();//����
		boolean letterFlag=((Boolean)request.getAttribute("letterFlag")).booleanValue();//�溯
		
		if(tabID!=null&&Integer.parseInt(tabID)<4){//�ڵ��ġ����졢�ݴ桢���޸�Ŀ¼
		if(letterFlag){
		%>
		<input  type="image" src='<bean:message key="common.addLett" />' name="letter" onClick="submitKind(0,'letter');return false">&nbsp;&nbsp;
       <%}
      if(draftFlag){%>
	    <input type="image" src='<bean:message key="common.addTele" />'>&nbsp;&nbsp;
        <%}%>
		<input type="image" name="save" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">&nbsp;&nbsp;
		<%}else{//���ˡ���Ȩ������ЧĿ¼
	   if(letterFlag){
	    %>
		<input type="image" name="letter" src='<bean:message key="common.viewLett" />' onClick="submitKind(0,'letter');return false">&nbsp;&nbsp;
        <%}
      if(draftFlag){%>
	    <input type="image" src='<bean:message key="common.viewTele" />'>&nbsp;&nbsp;
	    <%}
	    }
		
		if(tabID!=null&&(Integer.parseInt(tabID)>3)){//�����б��ھ���(�����ɫ)���濴����
		String step=null;
		if(tabID.equals("6")){
		step="3";//����Ч�ı���
		}else{
		step="2";//���˾��쵫��û�е�����Ч�ı���
		}
		%>
		<input	type="image" src="<bean:message key="common.report" />"
		onClick="openReplace('/IB/voucher.do?prid=<bean:write name="declineModificationDetailForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="declineModificationDetailForm" property="rfno"/>&no=<bean:write name="declineModificationDetailForm" property="lcno"/>');return false" />&nbsp;&nbsp;
		
		<%if(tabID!=null&&tabID.equals("6")){//����ͼ��ֻ��������Ч���濴��%>
		<input	type="image" src='<bean:message key="common.svg" />'
		onClick="window.open('/IB/flowchart.do?id=<bean:write name="declineModificationDetailForm" property="lcno"/>&prid=<bean:write name="declineModificationDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false" />&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//�ڸ��ˡ���Ȩ��ʾ���ؾ��찴ť%>
		
		<input	type="image" src='<bean:message key="common.returnUpdate" />' property="back" onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>

		<input	type="image" src='<bean:message key="common.returnList" />'
		onClick="openReplace('lcManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="declineModificationDetailForm" property="prid"/>');return false">

		<%if(tabID!=null&&!tabID.equals("6")){//������Ч�ύ��ť��ʾ%>
		<br><br>
		<input type="image" name="go" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false" />
		<%}%>
		</td>
                  </tr>
                  </table></td>
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
</body></html:form>
</html:html>

<%--��������֤Ѻ��--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>

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
					action="IBNB.do"
					onsubmit="checkForm(this)" method="post">
					<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="40%" height="20" align="right" valign="top"><bean:message key="system.bank.number" /></td>
									<td valign="top"><html:text property="brno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�ͻ��ţ�</td>
									<td valign="top"><html:text styleClass="clientNum"
										property="clno"  readonly="true"/> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('clientNum','clno');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�ͻ�����</td>
									<td valign="top"><html:text property="clnonm"  readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�ͻ���ַ��</td>
									<td valign="top"><html:textarea property="clnoad" readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">����֤�ţ�</td>
									<td valign="top"><html:text property="lcno"  readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���������ţ�</td>
									<td valign="top"><html:text property="ibno"  readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" >��ݺţ�</td>
									<td valign="top"><html:text  property="evno" maxlength="16" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��ͬ�ţ�</td>
									<td valign="top"><html:text property="cono" maxlength="16"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��֤��ʽ��</td>
									<td valign="top">
									<div class="sele_div"><html:select property="gttp">
										<%out.println(request.getAttribute("OPTION_GTTP"));%>
									</html:select></div>
									
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*���ʱ��֣�</td>
									<td valign="top"><div class="sele_div"><html:select styleClass="coin" property="cyno">
									<option></option>
										<logic:notEmpty name="OPTION_CYNO">
              						<logic:iterate id="list" name="OPTION_CYNO">
									<%String[] cyno = (String[])list;%>
									<html:option value="<%=cyno[0]%>"><%=cyno[1]%></html:option>	
                					</logic:iterate>
                 					</logic:notEmpty>
									</html:select>
									</div></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top"  class="attR">*���ʽ�</td>
									<td valign="top"><html:text property="gvvl" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���ʱ�ţ�</td>
									<td valign="top"><html:text property="neno" maxlength="20"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�Ƿ�Ϊ��ȴ��</td>
									<td valign="top">
									<div class="sele_div"><html:select property="qlfg">
										<%out.println(request.getAttribute("OPTION_QLFG"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*��Ϣ�գ�</td>
									<td valign="top"><html:text styleClass="date" title="vldt"
										property="vldt"  readonly="true"/> <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','vldt');return false"></html:image>
</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�����գ�</td>
									<td valign="top"><html:text styleClass="date" title="madt"
										property="madt"  readonly="true"/> <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','madt');return false"></html:image>
</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*���ʣ�</td>
									<td valign="top"><html:text title="inrt" property="inrt" maxlength="12"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">����˽����ʺţ�</td>
									<td valign="top"><html:text property="clac" maxlength="36"/></td>
								</tr>
							</table>
							</td>
							<td width="50%" valign="top">&nbsp;</td>
						</tr>
					</table>
					
                     <!--���ݽ���--></div>
				</td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"> <html:hidden property="errCode" />
					 <html:hidden property="prid" /> 
					 <html:hidden property="rfno" /> 
					<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="Scrollbg">
                 <tr>
                    <td height="15" class="space"></td>
                  </tr>  <tr>
		     <td width="100%" height="30" align="center" valign="middle">
	      <%
		String tabID=(String)request.getAttribute("tabID");
		
		if(tabID!=null&&Integer.parseInt(tabID)<4){//�ڵ��ġ����졢�ݴ桢���޸�Ŀ¼%>
		<input type="image" name="save" src="<bean:message key="common.save" />" onClick="submitKind(0,'save');return false">&nbsp;&nbsp;
		<%
		}else {//�����б��ھ���(�����ɫ)���濴����

		if(tabID!=null&&tabID.equals("6")){//����ͼ��ֻ��������Ч���濴��%>
		<input type="image" src="<bean:message key="common.svg" />"
		onClick="window.open('/IB/flowchart.do?id=<bean:write name="tradeFinanceImportLCNegotiatDetailForm" property="evno"/>&prid=<bean:write name="tradeFinanceImportLCNegotiatDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//�ڸ��ˡ���Ȩ��ʾ���ؾ��찴ť%>
		
		<input type="image" src="<bean:message key="common.returnUpdate" />" name="back" onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>

		<input type="image" src="<bean:message key="common.returnList" />"
		onClick="openReplace('tradeFinanceIbManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="tradeFinanceImportLCNegotiatDetailForm" property="prid"/>');return false">

		<%if(tabID!=null&&!tabID.equals("6")){//������Ч�ύ��ť��ʾ%>
		</td>
                  </tr>
                  <tr>
                    <td height="30" align="center" valign="middle">
					<input type="image" name="go" src="<bean:message key="common.submit" />" onClick="submitKind(0,'submit');return false">

		<%}%></td>
                  </tr>
                  </table>
				</td>
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

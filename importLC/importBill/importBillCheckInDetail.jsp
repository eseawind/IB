<%--�����Ǽ�--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<script>
function switchsutp()
{
	switch ($("sutp").value)
	{
		case "0":
			//Sight(0)��ʱ��
			$("ultp").disabled = true;
			$("tenr").value = "0";
			$("tenr").disabled = true;
			break;
			
			case "1":
			$("ultp").disabled = false;
			$("tenr").disabled = false;
			break;		
		
		default:
			//Usance(1)�����ǿյ�ʱ��
			$("ultp").disabled = false;
			$("tenr").value = "";
			$("tenr").disabled = false;
	}
}</script>

<body onLoad="switchsutp();readOnlyForm(<%=(String)request.getAttribute("tabID")%>)">
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
				<div id="innerTable_div"><!--���ݿ�ʼ--> <html:form
					action="IBRG.do" onsubmit="checkForm(this)"
					method="post">

					<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="40%" height="20" align="right" valign="top">���������ţ�</td>
									<td valign="top"><html:text property="ibno" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">����֤�ţ�</td>
									<td valign="top"><html:text property="lcno" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">����֤��</td>
									<td valign="top"><html:text property="acam" readonly="true"/></td><!--��acam����һ��-->
								</tr>
								<tr>
									<td height="20" align="right" valign="top">����֤��</td>
									<td valign="top"><html:text property="ivam"readonly="true" /></td><!--��ivam����һ��-->
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��֤���ڣ�</td>
									<td valign="top"><html:text property="isdt" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*������֣�</td>
									<td valign="top"><div class="sele_div"><html:select styleClass="coin" title="dlcy" property="dlcy">
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
									<td height="20" align="right" valign="top">��Ʊ��</td>
									<td valign="top"><html:text property="dfam" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�����з��ã�</td>
									<td valign="top"><html:text property="ngch" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�����</td>
									<td valign="top"><html:text property="dlam" title="dlam" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">����/Զ�ڣ�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="sutp" disabled="true">
										<%out.println(request.getAttribute("OPTION_SUTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">Զ�����ͣ�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="ultp">
										<%out.println(request.getAttribute("OPTION_UUTP"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���ޣ�</td>
									<td valign="top"><html:text property="tenr" maxlength="3"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�յ����ڣ�</td>
									<td valign="top"><html:text styleClass="date" title="apdt"
										property="apdt" readonly="true"/> <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','apdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��ٳж�/�������ڣ�</td>
									<td valign="top"><html:text styleClass="date" property="shdt" readonly="true"/>
									<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','shdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�������ڣ�</td>
									<td valign="top"><html:text styleClass="date" title="bpdt"
										property="bpdt" readonly="true"/> <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','bpdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�����У�</td>
									<td valign="top"><html:text styleClass="bank" title="ngbk"
										property="ngbk" readonly="true"/> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','ngbk,ngbknm,ngbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���������ƣ�</td>
									<td valign="top"><html:text property="ngbknm" readonly="true" styleClass="name_width"/></td>
								</tr>
							</table>
							</td>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" align="right" valign="top">��������ַ��</td>
									<td valign="top"><html:textarea property="ngbkad" readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*������ҵ���ţ�</td>
									<td valign="top"><html:text title="ngno" property="ngno" maxlength="16"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��Ʊ�ţ�</td>
									<td valign="top"><html:text property="ivno" maxlength="16"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�ᵥ�ţ�</td>
									<td valign="top"><html:text property="blno" maxlength="16"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�ᵥ���ڣ�</td>
									<td valign="top"><html:text styleClass="date" property="tddt"/>
									<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','tddt');return false"></html:image></td>
								</tr>
								<tr>
									<td width="40%" height="20" align="right" valign="top">��������ţ�</td>
									<td valign="top"><html:text property="sgno" maxlength="16" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">Զ�ڸ�����գ�</td>
									<td valign="top"><html:text styleClass="date" property="bedt" readonly="true"/>
									<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','bedt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�Ѹ����־��</td>
									<td valign="top">

									<div class="sele_div"><html:select property="pymk" disabled="true">
										<%out.println(request.getAttribute("OPTION_PYMK"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���᲻���㣺</td>
									<td valign="top">

									<div class="sele_div"><html:select property="drcb">
										<%out.println(request.getAttribute("OPTION_BRCB"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">����֤�����Ѹ����</td>
									<td valign="top"><html:text property="paam" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��������ַ��</td>
									<td valign="top"><html:textarea property="adl1"></html:textarea></td>
								</tr>
							</table>
							</td>
						</tr>
					</table>
					
					 <!--���ݽ���--></div>
				</td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"><html:hidden property="prid" />
					<html:hidden property="rfno" />
					<html:hidden property="brno" />
					<html:hidden property="clno" />
					<html:hidden property="fromBrno" />
					<html:hidden property="fromNo" />
                    <html:hidden property="errCode" /> 
					<table width="100%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                   <td align="center" valign="middle" width="100%">
					<%
		String tabID=(String)request.getAttribute("tabID");
		boolean draftFlag=((Boolean)request.getAttribute("draftFlag")).booleanValue();//����
		boolean letterFlag=((Boolean)request.getAttribute("letterFlag")).booleanValue();//�溯
		
		if(tabID!=null&&Integer.parseInt(tabID)<4){//�ڵ��ġ����졢�ݴ桢���޸�Ŀ¼
		if(letterFlag){
		%>
		<input type="image" src='<bean:message key="common.addLett" />' name="letter" onClick="submitKind(0,'letter');return false">&nbsp;&nbsp;
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
		<input type="image" src='<bean:message key="common.report" />'
		onClick="openReplace('/IB/voucher.do?prid=<bean:write name="importBillCheckInDetailForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="importBillCheckInDetailForm" property="rfno"/>&no=<bean:write name="importBillCheckInDetailForm" property="ibno"/>');return false">&nbsp;&nbsp;
		
		<%if(tabID!=null&&tabID.equals("6")){//����ͼ��ֻ��������Ч���濴��%>
		<input type="image" src='<bean:message key="common.svg" />'
		onClick="window.open('/IB/flowchart.do?id=<bean:write name="importBillCheckInDetailForm" property="ibno"/>&prid=<bean:write name="importBillCheckInDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//�ڸ��ˡ���Ȩ��ʾ���ؾ��찴ť%>
		
		<input type="image" src='<bean:message key="common.returnUpdate" />' property="back" onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>

		<input type="image" src='<bean:message key="common.returnList" />'
		onClick="openReplace('importBillManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="importBillCheckInDetailForm" property="prid"/>');return false">

		<%if(tabID!=null&&!tabID.equals("6")){//������Ч�ύ��ť��ʾ%>
		<br><br>
		<input type="image" name="go" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">
		<%}%>
		</td>
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

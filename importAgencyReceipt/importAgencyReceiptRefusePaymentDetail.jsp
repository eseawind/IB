<%--�ܸ�--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<script>
function switchchco(flag)
{
	switch ($("chco").value)
	{
		case "MS":
		case "":
			$("chcy").selectedIndex = 0;
            $("caam").value = "";
			$("caam").disabled=true;
			$("tltp").disabled=true;
			break;
		default:
			$("chcy").selectedIndex = 1;
			$("caam").disabled=false;
			$("tltp").disabled=false;
			if(flag)//��ҳ�浼���ʱ�򲻼���ajax
            getCharge("caam","01","1000",$("prid").value);
	}
}
</script>

<body onLoad="switchchco(false);readOnlyForm(<%=(String)request.getAttribute("tabID")%>)">
<table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_mainContent"><!--�ڱ���ʼ-->
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
				<div id="innerTable_div"  class="kuangScroll"><!--���ݿ�ʼ--> <html:form action="ICRJ.do"
					onsubmit="checkForm(this)" method="post">
					<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="40%" height="20" align="right" valign="top">���ڴ��պţ�</td>
									<td valign="top"><html:text property="icno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�����˴��룺</td>
									<td valign="top"><html:text property="clno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�ͻ����ƣ�</td>
									<td valign="top"><html:text property="clnonm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�ͻ���ַ��</td>
									<td valign="top"><html:textarea property="clnoad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�����д��룺</td>
									<td valign="top"><html:text property="ocbk" readonly="true" />
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���������ƣ�</td>
									<td valign="top"><html:text property="ocbknm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��������ַ��</td>
									<td valign="top"><html:textarea property="ocbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">������ҵ���ţ�</td>
									<td valign="top"><html:text property="ocno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">IC Currency��</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin" property="dlcy">
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
									<td height="20" align="right" valign="top">IC Amount��</td>
									<td valign="top"><html:text property="dlam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�շѷ�ʽ��</td>
									<td valign="top">
									<div class="sele_div"><html:select property="chco" onchange="switchchco(true)" title="chco">
										<%out.println(request.getAttribute("OPTION_CHCO"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�շѱ��֣�</td>
									<td valign="top">
									<div class="sele_div" id="2"><html:select styleClass="coin"
										property="chcy" disabled="true">
										<option></option>
										<option value="01">CNY �����</option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ʵ�������ѣ�</td>
									<td valign="top"><div id="3"><html:text property="caam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></div></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�ʵ�����ͣ�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="tltp">
										<%out.println(request.getAttribute("OPTION_TLTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ʵ���ʵ�ѽ�</td>
									<td valign="top"><html:text property="taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
								</tr>
							</table>
							</td>
							<td width="50%" valign="top">&nbsp;</td>
						</tr>
					</table>
					
                    <html:hidden property="errCode" />
					<html:hidden property="prid" />
					<html:hidden property="rfno" />
                    <html:hidden property="brno" /> 
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
		<!--�ڱ�����--></td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_bottom_left"></td>
		<td class="outerTable_bottom_x"><table width="100%"  border="0" cellspacing="0" cellpadding="0" class="Scrollbg">
                 <tr>
                    <td height="15" class="space"></td>
                  </tr>
				  <tr>
                    <td align="center" valign="bottom" width="100%">
					<%
		String tabID=(String)request.getAttribute("tabID");
		boolean draftFlag=((Boolean)request.getAttribute("draftFlag")).booleanValue();//����
		boolean letterFlag=((Boolean)request.getAttribute("letterFlag")).booleanValue();//�溯
		
		if(tabID!=null&&Integer.parseInt(tabID)<4){//�ڵ��ġ����졢�ݴ桢���޸�Ŀ¼
		if(letterFlag){
		%>
		<input type="image" src='<bean:message key="common.addLett" />' onClick="submitKind(0,'letter');return false">&nbsp;&nbsp;
       <%}
      if(draftFlag){%>
	    <input type="image" src='<bean:message key="common.addTele" />'>&nbsp;&nbsp;
        <%}%>
		<input type="image" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">&nbsp;&nbsp;
		<%}else{//���ˡ���Ȩ������ЧĿ¼
	   if(letterFlag){
	    %>
		<input type="image" src='<bean:message key="common.viewLett" />' onClick="submitKind(0,'letter');return false">&nbsp;&nbsp;
        <%}
      if(draftFlag){%>
	    <input type="image" src='<bean:message key="common.viewTele" />'>&nbsp;&nbsp;
	    <%}
	    }
		
		if(tabID!=null&&(Integer.parseInt(tabID)>3)){//�����б����ھ���(�����ɫ)���濴����
		String step=null;
		if(tabID.equals("6")){
		step="3";//����Ч�ı���
		}else{
		step="2";//���˾��쵫��û�е�����Ч�ı���
		}
		%>
		<input type="image" src='<bean:message key="common.report" />' onClick="openReplace('/IB/voucher.do?prid=<bean:write name="importAgencyReceiptRefusePaymentDetailForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="importAgencyReceiptRefusePaymentDetailForm" property="rfno"/>&no=<bean:write name="importAgencyReceiptRefusePaymentDetailForm" property="icno"/>');return false">
&nbsp;&nbsp;
		
		<%if(tabID!=null&&tabID.equals("6")){//����ͼ��ֻ��������Ч���濴��%>
		<input type="image" src='<bean:message key="common.svg" />' onClick="window.open('/IB/flowchart.do?id=<bean:write name="importAgencyReceiptRefusePaymentDetailForm" property="icno"/>&prid=<bean:write name="importAgencyReceiptRefusePaymentDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">
&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//�ڸ��ˡ���Ȩ��ʾ���ؾ��찴ť%>
		
		<input type="image" src='<bean:message key="common.returnUpdate" />' onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>
<input type="image" src='<bean:message key="common.returnList" />' onClick="openReplace('importAgencyReceiptManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="importAgencyReceiptRefusePaymentDetailForm" property="prid"/>');return false">
		<%if(tabID!=null&&!tabID.equals("6")){//������Ч�ύ��ť��ʾ%>
		<br><br>
		<input type="image" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">
		<%}%>
		</td>
                  </tr>
                  </table></td>
		<td class="outerTable_bottom_right"></td>
	</tr>
</table>
</body></html:form>
</html:html>
<%--�Ǽ�--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<head>
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
            getCharge("caam",$("gucy").value,$("guam").value,$("prid").value);
	}
}
</script>
</head>

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
					action="SGRG.do" onsubmit="checkForm(this)" method="post">
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
									<td valign="top"><html:text property="lcno" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*������������գ�</td>
									<td valign="top"><html:text styleClass="date" property="apdt" readonly="true" title="apdt"/>
									<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','apdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��������ţ�</td>
									<td valign="top"><html:text property="sgno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�����ˣ�</td>
									<td valign="top"><html:text property="apno" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���������ƣ�</td>
									<td valign="top"><html:text property="apnm" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��������ַ��</td>
									<td valign="top"><html:textarea property="apad" readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���ں�ͬ�ţ�</td>
									<td valign="top"><html:text property="crno" maxlength="16"  readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��Ʊ�ţ�</td>
									<td valign="top"><html:text property="ivno" maxlength="16"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*����������֣�</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin" property="gucy" title="gucy" onchange="getCharge('caam',$('gucy').value,$('guam').value,$('prid').value)">
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
									<td height="20" align="right" valign="top" class="attR">*���������</td>
									<td valign="top"><html:text property="guam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" title="guam" maxlength="15" onchange="getCharge('caam',$('gucy').value,$('guam').value,$('prid').value)"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">װ�����ڣ�</td>
									<td valign="top"><html:text styleClass="date" property="shdt" readonly="true"/>
									<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','shdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�ᵥ���룺</td>
									<td valign="top"><html:text property="blno" title="blno" maxlength="16" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*����������</td>
									<td valign="top"><html:textarea property="gsds" title="gsds"></html:textarea></td>
								</tr>
							</table>
							</td>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" align="right" valign="top">�������У�</td>
									<td valign="top"><html:text styleClass="date" property="gubk" readonly="true"/>
									<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','gubk,gubknm,gubkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�����������ƣ�</td>
									<td valign="top"><html:text property="gubknm" readonly="true" styleClass="name_width"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">����������ַ��</td>
									<td valign="top"><html:textarea property="gubkad" readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">������ȡ����</td>
									<td valign="top">
									<div class="sele_div"><html:select property="tlfr">
										<%out.println(request.getAttribute("OPTION_TLFR"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�շѷ�ʽ��</td>
									<td valign="top">
									<div class="sele_div"><html:select property="chco" title="chco" onchange="switchchco(true);">
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
									<td height="20" align="right" valign="top">ʵ�յ�����������ѽ�</td>
									<td valign="top"><div id="3"><html:text property="caam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></div></td>
								</tr>
								<tr>
									<td width="40%" height="20" align="right" valign="top">�ʵ�����ͣ�</td>
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
						</tr>
					</table>
					
                
					
				<!--���ݽ���--></div>
				</td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"><table width="100%" height="75"  border="0" cellpadding="0" cellspacing="0" class="Scrollbg">
                  <tr>
                  <tr>
                    <td height="15" class="space"></td>
                  </tr>
				   <td width="100%" height="30" align="center" valign="middle">
							   <html:hidden property="errCode" /> 
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
		
		if(tabID!=null&&tabID.equals("6")){//����ͼ��ֻ��������Ч���濴��%>
		<input type="image" src='<bean:message key="common.svg" />'
		onClick="window.open('/IB/flowchart.do?id=<bean:write name="checkInDetailForm" property="sgno"/>&prid=<bean:write name="checkInDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp;
		<%}

		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//�ڸ��ˡ���Ȩ��ʾ���ؾ��찴ť%>
		
		<input type="image" src='<bean:message key="common.returnUpdate" />' property="back" onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>

		<input type="image" src='<bean:message key="common.returnList" />'
		onClick="openReplace('gpblManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="checkInDetailForm" property="prid"/>');return false">

		<%if(tabID!=null&&!tabID.equals("6")){//������Ч�ύ��ť��ʾ%>
		</td>
                  </tr> <tr>
                     <td height="30" align="center" valign="middle"><input type="image" name="go" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false"><%}%></td>
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

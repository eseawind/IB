<%--��֤֪ͨ/�Ǽ�--%>
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
            getCharge("caam","01","100",$("prid").value);
	}
}

function switchsutp()
{
	switch ($("sutp").value)
	{
		case "0":
			//Sight(0)��ʱ��
			$("uutp").disabled = true;
			$("tenr").value = "0";
			$("tenr").disabled = true;
			break;
			
			case "1":
			$("uutp").disabled = false;
			$("tenr").disabled = false;
			break;		
		
		default:
			//Usance(1)�����ǿյ�ʱ��
			$("uutp").disabled = false;
			$("tenr").value = "";
			$("tenr").disabled = false;
	}
}

</script>

</head>

<body onLoad="switchchco(false);switchsutp();readOnlyForm(<%=(String)request.getAttribute("tabID")%>)">
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
				<div id="innerTable_div" class="kuangScroll"><!--���ݿ�ʼ--> <html:form action="/ELAD.do"
					onsubmit="checkForm(this)" method="post">
					<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<%--������ --%>
						<html:hidden property="prid" />
						<%--��ˮ�� --%>
						<html:hidden property="rfno" />
						<%--FromBrno ���ķ�����brno --%>
					   <html:hidden property="fromBrno" />
					   <%--����Id�� --%> <html:hidden property="bussinessId"/>
						<tr>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="40%" height="20" align="right" valign="top"><bean:message key="system.bank.number" /></td>
									<td valign="top"><html:text property="brno" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top"  class="attR">*��֤֪ͨ�ţ�</td>
									<td valign="top"><html:text property="adno" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�Ƿ�ӡѺ�˷���</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mkts" disabled="true">
										<%out.println(request.getAttribute("OPTION_MKTS"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�Ƿ�Ϊ��������֤��</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mksb">
										<%out.println(request.getAttribute("OPTION_MKSB"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�Ƿ�Ϊ����������֤��</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mkan">
										<%out.println(request.getAttribute("OPTION_MKAN"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�Ƿ�Ϊѭ������֤��</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mkrv">
										<%out.println(request.getAttribute("OPTION_MKRV"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*����֤�ţ�</td>
									<td valign="top"><html:text property="lcno" maxlength="16" title="lcno"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*֪ͨ�У�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="isad" title="isad">
										<%out.println(request.getAttribute("OPTION_ISAD"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*ָ���鸶�У�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mkeb" title="mkeb">
										<%out.println(request.getAttribute("OPTION_MKEB"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*��֤�У�</td>
									<td valign="top"><html:text styleClass="bank" property="isbk" title="isbk" readonly="true"/>
									<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn"
										onclick="openWin('bank','isbk,isbknm,isbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��֤�����ƣ�</td>
									<td valign="top"><html:text styleClass="name_width" property="isbknm"  readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��֤����ַ��</td>
									<td valign="top"><html:textarea property="isbkad" readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�����˴��룺</td>
									<td valign="top"><html:text styleClass="clientNum"
										property="clno" title="clno" readonly="true"/> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('clientNum','clno,clnonm,clnoad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">������������</td>
									<td valign="top"><html:text property="clnonm" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�����˵�ַ��</td>
									<td valign="top"><html:textarea property="clnoad"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ת֪ͨ�У�</td>
									<td valign="top"><html:text styleClass="bank" property="tfbk" readonly="true"/>
									<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tfbk,tfbknm,tfbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ת֪ͨ�����ƣ�</td>
									<td valign="top"><html:text property="tfbknm" readonly="true" styleClass="name_width"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ת֪ͨ����ַ��</td>
									<td valign="top"><html:textarea property="tfbkad" readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*��֤���ڣ�</td>
									<td valign="top"><html:text styleClass="date" property="isdt" readonly="true"/>
									<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','isdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*��֤��ʽ��</td>
									<td valign="top">
									<div class="sele_div"><html:select property="aemd" title="aemd">
										<%out.println(request.getAttribute("OPTION_AEMD"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td width="40%" height="20" align="right" valign="top">��֤���������ƣ�</td>
									<td valign="top"><html:text property="apnm" maxlength="42"/></td>
								</tr>
							</table>
							</td>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" align="right" valign="top" class="attR">*����֤���֣�</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="lccy" title="lccy">
										<option></option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[0]%>">
													<%=cyno[1]%>
												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*����֤��</td>
									<td valign="top"><html:text property="lcam" title="lcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*����/Զ�ڣ�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="sutp" title="sutp" onchange="switchsutp()">
										<%out.println(request.getAttribute("OPTION_SUTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">Զ�����ͣ�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="uutp">
										<%out.println(request.getAttribute("OPTION_UUTP"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���ޣ�</td>
									<td valign="top"><html:text property="tenr" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" maxlength="3"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�����գ�</td>
									<td valign="top"><html:text styleClass="date" property="epdt" readonly="true" title="epdt"/>
									<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','epdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*���ڵص㣺</td>
									<td valign="top">
									<div class="sele_div"><html:select property="pcep" title="pcep">
										<%out.println(request.getAttribute("OPTION_PCEP"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���װ�����ڣ�</td>
									<td valign="top"><html:text styleClass="date" property="shdt" readonly="true"/>
									<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','shdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�Ƿ񱣶ң�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mkcf">
										<%out.println(request.getAttribute("OPTION_MKSB"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�Ƿ�Ϊ��ת�ã�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mktr">
										<%out.println(request.getAttribute("OPTION_MKTR"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ת���У�</td>
									<td valign="top"><html:text styleClass="bank" property="tlbk" readonly="true"/>
									<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tlbk,tlbknm,tlbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ת�������ƣ�</td>
									<td valign="top"><html:text property="tlbknm" readonly="true" styleClass="name_width"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ת������ַ��</td>
									<td valign="top"><html:textarea property="tlbkad" readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�����д��룺</td>
									<td valign="top"><html:text styleClass="bank" property="rmbk" readonly="true"/>
									<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','rmbk,rmbknm,rmbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���������ƣ�</td>
									<td valign="top"><html:text property="rmbknm" readonly="true" styleClass="name_width"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��������ַ��</td>
									<td valign="top"><html:textarea property="rmbkad" readonly="true"></html:textarea></td>
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
									<td height="20" align="right" valign="top">�����ѱ��֣�</td>
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
									<td height="20" align="right" valign="top">��ݹ���</td>
									<td valign="top"><div class="sele_div"><html:select styleClass="coin" property="cncd">
									 <html:option value=""></html:option>
									<logic:notEmpty name="OPTION_CNTY">
              						<logic:iterate id="list" name="OPTION_CNTY" type="com.witsoft.hibernate.Country">
									<html:option value="<%=list.getSwcd()%>"><bean:write name="list" property="ctnm"/></html:option>	
                					</logic:iterate>
                 					</logic:notEmpty>
									</html:select>
									</div></td>
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
									<td height="20" align="right" valign="top">ʵ���ʵ�ѣ�</td>
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
				<td class="innerTable_bottom_x">  <html:hidden property="errCode" />
					<table width="100%" height="75"  border="0" cellpadding="0" cellspacing="0"  class="Scrollbg">
                  <tr>
                    <td height="15" class="space"></td>
                  </tr>
                  <tr>
                    <td width="100%" height="30" align="center" valign="middle">
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
		<input	type="image" src="<bean:message key="common.report" />"
		onClick="openReplace('/IB/voucher.do?prid=<bean:write name="incomeLCInformNewForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="incomeLCInformNewForm" property="rfno"/>&no=<bean:write name="incomeLCInformNewForm" property="adno"/>');return false">&nbsp;&nbsp;
		
		<%if(tabID!=null&&tabID.equals("6")){//����ͼ��ֻ��������Ч���濴��%>
		<input	type="image" src="<bean:message key="common.svg" />"
		onClick="window.open('/IB/flowchart.do?id=<bean:write name="incomeLCInformNewForm" property="adno"/>&prid=<bean:write name="incomeLCInformNewForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//�ڸ��ˡ���Ȩ��ʾ���ؾ��찴ť%>
		
		<input type="image" src='<bean:message key="common.returnUpdate" />' name="back" onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>

		<input	type="image" src="<bean:message key="common.returnList" />"
		onClick="openReplace('exportLCManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="incomeLCInformNewForm" property="prid"/>');return false">

		<%if(tabID!=null&&!tabID.equals("6")){//������Ч�ύ��ť��ʾ%>
			</td>
                  </tr>
                  <tr>
                    <td height="30" align="center" valign="middle">
		<input type="image" name="go" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">
		<%}%>	</td>
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

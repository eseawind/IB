<%--����--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>

<html:html>
<script>
function switchlgfg()
{
	switch($("lgfg").value)
	{
		case "0":
			//��lgfgΪYesʱ
			$("bhtp").disabled = true;
			$("sutp").disabled = true;
			$("sutp").selectedIndex = 1;
			$("uutp").disabled = true;
			$("tenr").value = "0";
			$("tenr").disabled = true;
	
			break;

		case "1":
		    $("bhtp").disabled = false;
		    $("bhtp").value = "4";
			$("sutp").disabled = false;
			$("uutp").disabled = false;
			$("tenr").disabled = false;
		
		
			switchsutp();
			break;
			

		default:
			$("bhtp").disabled = false;
			$("bhtp").value = "4";
			$("sutp").disabled = true;
			$("uutp").disabled = true;
			$("tenr").value = "0";
			$("tenr").disabled = false;
			switchsutp();
			
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
            getCharge("caam",$("lccy").value,$("lcam").value,$("prid").value);
	}
}


</script>
<body onLoad="switchlgfg();switchchco(false);readOnlyForm(<%=(String)request.getAttribute("tabID")%>)">

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
				<td class="innerTable_main">
				<div id="innerTable_div" class="kuangScroll"><!--���ݿ�ʼ-->
				 <html:form action="LCOP.do" onsubmit="checkForm(this)">
					<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="43%" align="left" valign="top">
							<%--������ --%> 	
							<html:hidden property="prid" /> 
							<%--������ --%> <html:hidden property="brno" />
							<%--��ˮ�� --%> <html:hidden property="rfno" />
							<%--����Id�� --%> <html:hidden property="bussinessId"/>
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="35%" height="20" align="right" valign="top">
									    <bean:message key="system.bank.number" /></td>
									<td valign="top">
									    <html:text property="utno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�Ƿ񿪳�������</td>
									<td valign="top">

									<div class="sele_div"><html:select property="lgfg" title="lgfg" onchange="switchlgfg()">
										<%out.println(request.getAttribute("OPTION_LGFG"));%>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*����֤/�����ţ�</td>
									<td valign="top"><html:text property="lcno" title="lcno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�������ڣ�</td>
									<td valign="top"><html:text styleClass="date" property="isdt"
										title="isdt" readonly="true" /> <html:image src="/IB/images/date.gif"
										tabindex="1" property="more_btn" onclick="openWin('date','isdt');return false"></html:image></td>
						        </tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�����˴��룺</td>
									<td valign="top"><html:text 
										property="apno" title="apno" readonly="true" /> <html:image
										src="/IB/images/winsearch.gif" tabindex="1" property="more_btn"
										onclick="openWin('clientNum','apno,apnm,apad');return false"></html:image></td>
							    </tr>
								<tr>
									<td height="20" align="right" valign="top">���������ƣ�</td>
									<td valign="top"><html:text  property="apnm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��������ַ��</td>
									<td valign="top"><html:textarea property="apad" readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���ں�ͬ�ţ�</td>
									<td valign="top"><html:text property="crno" maxlength="16"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*��������ַ��</td>
									<td valign="top"><html:textarea property="adl1" title="adl1"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�ձ��д��룺</td>
									<td valign="top"><html:text styleClass="bank" property="adbk"
										title="adbk" readonly="true" /> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','adbk,adbknm,adbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�ձ������ƣ�</td>
									<td valign="top"><html:text property="adbknm" styleClass="name_width"  readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�ձ�����ַ��</td>
									<td valign="top"><html:textarea property="adbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�ұ�</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="lccy"  onchange="getCharge('caam',$('lccy').value,$('lcam').value,$('prid').value)">
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[0]%>">
													<%=cyno[1]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*����֤/������</td>
									<td valign="top"><html:text property="lcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15" title="lcam" onchange="getCharge('caam',$('lccy').value,$('lcam').value,$('prid').value)"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*����/Զ�ڣ�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="sutp" title="sutp" onchange="switchsutp()">
										<%out.println(request.getAttribute("OPTION_SUTP"));%>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">Զ�����ͣ�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="uutp">
										<%out.println(request.getAttribute("OPTION_UUTP"));%>
									</html:select>
									<div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���ޣ�</td>
									<td valign="top"><html:text property="tenr" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" maxlength="3"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�����������ͣ�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="bhtp">
										<%out.println(request.getAttribute("OPTION_BHTP"));%>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*����֤���ͣ�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="lctp" title="lctp">
										<%out.println(request.getAttribute("OPTION_LCTP"));%>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*����֤��֧����ʽ��</td>
									<td valign="top">
									<div class="sele_div"><html:select property="ustp" title="ustp">
										<%out.println(request.getAttribute("OPTION_USTP"));%>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ָ�����д��룺</td>
									<td valign="top"><html:text styleClass="bank" property="avbk"
										readonly="true" /> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','avbk,avbknm,avbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ָ���������ƣ�</td>
									<td valign="top"><html:text styleClass="name_width" property="avbknm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ָ��������ַ��</td>
									<td valign="top"><html:textarea property="avbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ת���д��룺</td>
									<td valign="top"><html:text styleClass="bank" property="tfbk"
										readonly="true" /> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tfbk,tfbknm,tfbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ת�������ƣ�</td>
									<td valign="top"><html:text property="tfbknm" styleClass="name_width" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ת������ַ��</td>
									<td valign="top"><html:textarea property="tfbkad" 
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�Ƿ�Ϊת����</td>
									<td valign="top">
									<div class="sele_div"><html:select property="tris">
										<%out.println(request.getAttribute("OPTION_TRIS"));%>
									</html:select></div>									</td>
								</tr>
							</table>
							</td>
							<td width="57%" align="left" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" align="right" valign="top">ѭ��������</td>
									<td width="68%" valign="top">
									    <html:text property="rlit" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�Ƿ�Ҫ���ң�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mksb">
										<%out.println(request.getAttribute("OPTION_MKSB"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*��֤��ʽ��</td>
									<td valign="top">
									<div class="sele_div"><html:select property="ammd">
										<%out.println(request.getAttribute("OPTION_AMMD"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�����գ�</td>
									<td valign="top"><html:text styleClass="date" property="epdt"
										title="epdt" readonly="true" /> <html:image src="/IB/images/date.gif" tabindex="1"
										property="more_btn" onclick="openWin('date','epdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*���ڵص㣺</td>
									<td valign="top"><html:text property="pcep" title="pcep" /></td>
								</tr>
								<tr>
									<td width="32%" height="20" align="right" valign="top">���װ���ڣ�</td>
									<td valign="top"><html:text styleClass="date" property="shdt"
										readonly="true" /> <html:image src="/IB/images/date.gif" tabindex="1"
										property="more_btn" onclick="openWin('date','shdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�����ڣ�</td>
									<td valign="top"><html:text property="psbl" maxlength="3" title="psb1" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">����װ�ˣ�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="part">
										<%out.println(request.getAttribute("OPTION_PART"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ת�ˣ�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="tras">
										<%out.println(request.getAttribute("OPTION_TRAS"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">װ�����ޣ�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mkis">
									<%out.println(request.getAttribute("OPTION_OKFG"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�������(42a)��</td>
									<td valign="top"><html:text styleClass="bank" property="dwbk"
										readonly="true" /> <html:image src="/IB/images/winsearch.gif" tabindex="1" 
										property="more_btn" onclick="openWin('bank','dwbk,dwbknm,dwbkad');return false">
										</html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���������ƣ�</td>
									<td valign="top"><html:text property="dwbknm" styleClass="name_width" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��������ַ��</td>
									<td valign="top"><html:textarea property="dwbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�����д��룺</td>
									<td valign="top"><html:text styleClass="bank" property="rmbk"
										readonly="true" /> <html:image src="/IB/images/winsearch.gif" tabindex="1"
										 property="more_btn" onclick="openWin('bank','rmbk,rmbknm,rmbkad');return false">
										 </html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���������ƣ�</td>
									<td valign="top"><html:text property="rmbknm" styleClass="name_width"  readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��������ַ��</td>
									<td valign="top"><html:textarea property="rmbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�Ƿ��ȿ�֤��</td>
									<td valign="top">
									<div class="sele_div"><html:select property="qlfg">
										<%out.println(request.getAttribute("OPTION_QLFG"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�ͻ��˻�һ��</td>
									<td valign="top"><html:text property="mgcltact" maxlength="36" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled"  /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���֣�</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="mgcltcur">
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
									<td height="20" align="right" valign="top">��</td>
									<td valign="top"><html:text property="mgcltamt" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��֤���˺�һ��</td>
									<td valign="top"><html:text property="mgac" maxlength="36" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���֣�</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="accy">
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
									<td height="20" align="right" valign="top">��</td>
									<td valign="top"><html:text property="mgam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�ͻ��˻�����</td>
									<td valign="top"><html:text property="mgcltact2" maxlength="36" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���֣�</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="mgcltcur2">
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
									<td height="20" align="right" valign="top">��</td>
									<td valign="top"><html:text property="mgcltamt2" maxlength="15"  onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��֤���ʺŶ���</td>
									<td valign="top"><html:text property="mgc2" maxlength="36"  onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���֣�</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="acy2">
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
									<td height="20" align="right" valign="top">��</td>
									<td valign="top"><html:text property="mam2" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*���������ڵأ�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="gdtp">
										<%out.println(request.getAttribute("OPTION_GDTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">������ȡ����</td>
									<td valign="top">
									<div class="sele_div"><html:select property="tlfr"  disabled="true" >
										<%out.println(request.getAttribute("OPTION_TLFR"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�շѷ�ʽ��</td>
									<td valign="top">
									<div class="sele_div"><html:select property="chco" title="chco" onchange="switchchco(true)">
										<%out.println(request.getAttribute("OPTION_CHCO"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�շѱұ�</td>
									<td valign="top">
									<div class="sele_div" id="2"><html:select styleClass="coin"
										property="chcy" disabled="true">
										<option></option>
										<option value="01">CNY �����</option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ʵ�տ�֤�����ѣ�</td>
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
									<td height="20" align="right" valign="top">ʵ�տ�֤�ʵ�ѣ�</td>
									<td valign="top"><html:text property="taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15" /></td>
								</tr>
							</table>
							</td>
						</tr>
					</table>
					
					<html:hidden property="errCode" />
					
				 <!--���ݽ���--></div>
				</td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"><table width="100%"  border="0" cellspacing="0" cellpadding="0" class="Scrollbg">
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
		<!--<input type="image" name="save" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">-->
		<input type="image" name="save" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">
		
		&nbsp;&nbsp;
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
		onClick="openReplace('/IB/voucher.do?prid=<bean:write name="openNewForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="openNewForm" property="rfno"/>&no=<bean:write name="openNewForm" property="lcno"/>');return false">&nbsp;&nbsp;
		
		<%if(tabID!=null&&tabID.equals("6")){//����ͼ��ֻ��������Ч���濴��%>
		<input type="image" src='<bean:message key="common.svg" />'
		onClick="window.open('/IB/flowchart.do?id=<bean:write name="openNewForm" property="lcno"/>&prid=<bean:write name="openNewForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//�ڸ��ˡ���Ȩ��ʾ���ؾ��찴ť%>
		
		<input type="image" src='<bean:message key="common.returnUpdate" />' name="back" onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>

		<input type="image" src='<bean:message key="common.returnList" />'
		onClick="openReplace('lcManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="openNewForm" property="prid"/>');return false">

		<%if(tabID!=null&&!tabID.equals("6")){//������Ч�ύ��ť��ʾ%>
		
		</td>
                  </tr>
                  <tr>
                    <td height="30" align="center" valign="middle">
<input type="image" name="go" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">
		<%}%></td>
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

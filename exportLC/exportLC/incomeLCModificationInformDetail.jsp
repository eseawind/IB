<%--��֤�޸�֪ͨ--%>
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
			break;
		default:
			$("chcy").selectedIndex = 1;
			$("caam").disabled=false;
			if(flag)//��ҳ�浼���ʱ�򲻼���ajax
            getCharge("caam","01","100",$("prid").value);
	}
}

function adds(){
var f = document.forms[0];
var blav=parseInt(f.blav.value);//����֤���
var zen = f.adsn.value;//���������

if(f.adam.value==''||f.adam.value==null){
var temp =parseInt("0");
}else{
var temp = parseInt(f.adam.value);//���ӽ��
}

var last= parseInt("0");

if(zen=='+'){
last =blav+ temp;
document.forms[0].aaam.value=last;
}else{
if(blav<temp){
alert("�����Ľ���������֤��");
document.forms[0].adam.value='';
}else{
last =blav- temp;
document.forms[0].aaam.value=last;
 }
}
}

</script>
</head>

<body onLoad="switchchco(false);adds();readOnlyForm(<%=(String)request.getAttribute("tabID")%>)">
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
				<div id="innerTable_div" class="kuangScroll"><!--���ݿ�ʼ--> <html:form action="ELUP.do"
					onsubmit="checkForm(this)" method="post">
					<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<%--������ --%>
						<html:hidden property="prid" />
						<%--��ˮ�� --%>
						<html:hidden property="rfno" />
						<tr>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="40%" height="20" align="right" valign="top"><bean:message key="system.bank.number" /></td>
									<td valign="top"><html:text property="brno" readonly="true" />
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*����֤�ţ�</td>
									<td valign="top"><html:text property="lcno" title="lcno" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">����֤֪ͨ�ţ�</td>
									<td valign="top"><html:text property="adno" readonly="true" />
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�޸Ĵ�����</td>
									<td valign="top"><html:text property="aeno" title="aeno" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�Ƿ�ӡѺ�˷���</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mkts">
										<%out.println(request.getAttribute("OPTION_MKTS"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*��֤�У�</td>
									<td valign="top"><html:text styleClass="bank" property="isbk" title="isbk" readonly="true"/>
									<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','isbk,isbknm,isbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��֤�����ƣ�</td>
									<td valign="top"><html:text styleClass="name_width" property="isbknm" readonly="true" />
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��֤����ַ��</td>
									<td valign="top"><html:textarea property="isbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��֤���ڣ�</td>
									<td valign="top"><html:text styleClass="date" property="isdt"
										readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�����˴��룺</td>
									<td valign="top"><html:text styleClass="clientNum"
										property="clno" readonly="true" /> <html:image src="/IB/images/winsearch.gif"
										tabindex="1" property="more_btn"
										onclick="openWin('clientNum','clno,clnonm,clnoad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���������ƣ�</td>
									<td valign="top"><html:text property="clnonm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��������ַ��</td>
									<td valign="top"><html:textarea property="clnoad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���װ���ڣ�</td>
									<td valign="top"><html:text styleClass="date" property="shdt"
										readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�޸����ڣ�</td>
									<td valign="top"><html:text styleClass="date" property="aedt"
										readonly="true" title="aedt"/> <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','aedt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ԭ֤���֣�</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="lccy" disabled="true">
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
									<td height="20" align="right" valign="top">ԭ֤��</td>
									<td valign="top"><html:text property="lcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" readonly="true" /></td>
								</tr>
							</table>
							</td>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" align="right" valign="top">����֤��</td>
									<td valign="top"><html:text property="blav" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�޸ķ�ʽ��</td>
									<td valign="top">
									<div class="sele_div"><html:select property="aemd" title="aemd">
										<%out.println(request.getAttribute("OPTION_AEMD"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�������ʶ��</td>
									<td valign="top">
									<div class="sele_div"><html:select property="adsn" onchange="adds()">
										<%out.println(request.getAttribute("OPTION_ADSN"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td width="40%" height="20" align="right" valign="top">�޸ĺ���֣�</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="lccy" >
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
									<td height="20" align="right" valign="top">������</td>
									<td valign="top"><html:text property="adam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"  onblur="adds()" onfocus="javascript:this.value=''"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�޸ĺ���</td>
									<td valign="top"><html:text property="aaam" onclick="adds()" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�޸ĺ󸶿�������</td>
									<td valign="top">
									<div class="sele_div"><html:select property="sutp">
										<%out.println(request.getAttribute("OPTION_SUTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���ޣ�</td>
									<td valign="top"><html:text property="tenr" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" maxlength="3" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�µ����գ�</td>
									<td valign="top"><html:text styleClass="date" property="epdt"
										readonly="true" /> <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','epdt');return false"></html:image></td>
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
									<td height="20" align="right" valign="top">�Ƿ�ת�ã�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mktr">
										<%out.println(request.getAttribute("OPTION_MKTR"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ת���У�</td>
									<td valign="top"><html:text styleClass="bank" property="tlbk"
										readonly="true" /> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tlbk,tlbknm,tlbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ת�������ƣ�</td>
									<td valign="top"><html:text styleClass="name_width" property="tlbknm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ת������ַ��</td>
									<td valign="top"><html:textarea property="tlbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ת����ҵ���ţ�</td>
									<td valign="top"><html:text property="tlrf" maxlength="16"/></td>
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
									<td height="20" align="right" valign="top">ʵ�������ѣ�</td>
									<td valign="top"><div id="3"><html:text property="caam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></div></td>
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
					<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="Scrollbg">
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
		onClick="openReplace('/IB/voucher.do?prid=<bean:write name="incomeLCModificationInformDetailForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="incomeLCModificationInformDetailForm" property="rfno"/>&no=<bean:write name="incomeLCModificationInformDetailForm" property="adno"/>');return false">&nbsp;&nbsp;
		
		<%if(tabID!=null&&tabID.equals("6")){//����ͼ��ֻ��������Ч���濴��%>
		<input	type="image" src="<bean:message key="common.svg" />"
		onClick="window.open('/IB/flowchart.do?id=<bean:write name="incomeLCModificationInformDetailForm" property="adno"/>&prid=<bean:write name="incomeLCModificationInformDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//�ڸ��ˡ���Ȩ��ʾ���ؾ��찴ť%>
		
		<input type="image" src='<bean:message key="common.returnUpdate" />' name="back" onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>

		<input	type="image" src="<bean:message key="common.returnList" />"
		onClick="openReplace('exportLCManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="incomeLCModificationInformDetailForm" property="prid"/>');return false">

		<%if(tabID!=null&&!tabID.equals("6")){//������Ч�ύ��ť��ʾ%>
		</td>
                  </tr>
                  <tr>
                    <td height="30" align="center" valign="middle">
		<input type="image" name="go" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">
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

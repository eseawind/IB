<%--�ջ�⸶--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>

<script>
function checkDlam(v){//����鸶���
var f = document.forms[0];

if(f.dlam.value==''||f.dlam.value==null){
var dlam =parseInt("0");//���,�鸶���
}else{
var dlam =parseInt(f.dlam.value);//���,�鸶���
}

if(f.fnam.value==''||f.fnam.value==null){
var fnam =parseInt("0");//�������շѶ�
}else{
var fnam =parseInt(f.fnam.value);//�������շѶ�
}

if(f.fnch.value==''||f.fnch.value==null){
var fnch =parseInt("0");//Ӧ��������
}else{
var fnch =parseInt(f.fnch.value);//Ӧ��������
}

if(f.fntl.value==''||f.fntl.value==null){
var fntl =parseInt("0");//Ӧ���ʵ��
}else{
var fntl =parseInt(f.fntl.value);//Ӧ���ʵ��
}

if(fnam+fnch+fntl>dlam){
alert("�鸶���<�������շѶ�+Ӧ��������+Ӧ���ʵ�� ");

if(v=="fnam"){
document.forms[0].fnam.value='';
return ;
}else if(v=="fnch"){
document.forms[0].fnch.value='';
return ;
}else if(v=="fntl"){
document.forms[0].fntl.value='';
return ;
}
}else{
var temp=dlam-(fnam+fnch+fntl)
document.forms[0].paam.value=temp;
}

}
</script>
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
				<div id="innerTable_div" class="kuangScroll"><!--���ݿ�ʼ--> <html:form action="EBPY.do"
					onsubmit="checkForm(this)" method="post">
					<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="40%" height="20" align="right" valign="top"><bean:message
										key="system.bank.number" /></td>
									<td valign="top"><html:text property="brno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�鸶��ţ�</td>
									<td valign="top"><html:text property="bpno" title="bpno" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��Ʊ�ţ�</td>
									<td valign="top"><html:text property="ivno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�����˴��룺</td>
									<td valign="top"><html:text property="clno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���������ƣ�</td>
									<td valign="top"><html:text property="clnonm" readonly="true" />
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��������ַ��</td>
									<td valign="top"><html:textarea property="clnoad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�鸶���֣�</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="dlcy"  disabled="true">
										<option></option>
										<logic:notEmpty name="OPTION_CYNO">
											<html:option value=""></html:option>
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
									<td height="20" align="right" valign="top">�鸶��</td>
									<td valign="top"><html:text property="dlam"
										onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"
										style="ime-mode:Disabled" maxlength="15" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�����շѽ�</td>
									<td valign="top">
									<html:text indexed="fnam" property="fnam"
										onblur="checkDlam('fnam')"
										onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"
										style="ime-mode:Disabled" maxlength="15" />
										</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�ջ��</td>
									<td valign="top"><html:text property="obac" readonly="true"
										onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"
										style="ime-mode:Disabled" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*Ӧ�������ѣ�</td>
									<td valign="top">
									<html:text indexed="fnch" property="fnch"
										onblur="checkDlam('fnch')" title="fnch" maxlength="15"
										onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"
										style="ime-mode:Disabled" />
										
										</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*Ӧ���ʵ�ѣ�</td>
									<td valign="top">
									<html:text indexed="fntl"  property="fntl"
										onblur="checkDlam('fntl')" title="fntl" maxlength="15"
										onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"
										style="ime-mode:Disabled" />
										</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�۷Ѻ��</td>
									<td valign="top"><html:text property="paam"
										onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"
										style="ime-mode:Disabled" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�ʻ��У�</td>
									<td valign="top"><html:text styleClass="bank" property="acbk"
										title="acbk" readonly="true" />  <html:image
										src="/IB/images/winsearch.gif"	tabindex="1" property="more_btn"
										onclick="openWin('bank','acbk,acbkad');return false" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�ʻ�����ַ��</td>
									<td valign="top"><html:textarea property="acbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���е��ڲ��ʻ���</td>
									<td valign="top"><html:text property="inac" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">Ѻ���ݺţ�</td>
									<td valign="top"><html:text property="none1" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�����ݺţ�</td>
									<td valign="top"><html:text property="none2" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���ʱ��֣�</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="none3" disabled="true">
										<option></option>
										<logic:notEmpty name="OPTION_CYNO">
											<html:option value=""></html:option>
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
									<td height="20" align="right" valign="top">���ʱ���</td>
									<td valign="top"><html:text property="none4" readonly="true"
										onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"
										style="ime-mode:Disabled" /></td>
								</tr>
								<tr>
									<td width="40%" height="20" align="right" valign="top">Ѻ���ʺţ�</td>
									<td valign="top"><html:text property="none5" readonly="true" />
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">������Ϣ��</td>
									<td valign="top"><html:text property="none6" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�ۿ��־��</td>
									<td valign="top"><html:text property="none7" readonly="true" /></td>
								</tr>
							</table>
							</td>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" align="right" valign="top">�⸶/�ۿͻ��ʽ�</td>
									<td valign="top"><html:text property="none8" readonly="true"
										onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"
										style="ime-mode:Disabled" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�⸶��ʽ��</td>
									<td valign="top">
									<div class="sele_div"><html:select property="hkbz">
										<%out.println(request.getAttribute("OPTION_HKBZ"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ԭ����/���ʽ�</td>
									<td valign="top"><html:text property="dcam"
										onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"
										style="ime-mode:Disabled" maxlength="15" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">ԭ����/�����ʺţ�</td>
									<td valign="top"><html:text property="stac" maxlength="36" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">����/�ۻ���ҽ�</td>
									<td valign="top"><html:text property="stam"
										onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"
										style="ime-mode:Disabled" maxlength="15" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�������/�����ʺţ�</td>
									<td valign="top"><html:text property="rmac" maxlength="36" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�����ʣ�</td>
									<td valign="top"><html:text property="exrt" maxlength="15" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�ۻ�ͳ������(����)��</td>
									<td valign="top">
									<div class="sele_div"><html:select property="shxz">
										<%out.println(request.getAttribute("OPTION_SHXZ"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">����ҽ⸶��</td>
									<td valign="top"><html:text property="exam"
										onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"
										style="ime-mode:Disabled" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���׻���ҽ�</td>
									<td valign="top"><html:text property="pdam"
										onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"
										style="ime-mode:Disabled" maxlength="15" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�׻���֣�</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="thcy">
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
									<td height="20" align="right" valign="top">�׻���/�����ʺţ�</td>
									<td valign="top"><html:text property="thac" maxlength="36" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���������ʽ��</td>
									<td valign="top">
									<div class="sele_div"><html:select property="fxkd">
										<%out.println(request.getAttribute("OPTION_FXKD"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">����ۣ�</td>
									<td valign="top"><html:text property="byrt" maxlength="12" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�����ۣ�</td>
									<td valign="top"><html:text property="slrt" maxlength="12" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">��ۣ�</td>
									<td valign="top"><html:text property="exr2" maxlength="12" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�׻���</td>
									<td valign="top"><html:text property="blan"
										onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"
										style="ime-mode:Disabled" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�Ƿ�����ͳ�ƣ�</td>
									<td valign="top">

									<div class="sele_div"><html:select property="strn">
										<%out.println(request.getAttribute("OPTION_STRN"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�Թ�/��˽��</td>
									<td valign="top">

									<div class="sele_div"><html:select property="corp">
										<%out.println(request.getAttribute("OPTION_CORP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">�������ԣ�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="nat">
                                    <%out.println(request.getAttribute("OPTION_NAT"));%>
                                    </html:select></div>
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�걨ͳ�����ͣ�</td>
									<td valign="top">
									<div class="sele_div"><html:select property="natp" title="natp">
										<%out.println(request.getAttribute("OPTION_NATP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���Ҵ��룺</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="cncd">
										<logic:notEmpty name="OPTION_CNTY">
											<logic:iterate id="list" name="OPTION_CNTY"
												type="com.witsoft.hibernate.Country">
												<html:option value="<%=list.getSwcd()%>">
													<bean:write name="list" property="ctnm" />
												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�ջ����ͣ�</td>
									<td valign="top">

									<div class="sele_div"><html:select property="shtp" title="shtp">
										<%out.println(request.getAttribute("OPTION_SHTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*�걨�ţ�</td>
									<td valign="top"><html:text property="sbno" title="sbno"
										maxlength="22" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">���״��룺</td>
									<td valign="top">
                                   <div class="sele_div_198"><html:select styleClass="select_198"
										property="tytp">
										<html:option value=""></html:option>
										<%out.println(request.getAttribute("OPTION_TYTP"));%>
									</html:select></div>
                                   </td>
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
				<td class="innerTable_bottom_x"><html:hidden property="errCode" />
					<html:hidden property="prid" />
					<html:hidden property="rfno" />
					<html:hidden property="adno" />
					<html:hidden property="lcno" />

					<table width="100%" border="0" cellspacing="0" cellpadding="0" class="Scrollbg">
						                  <tr>
                    <td height="15" class="space"></td>
                  </tr>

						<tr>
							<td align="center" valign="bottom" width="100%"><%
		String tabID=(String)request.getAttribute("tabID");
		boolean draftFlag=((Boolean)request.getAttribute("draftFlag")).booleanValue();//����
		boolean letterFlag=((Boolean)request.getAttribute("letterFlag")).booleanValue();//�溯
		
		if(tabID!=null&&Integer.parseInt(tabID)<4){//�ڵ��ġ����졢�ݴ桢���޸�Ŀ¼
		if(letterFlag){
		%> <input type="image" src='<bean:message key="common.addLett" />' name="letter" onClick="submitKind(0,'letter');return false">&nbsp;&nbsp; <%}
      if(draftFlag){%> <input type="image" src='<bean:message key="common.addTele" />'>&nbsp;&nbsp; <%}%> <input type="image" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">&nbsp;&nbsp; <%}else{//���ˡ���Ȩ������ЧĿ¼
	   if(letterFlag){
	    %> <input type="image" name="letter" src='<bean:message key="common.viewLett" />' onClick="submitKind(0,'letter');return false">&nbsp;&nbsp; <%}
      if(draftFlag){%> <input type="image" src='<bean:message key="common.viewTele" />'>&nbsp;&nbsp; <%}
	    }
		
		if(tabID!=null&&(Integer.parseInt(tabID)>3)){//�����б��ھ���(�����ɫ)���濴����
		String step=null;
		if(tabID.equals("6")){
		step="3";//����Ч�ı���
		}else{
		step="2";//���˾��쵫��û�е�����Ч�ı���
		}
		%> <input type="image" src="<bean:message key="common.report" />"
								onClick="openReplace('/IB/voucher.do?prid=<bean:write name="gatheringFundPaymentDetailForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="gatheringFundPaymentDetailForm" property="rfno"/>&no=<bean:write name="gatheringFundPaymentDetailForm" property="bpno"/>');return false">&nbsp;&nbsp;

							<%if(tabID!=null&&tabID.equals("6")){//����ͼ��ֻ��������Ч���濴��%> <input
								type="image" src="<bean:message key="common.svg" />"
								onClick="window.open('/IB/flowchart.do?id=<bean:write name="gatheringFundPaymentDetailForm" property="bpno"/>&prid=<bean:write name="gatheringFundPaymentDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp;
							<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//�ڸ��ˡ���Ȩ��ʾ���ؾ��찴ť%>

							<input type="image" src='<bean:message key="common.returnUpdate" />' name="back" onClick="submitKind(0,'back');return false">&nbsp;&nbsp; <%}%> <input type="image"
								src="<bean:message key="common.returnList" />"
								onClick="openReplace('invoiceGatheringManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="gatheringFundPaymentDetailForm" property="prid"/>');return false">

							<%if(tabID!=null&&!tabID.equals("6")){//������Ч�ύ��ť��ʾ%> <br>
							</td>
                  </tr>
                  <tr>
                    <td height="30" align="center" valign="middle">
							<input type="image" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">
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

<%--����--%>
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
<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td class="outerTable_top_left"></td>
        <td class="outerTable_top_x"></td>
        <td class="outerTable_top_right"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_mainContent">
    
            <!--�ڱ��ʼ-->
            <table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="innerTable_top_left"></td>
                    <td class="innerTable_top_x"></td>
                    <td class="innerTable_top_right"></td>
                </tr>
                <tr>
                    <td class="innerTable_left_y"></td>
                    <td align="center" class="innerTable_main">
                        <div id="innerTable_div"  class="kuangScroll">

                            <!--���ݿ�ʼ-->
                            <html:form action="ICPY.do" onsubmit="checkForm(this)" method="post">
                            <div id="errMsgDiv"><html:errors/></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">���ڴ��պţ�</td>
                                                <td valign="top"><html:text property="icno" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�������ձ�ţ�</td>
                                                <td valign="top"><html:text property="ocno" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">��������ţ�</td>
                                                <td valign="top"><html:text property="ckno" maxlength="10"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">ƾ֤�������ڣ�</td>
                                                <td valign="top">
													<html:text styleClass="date" property="crdt" readonly="true"/>
                                                    <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','crdt');return false"></html:image>
</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">������֣�</td>
                                                <td valign="top">
                                                <div class="sele_div"><html:select styleClass="coin"
										property="dlcy" disabled="true">
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
                                                <td height="20" align="right" valign="top" class="attR">*�����</td>
                                                <td valign="top"><html:text title="dlam" property="dlam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�����з��ã�</td>
                                                <td valign="top"><html:text property="cgam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">ʵ����</td>
                                                <td valign="top"><html:text property="paam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*�ʻ��У�</td>
                                                <td valign="top">
													<html:text styleClass="bank" title="acbk" property="acbk" readonly="true"/>
                                                    <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','acbk,acbkad');return false"></html:image></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�ʻ�����ַ��</td>
                                                <td valign="top"><html:textarea property="acbkad" readonly="true"></html:textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�ʺţ�</td>
                                                <td valign="top"><html:text property="acacno" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�ʻ����ڲ�ʶ��ţ�</td>
                                                <td valign="top"><html:text property="acinac" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�ʻ���SWIFT NO�� </td>
                                                <td valign="top"><html:text property="acswno" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�м��У�</td>
                                                <td valign="top">
													<html:text styleClass="bank" property="mdbk" readonly="true"/>
                                                    <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','mdbk,mdbknm,mdbkad');return false"></html:image></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�м������ƣ�</td>
                                                <td valign="top"><html:text property="mdbknm" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�м��е�ַ��</td>
                                                <td valign="top"><html:textarea property="mdbkad" readonly="true"></html:textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�м���SWIFT��</td>
                                                <td valign="top"><html:text property="mdbkswno" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*��Ϣ�գ�</td>
                                                <td valign="top">
													<html:text styleClass="date" title="dudt" property="dudt" readonly="true"/>
                                                    <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','dudt');return false"></html:image>
												</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�ֻ�֧����</td>
                                                <td valign="top"><html:text property="amc1" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">ԭ���ʺţ�</td>
                                                <td valign="top"><html:text property="acc1" maxlength="36"/></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">�۳�����</td>
                                                <td valign="top"><html:text property="sdam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">���ʣ�</td>
                                                <td valign="top"><html:text property="exrt" maxlength="12"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">������ʺţ�</td>
                                                <td valign="top"><html:text property="acc2" maxlength="36"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">��</td>
                                                <td valign="top"><html:text property="amc2" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�׻�֧����</td>
                                                <td valign="top"><html:text property="amc7" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">����ʺţ�</td>
                                                <td valign="top"><html:text property="acc3" maxlength="36"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">��</td>
                                                <td valign="top"><html:text property="amc3" readonly="true" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">���������ʽ��</td>
                                                <td valign="top">
                                                                <div class="sele_div"><html:select
                                        property="fxkd">
                                        <%out.println(request.getAttribute("OPTION_FXKD"));%>
                                    </html:select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">����ۣ�</td>
                                                <td valign="top"><html:text property="byrt" maxlength="12"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�����ۣ�</td>
                                                <td valign="top"><html:text property="slrt" maxlength="12"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�׻���ʣ�</td>
                                                <td valign="top"><html:text property="exr1" maxlength="12"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�ۻ����ʣ�</td>
                                                <td valign="top"><div class="sele_div"><html:select property="shxz">
										<%out.println(request.getAttribute("OPTION_SHXZ"));%>
									</html:select>
									<div></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*�Թ���˽��</td>
                                                <td valign="top">
                                                  
                                                    <div class="sele_div"><html:select
                                        property="cmpr">
                                        <%out.println(request.getAttribute("OPTION_CMPR"));%>
                                    </html:select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�Ƿ�ƾ�������㣺</td>
                                                <td valign="top">
                                                    
                                                    <div class="sele_div"><html:select
                                        property="mepy">
                                        <%out.println(request.getAttribute("OPTION_MEPY"));%>
                                    </html:select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�Ƿ���ظ��㣺</td>
                                                <td valign="top">
                                               
                                                    <div class="sele_div"><html:select
                                        property="ctpy">
                                        <%out.println(request.getAttribute("OPTION_CTPY"));%>
                                    </html:select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">������ȡ����</td>
                                                <td valign="top">
                                                   <div class="sele_div"><html:select
                                        property="tlfr">
                                        <%out.println(request.getAttribute("OPTION_TLFR"));%>
                                    </html:select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*�շѷ�ʽ��</td>
                                                <td valign="top">
                                                    <div class="sele_div"><html:select
                                        property="chco" onchange="switchchco(true);" title="chco">
                                        <%out.println(request.getAttribute("OPTION_CHCO"));%>
                                    </html:select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�շѱ��֣�</td>
                                                <td valign="top"><div class="sele_div" id="2"><html:select styleClass="coin"
										property="chcy" disabled="true">
										<option></option>
										<option value="01">CNY �����</option>
									</html:select></div></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">ʵ�������ѣ�</td>
                                                <td valign="top"><div id="3"><html:text property="caam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></div></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�ʵ�����ͣ�</td>
                                                <td valign="top">
                                                   <div class="sele_div"><html:select
                                        property="tltp">
                                        <%out.println(request.getAttribute("OPTION_TLTP"));%>
                                    </html:select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">ʵ���ʵ�ѣ�</td>
                                                <td valign="top"><html:text property="taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*�걨�ţ�</td>
                                                <td valign="top"><html:text title="sbno" property="sbno" maxlength="22"/></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            
							    <html:hidden property="errCode" /> 
								<html:hidden  property="prid"/>
								<html:hidden  property="rfno"/>
								<html:hidden  property="brno"/>
								<html:hidden  property="clno"/>
								
                           <!--���ݽ���-->
                        </div>
                    </td>
                    <td class="innerTable_right_y"></td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td class="innerTable_bottom_x"><table width="100%" height="75"  border="0" cellpadding="0" cellspacing="0" class="Scrollbg">
                   <tr>
                    <td height="15" class="space"></td>
                  </tr>
				  <tr>
                   <td align="center" valign="middle" width="100%">
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
		
		if(tabID!=null&&(Integer.parseInt(tabID)>3)){//�����б��ھ���(�����ɫ)���濴����
		String step=null;
		if(tabID.equals("6")){
		step="3";//����Ч�ı���
		}else{
		step="2";//���˾��쵫��û�е�����Ч�ı���
		}
		%>
		<input type="image" src='<bean:message key="common.report" />' onClick="openReplace('/IB/voucher.do?prid=<bean:write name="importAgencyReceiptPaymentDetailForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="importAgencyReceiptPaymentDetailForm" property="rfno"/>&no=<bean:write name="importAgencyReceiptPaymentDetailForm" property="icno"/>');return false">
&nbsp;&nbsp;
		
		<%if(tabID!=null&&tabID.equals("6")){//����ͼ��ֻ��������Ч���濴��%>
		<input type="image" src='<bean:message key="common.svg" />' onClick="window.open('/IB/flowchart.do?id=<bean:write name="importAgencyReceiptPaymentDetailForm" property="icno"/>&prid=<bean:write name="importAgencyReceiptPaymentDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">
&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//�ڸ��ˡ���Ȩ��ʾ���ؾ��찴ť%>
		<input type="image" src='<bean:message key="common.returnUpdate" />' onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>
<input type="image" src='<bean:message key="common.returnList" />' onClick="openReplace('importAgencyReceiptManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="importAgencyReceiptPaymentDetailForm" property="prid"/>');return false">
		<%if(tabID!=null&&!tabID.equals("6")){//������Ч�ύ��ť��ʾ%>
		</td>
                  </tr>
                  <tr>
                    <td height="30" align="center" valign="middle">
		<input type="image" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">
		<%}%>
		</td>
                  </tr>
                  </table></td>
                    <td class="innerTable_bottom_right"></td>
                </tr>
            </table>
            <!--�ڱ����-->
    
        </td>
        <td class="outerTable_right_y"></td>
    </tr>
    <tr>
        <td class="outerTable_bottom_left"></td>
        <td class="outerTable_bottom_x"></td>
        <td class="outerTable_bottom_right"></td>
    </tr>
</table> </html:form>
</body>
</html:html>

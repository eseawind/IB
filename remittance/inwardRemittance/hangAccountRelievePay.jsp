<%@ include file="/common/header.jsp"%>
<%--���ʽ⸶--%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<head>
<title>���ʽ���</title>
<script>
//�ı䡮�걨ͳ�����͡���title����
function checkTitle(titleSta)
{
	var titleS=titleSta; 
    var iObj = document.forms[0].elements;
    for (i = 0; i<iObj.length; i++)
    {
        if(iObj[i].name=="natp"&&titleSta=="Y")
        {
		    iObj[i].title="natp";
            break;
        }else
		  {
			 if(iObj[i].name=="natp"&&titleSta=="N")
				{
					iObj[i].title="";
					break;
				}
			}	
    }
}
</script>
</head>
<body onLoad="switchjffs();switchnat();readOnlyForm(<%=(String)request.getAttribute("tabID")%>)">
<table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_mainContent">
		<table width="100%" height="100%" border="0" align="center"
			cellpadding="0" cellspacing="0">
			<tr>
				<td class="innerTable_top_left"></td>
				<td class="innerTable_top_x"></td>
				<td class="innerTable_top_right"></td>
			</tr>
			<tr>
				<td class="innerTable_left_y">&nbsp;</td>
				<td align="center" valign="middle" class="innerTable_main">
				<div id="innerTable_div"  class="kuangScroll"><!--¼����Ϣ����ʼ--> <html:form action="IRPB.do"
					onsubmit="checkForm(this)" method="post">
					<div id="errMsgDiv"><html:errors /></div>
					<html:hidden property="prid" />
							<html:hidden property="rfno" />
							<html:hidden property="errCode" />
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="50%" valign="top">
							<table width="375" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td align="right" valign="top">�����ţ�</td>
									<td width="261" align="left" valign="middle"><html:text
										readonly="true" maxlength="16" property="brno" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">�������ţ�</td>
									<td align="left" valign="middle"><html:text readonly="true"
										maxlength="16" property="irno" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">�Ƿ�ͬҵת�룺</td>
									<td align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="mkty" disabled="true">
										<html:option value=""></html:option>
										<html:option value="Y">YES</html:option>
										<html:option value="N">NO</html:option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">�������֣�</td>
									<td align="left" valign="middle">
									<div class="sele_div"><html:select styleClass="coin"
										property="cyno"  disabled="true">
										<html:option value=""></html:option>
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
									<td align="right" valign="top">������</td>
									<td align="left" valign="middle"><html:text readonly="true"
										maxlength="15" property="amts"  onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top">��Ϣ�գ�</td>
									<td align="left" valign="middle"><html:text readonly="true"
										maxlength="8" property="vldt" size="8" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">��ʽ��</td>
									<td align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="irtp"   disabled="true">
										<html:option value=""></html:option>
										<html:option value="0">T/T</html:option>
										<html:option value="1">M/T</html:option>
										<html:option value="2">D/D</html:option>
										<html:option value="3">Other</html:option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">�����룺</td>
									<td align="left" valign="middle"><html:text maxlength="16"
										property="dfno" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">�����ҵ���ţ�</td>
									<td align="left" valign="middle"><html:text readonly="true"
										maxlength="16" property="orno" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">����й���</td>
									<td align="left" valign="middle">
									<div class="sele_div"><html:select styleClass="coin"
										property="cncd"   disabled="true">
										<html:option value=""></html:option>
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
									<td align="right" valign="top">����У�</td>
									<td align="left" valign="middle"><html:text readonly="true" maxlength="11"
										property="orbk" />
										<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','orbk,orbknm,orbkad');return false"></html:image>
										</td>
								</tr>
								<tr>
									<td align="right" valign="top">��������ƣ�</td>
									<td align="left" valign="middle"><html:text
										styleClass="name_width" readonly="true" maxlength="35"
										property="orbknm" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">�������ַ��</td>
									<td align="left" valign="middle"><html:textarea cols="35"
										readonly="true" rows="4" property="orbkad"></html:textarea></td>
								</tr>
								<tr>
									<td align="right" valign="top">�������ַ��</td>
									<td align="left" valign="middle"><html:textarea cols="35"
										rows="4" property="pre1"></html:textarea></td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*�Թ�/��˽��</td>
									<td align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										title="corp" property="corp">
										<html:option value="0">�Թ�</html:option>
										<html:option value="1">��˽</html:option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">�������ջ�����ַ��</td>
									<td align="left" valign="middle"><html:textarea cols="35"
										rows="4" property="yhnm"></html:textarea></td>
								</tr>
							</table>
							</td>
							<td width="50%" valign="top">
							<table width="375" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td align="right" valign="top" class="font_red">*�տ��˴��룺</td>
									<td align="left" valign="middle"><html:text readonly="true" maxlength="13"
										title="clno" property="clno" />
										<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('clientNum','clno');return false"></html:image>
										</td>
								</tr>
								<tr>
									<td align="right" valign="top">�տ������ƣ�</td>
									<td align="left" valign="middle"><html:text
										styleClass="name_width" readonly="true" maxlength="60"
										property="clnm" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">�տ�����ַ��</td>
									<td align="left" valign="middle"><html:textarea cols="35"
										readonly="true" rows="4" property="clad"></html:textarea></td>
								</tr>

								<tr>
									<td width="131" align="right" valign="top" class="font_red">*�⸶��ʽ��</td>
									<td width="244" align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										title="jffs" property="jffs" onchange="switchjffs()">
										<html:option value="XH">�ֻ�����</html:option>
										<html:option value="JH">�������</html:option>
										<html:option value="TH">�׻�����</html:option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">�տ����ʺţ�</td>
									<td align="left" valign="middle">
									<html:text readonly="true" maxlength="15" property="stac" />
									<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('accountNum','stac');return false"></html:image>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">�⸶��</td>
									<td align="left" valign="middle"><html:text maxlength="15"
										property="exam"  onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span id="waihuimaimaifangshi" style="#08346B">���������ʽ��</span></td>
									<td align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="dkth">
										<%out.println(request.getAttribute("OPTION_DKTH"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top"><span id="mairujia" style="color:#08346B">����ۣ�</span></td>
									<td align="left" valign="middle"><html:text maxlength="12"
										property="slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span id="maichujia" style="color:#08346B">����ۣ�</span></td>
									<td align="left" valign="middle"><html:text maxlength="12"
										property="byrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span id="jiehuihuinu" style="color:08346B">�����ʣ�</span></td>
									<td align="left" valign="middle"><html:text maxlength="12"
										property="exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top">ת���л����ţ�</td>
									<td align="left" valign="middle"><html:text property="ztbr" />
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">�Ƿ�����ͳ�ƣ�</td>
									<td align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="strn">
										<html:option value=""></html:option>
										<html:option value="Y">YES</html:option>
										<html:option value="N">NO</html:option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">�ջ����ͣ�</td>
									<td align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="shtp">
										<html:option value=""></html:option>
										<html:option value="N">�Թ���λ(N)</html:option>
										<html:option value="U">��˽(U)</html:option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">�걨�ţ�</td>
									<td align="left" valign="middle"><html:text maxlength="22"
										property="sbno" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">���״��룺</td>
									<td align="left" valign="middle">
									<div class="sele_div_198"><html:select styleClass="select_198"
										property="tytp">
										<html:option value=""></html:option>
										<%out.println(request.getAttribute("OPTION_TYTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top"><span id="quyushuxing" style="color:#08346B">�������ԣ�</span></td>
									<td align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="nat" onchange="switchnat()">
										<html:option value=""></html:option>
										<%out.println(request.getAttribute("OPTION_NAT"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red"><div id="shenbaotongjineixing" style="color:#08346B">
									    �걨ͳ�����ͣ�</div></td>
									<td align="left" valign="middle">
									<div class="sele_div_198"><html:select styleClass="select_198" property="natp">
										<html:option value=""></html:option>
										<%out.println(request.getAttribute("OPTION_NATP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">���׸��ԣ�</td>
									<td align="left" valign="middle"><html:textarea cols="35"
										rows="4" property="trmo"></html:textarea></td>
								</tr>
							</table>
							</td>
						</tr>
						
					</table>
				</div>
				</td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"><table width="100%" height="75" border="0" cellpadding="0" cellspacing="0" class="Scrollbg">
 <tr>
                    <td height="15" class="space"></td>
                  </tr>
  <tr>
    <td height="30" colspan="2" align="center" valign="middle">
							<%
		String tabID=(String)request.getAttribute("tabID");
		boolean draftFlag=((Boolean)request.getAttribute("draftFlag")).booleanValue();//����
		boolean letterFlag=((Boolean)request.getAttribute("letterFlag")).booleanValue();//�溯
		
		if(tabID!=null&&Integer.parseInt(tabID)<4){//�ڵ��ġ����졢�ݴ桢���޸�Ŀ¼
		if(letterFlag){
		%> 
		<input type="image" src='<bean:message key="common.addLett" />' onClick="submitKind(0,'letter');return false">
		&nbsp;&nbsp; 
		<%}
      if(draftFlag){%>
      <input type="image" src='<bean:message key="common.addTele" />'>
	   &nbsp;&nbsp; 
	   <%}%> 
		<input type="image" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">
	  &nbsp;&nbsp; 
	  <%}else{//���ˡ���Ȩ������ЧĿ¼
	   if(letterFlag){
	    %>
	    <input type="image" src='<bean:message key="common.viewLett" />' onClick="submitKind(0,'letter');return false">
	    &nbsp;&nbsp; 
		<%}
      if(draftFlag){%>
		<input type="image" src='<bean:message key="common.viewTele" />'>					
		&nbsp;&nbsp; <%}
	    }
		
		if(tabID!=null&&(Integer.parseInt(tabID)>3)){//�����б����ھ���(�����ɫ)���濴����
		String step=null;
		if(tabID.equals("6")){
		step="3";//����Ч�ı���
		}else{
		step="2";//���˾��쵫��û�е�����Ч�ı���
		}
		%>
		<input type="image" src='<bean:message key="common.report" />' onClick="openReplace('/IB/voucher.do?prid=<bean:write name='hangAccountRelievePayActionForm' property='prid'/>&step=<%=step%>&flag=flag&rfno=<bean:write name='hangAccountRelievePayActionForm' property='rfno'/>&no=<bean:write name='hangAccountRelievePayActionForm' property='irno'/>');return false">&nbsp;&nbsp;
		<%if(tabID!=null&&tabID.equals("6")){//����ͼ��ֻ��������Ч���濴��%> 
		<input type="image" src='<bean:message key="common.svg" />' onClick="window.open('/IB/flowchart.do?id=<bean:write name='hangAccountRelievePayActionForm' property='irno'/>&prid=<bean:write name='hangAccountRelievePayActionForm' property='prid'/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp; 
		<%}}
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//�ڸ��ˡ���Ȩ��ʾ���ؾ��찴ť%>
		<input type="image" src='<bean:message key="common.returnUpdate" />' onClick="submitKind(0,'back');return false">
		&nbsp;&nbsp; <%}%>
		<input type="image" src='<bean:message key="common.returnList" />' onClick="openReplace('inwardManageAction.do?tabID=<%=tabID%>&prid=<bean:write name='hangAccountRelievePayActionForm' property='prid'/>');return false">
							<%if(tabID!=null&&!tabID.equals("6")){//������Ч�ύ��ť��ʾ%>
				</td>
                  </tr>
                  <tr>
                    <td height="30" align="center" valign="middle">
		<input type="image" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false"><%}%>
		</td>
  </tr>
</table>
</td>
				<td class="innerTable_bottom_right"></td>
			</tr>
		</table>
		</td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_bottom_left"></td>
		<td class="outerTable_bottom_x"></td>
		<td class="outerTable_bottom_right"></td>
	</tr>
</table>
</body></html:form>
<script language="javascript">
function switchjffs()
{
	switch ($("jffs").value)
	{
		case "JH":
			$("natp").disabled=false;
			$("exrt").disabled=false;
			$("dkth").disabled=true;
			$("slrt").disabled=true;
			$("byrt").disabled=true;
			document.getElementById("waihuimaimaifangshi").style.color="#808080";
			document.getElementById("jiehuihuinu").style.color="#08346B";
			document.getElementById("mairujia").style.color="#808080";
			document.getElementById("maichujia").style.color="#808080";
			break;
		case "XH":
			$("natp").disabled=true;
			$("exrt").disabled=true;
			$("dkth").disabled=true;
			$("slrt").disabled=true;
			$("byrt").disabled=true;
			document.getElementById("waihuimaimaifangshi").style.color="#808080";
			document.getElementById("jiehuihuinu").style.color="#808080";
			document.getElementById("mairujia").style.color="#808080";
			document.getElementById("maichujia").style.color="#808080";
			break;
		case "TH":	
			$("natp").disabled=true;
			$("exrt").disabled=true;
			$("dkth").disabled=false;
			$("slrt").disabled=false;
			$("byrt").disabled=false;
			document.getElementById("waihuimaimaifangshi").style.color="#08346B";
			document.getElementById("jiehuihuinu").style.color="#808080";
			document.getElementById("mairujia").style.color="#08346B";
			document.getElementById("maichujia").style.color="#08346B";
			break;
	}
}

function switchnat()
{
	switch ($("nat").value)
	{
		case "0":
			var shenbaotongjineixingDiv = document.getElementById("shenbaotongjineixing");
			shenbaotongjineixingDiv.innerHTML='<div id="shenbaotongjineixing" style="color:#ff0000">*�걨ͳ�����ͣ�</div>';
			checkTitle("Y");
			$("natp").disabled=false;
			break;
		default:
			var shenbaotongjineixingDiv = document.getElementById("shenbaotongjineixing");
			shenbaotongjineixingDiv.innerHTML='<div id="shenbaotongjineixing" style="color:#808080">�걨ͳ�����ͣ�</div>';
			checkTitle("N");
			$("natp").disabled=true;
			break;
	}
}
</script>

</html:html>
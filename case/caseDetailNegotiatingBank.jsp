<%@ page contentType="text/html; charset=GB2312"%>
<%@ page language="java"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean"
    prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html"
    prefix="html"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
    prefix="logic"%>

<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>
<%--���ʽ��㰸��������--�鸶��ҵ�����--%>
<%--��ҳ�������caseDetailLC.jsp��ȡ����("0")/Զ��("1")ֵ--%>
<html:html>
<head>
<link href="/IB/case/case.css" rel="stylesheet" type="text/css">
    <link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/IB/resources/font-awesome-4.0.3/css/font-awesome.min.css">
<script language="javascript" type="text/javascript" src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript" src="/IB/case/case.js"></script></head>
<body onLoad="checkChc()">
<script language="javascript" for="document" event="onkeydown">
  if(event.keyCode==13)
     event.keyCode=9;
</script>
<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td class="outerTable_top_left"></td>
        <td class="outerTable_top_x"></td>
        <td class="outerTable_top_right"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td valign="top" class="outerTable_mainContent">
            <table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="innerTable_top_left"></td>
                    <td class="innerTable_top_x"></td>
                    <td class="innerTable_top_right"></td>
                </tr>
                <tr>
                    <td class="innerTable_left_y"></td>
                    <td align="center" valign="middle" class="innerTable_main">
	<div id="innerTable_div">
		<!--¼����Ϣ���ʼ-->
	<html:form action="caseDetailNegotiatingBank.do"  method="post">
	
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="11%" align="left" valign="top">&nbsp;&nbsp;<strong>�������ͣ�</strong></td>
        <td width="89%" align="left" valign="top">��֤�����鸶��ҵ�����</td>
      </tr><tr>
        <td width="11%" align="left" valign="top">&nbsp;&nbsp;<strong>������ע��</strong></td>
        <td width="89%" align="left" valign="top">
          ���鸶������Ӧ�Ŀ�֤�к�֪ͨ�еİ������Ϊ��<bean:write name="caseDetailNegotiatingBankActionForm" property="caseId"/>
        </td>
      </tr>
	  <tr>
        <td width="11%" align="left" valign="top">&nbsp;&nbsp;<strong>�������ƣ�</strong></td>
        <td width="89%" align="left" valign="top">
            <label for="detai">
                <input type="text" class="form-control"  id="detai" name="detai" size="60" required="required" autofocus="autofocus"/>
            </label>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">&nbsp;&nbsp;<strong>��������(��)��</strong></td>
        <td align="left" valign="top">
            <label for="grade">
                <input type="number" class="form-control"  id="grade" name="grade"/>
            </label>
        </td>
      </tr>
      <tr>
        <td height="3" colspan="2" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
      </tr>
      <tr>
        <td height="10" colspan="2" align="left" valign="top" ></td>
      </tr>
    </table>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td width="3%" align="center" valign="top">
			<input type="checkbox" name="ebrgCheckbox" id="NE0"  value="ebrg"  onClick="cheinneri(this.checked,'ebrg'),switchcheckbox(this.name,'ibrg'),ebrgtlrf(),disable(),boxebrg()" <%if(map!=null&&map.get("ebrgCheckbox")!=null&&!((String)map.get("ebrgCheckbox")).equals("")) out.print("checked");%>>			</td>
			<td align="left" valign="top">
					   <strong>�鸶�У����ڼĵ��ջ㣭���ڼĵ��Ǽ�</strong><br>
						<div id="ebrg" style="display:none">�������յ�����֤�󣬿�ʼ��������������<html:text styleClass="text_red" maxlength="8" title="ebrg_apdt" property="ebrg_apdt" onclick="openWin('date','ebrg_apdt')" size="8"/>Я����֤�͵��ݵ����������ƣ�<html:text styleClass="text_red" maxlength="30" property="ebrg_bknm" title="ebrg_bknm"  onclick="openWin('bank1','ebrg_bknm')"/>�鸶���鸶���˴��鸶��֤����<html:text styleClass="text_red" maxlength="30" property="ebrg_isbknm" title="ebrg_isbknm"  onclick="openWin('bank1','ebrg_isbknm')"/>��֪ͨ����<html:text styleClass="text_red" maxlength="30" property="ebrg_adbknm" title="ebrg_adbknm"  onclick="openWin('bank1','ebrg_adbknm')"/>��[��/��]
						<span class="selectRedYN">
						<html:select styleClass="selectListRedYN" title="ebrg_mkts" property="ebrg_mkts">
                                <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
						</span>
						&nbsp;Ѻӡ�˷����鸶����
						<html:text styleClass="text_red" maxlength="8" title="ebrg_rvdt" property="ebrg_rvdt" onclick="openWin('date','ebrg_rvdt')" size="8"/>
						������
						<span class="selectRed"><html:select styleClass="selectListRed" title="ebrg_dlcy" property="ebrg_dlcy">
							 <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
						</html:select>
						</span>
						�����
						<html:text styleClass="text_red" maxlength="12" title="ebrg_dlam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" property="ebrg_dlam" size="12"/>
						��<span id="a08">B/L Date
						<html:text styleClass="text_blue" property="ebrg_bldt" onclick="openWin('date','ebrg_bldt'),addId(this.name,'a08')" maxlength="12" size="12"/>
						��</span>��Ʊ��
						<html:text styleClass="text_red" maxlength="12" title="ebrg_ivno" property="ebrg_ivno" size="12"/>
						��<span id="a01">������
						<html:text styleClass="text_blue" maxlength="12" property="ebrg_dtno" size="12" onclick="addId(this.name,'a01')"/>��</span>
						<span id="a02" style="display:none">ת�ú�
						<html:text styleClass="text_blue" maxlength="12" property="ebrg_tlrf" size="12" onclick="addId(this.name,'a02')"/>��</span>
						<span id="a03">[��/��]
						<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ebrg_drmk" onchange="addId(this.name,'a03')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>���������</span>
						����ҵ����Ч��Ϊ<html:text styleClass="text_red" maxlength="8" title="ebrg_epdt" property="ebrg_epdt" onclick="openWin('date','ebrg_epdt')" size="8"/>����������Ϊ<html:text styleClass="text_red" maxlength="8" title="ebrg_psbl" property="ebrg_psbl"/>���˲���������ȡ����
				<span class="selectRedS"><html:select styleClass="selectListRedS" title="ebrg_chfr" property="ebrg_chfr">
                                    <html:option value=""></html:option>
									<logic:iterate id="list" name="OPTION_TLFR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>
						<span id="ebrg_id0">
						���շѷ�ʽΪ
							<span id="a99"><span class="selectRedMS"><html:select styleClass="selectListRedMS" title="ebrg_chco" property="ebrg_chco" onchange="addId(this.name,'a99')">
                               <html:option value=""></html:option>
							    <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                            </html:select>
                            </span>��</span></span>
							�ʵ������Ϊ
							<span id="a04"><span class="selectBlue"><html:select styleClass="selectListBlue" property="ebrg_tltp" onchange="addId(this.name,'a04')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
							</html:select>
                            </span>��</span><span id="a09">TLX Charges CurrencyΪ
						<span class="selectBlue">
                        <html:select styleClass="selectListBlue" property="ebrg_tlcy" onchange="addId(this.name,'a09')">
                             <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                        </html:select>
                        </span>��</span><span id="a05">�ʵ�ѽ��
                            <html:text styleClass="text_blue" maxlength="12" property="ebrg_taam" onclick="addId(this.name,'a05')" onblur="addDot(this)"/>
							��</span></span><span id="a07">��ݹ���
						 <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ebrg_cncd" onchange="addId(this.name,'a07')">
							<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                           </html:select></span></span></span>
						����ɴ˵ǼǺ󣬲������ĺ��溯������֤�С�						</div>              </td>
         </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
            <input type="checkbox" name="ibrgCheckbox" id="NE1" value="ibrg" disabled="disabled"  onClick="cheinneri(this.checked,'ibrg'),checktitle('ebrg_','ibrg'),boxibrg()" <%if(map!=null&&map.get("ibrgCheckbox")!=null&&!((String)map.get("ibrgCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>��֤�У����������������Ǽ�</strong><br>
                    <div id="ibrg" style="display:none">��֤���յ��ӽ����н�����֤�󣬽��������Ǽǣ������֤���Ѿ����������������ô��֤�п��Բ�������֤������ͬ�⣬��֤��֤һ�º󼴸��<span id="i01">�����з���<html:text styleClass="text_blue" maxlength="12" property="ibrg_ngch" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'i01')"/>��</span>
						������<html:text styleClass="text_red" property="ibrg_dlam" title="ibrg_dlam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" maxlength="12" size="12"/>���յ�����<html:text styleClass="text_red" size="8" maxlength="8" property="ibrg_apdt" onclick="openWin('date','ibrg_apdt')"/>��<span id="i02">��ٳж�/��������<html:text styleClass="text_blue" size="8" maxlength="8" property="ibrg_shdt" onclick="openWin('date','ibrg_shdt'),addId(this.name,'i02')"/></span>��<span id="i99">�ᵥ��<html:text styleClass="text_blue" maxlength="12" property="ibrg_blno" size="12" onclick="addId(this.name,'i99')"/></span>���˲������ղ����溯֪ͨ��֤�����ˡ�</div> </td>
        </tr>
    </table>
	<br>
	
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
                <input type="checkbox" name="ebupCheckbox" id="NE2" value="ebup" disabled="disabled" onClick="cheinneri(this.checked,'ebup'),switchcheckbox(this.name,'ibub'),ebrgtlrf(),checktitle('ibrg_','ebup')" <%if(map!=null&&map.get("ebupCheckbox")!=null&&!((String)map.get("ebupCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>�鸶�У����ڼĵ��ջ㣭���ڼĵ��޸�</strong><br>
                    <div id="ebup" style="display:none">�鸶�ж��ѳ��ڼĵ�δ����ĵ��ݽ����޸ĵĵǼǣ��˴��޸��鸶[��/��]
						<span class="selectRedYN"><html:select styleClass="selectListRedYN" title="ebup_mkts" property="ebup_mkts">
                            <html:option value=""></html:option>
                            <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
                        </span>&nbsp;Ѻӡ�˷���
						<span id="b03">�Ƿ񲻷������Ϊ 
						<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ebup_drmk" onchange="addId(this.name,'b03')">
                            <html:option value=""></html:option>
                            <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
                        </span></span>
						<span id="b08">��[��/��]
						<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ebup_ckgt" onchange="addId(this.name,'b08')">
                            <html:option value=""></html:option>
                            <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
                        </span>ƾ��������</span>
						���鸶����
						<html:text styleClass="text_red" maxlength="8" title="ebup_rvdt" property="ebup_rvdt" onclick="openWin('date','ebup_rvdt')" size="8"/>
						������
						<span class="selectRed"><html:select styleClass="selectListRed" title="ebup_dlcy" property="ebup_dlcy">
                             <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                        </html:select>
                        </span>
						�����
						<html:text styleClass="text_red" maxlength="12" title="ebup_dlam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" property="ebup_dlam" size="12"/>
						����Ʊ��
						<html:text styleClass="text_red" maxlength="12" title="ebup_ivno" property="ebup_ivno" size="12"/>
						<span id="b01">��������
						<html:text styleClass="text_blue" maxlength="12" property="ebup_dtno" size="12" onclick="addId(this.name,'b01')"/>
						</span><span id="b02">��ת�ú�
						<html:text styleClass="text_blue" maxlength="12" property="ebup_tlrf" size="12" onclick="addId(this.name,'b02')"/>
						</span>
						���˲���������ȡ����
					<span class="selectRedS"><html:select styleClass="selectListRedS" title="ebup_chfr" property="ebup_chfr">
                                    <logic:iterate id="list" name="OPTION_TLFR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>
						<span id="ebup_id0">
						<span id="b99">���շѷ�ʽΪ
                            <span class="selectRedMS"><html:select styleClass="selectListRedMS" title="ebup_chco" property="ebup_chco">
                                <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
											</logic:iterate>
                            </html:select>
                        </span></span></span>
						<span id="b04">���ʵ������Ϊ
						<span class="selectBlue"><html:select styleClass="selectListBlue" property="ebup_tltp" onchange="addId(this.name,'b04')">
						<html:option value=""></html:option>
						<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select></span></span><span id="b05">���ʵ�ѽ��
                        <html:text styleClass="text_blue" maxlength="12" property="ebup_taam" onclick="addId(this.name,'b05')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
						</span><span id="b07">����ݹ���
						<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ebup_cncd" onchange="addId(this.name,'b07')">
								<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
						</html:select></span>
					</span>����ɴ��޸ĺ�����SWIFT���ķ�����֤�У������溯��ͬ�޸ĵ���һ��ĸ���֤�С�</div>            </td>
        </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
               <input type="checkbox" name="ibubCheckbox" id="NE3" value="ibub" disabled="disabled"  onClick="cheinneri(this.checked,'ibub'),checktitle('ebup_','ibub')" <%if(map!=null&&map.get("ibubCheckbox")!=null&&!((String)map.get("ibubCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>��֤�У���������������</strong><br>
                    <div id="ibub" style="display:none">��֤�н��ڵ����յ����������ύ���鸶�еĵ��ݿ�������[�����������滻ĳ����]���������ύ�µ��ݸ��鸶�У���֤���յ��鸶�м������µ��ݺ��滻���ɵ��ݲ�����&lt;&lt;��������֪ͨ��&gt;&gt;֪ͨ��֤�����ˣ���������Ϊ����Ʊ��
                        <html:text styleClass="text_red" maxlength="12" title="ibub_ivno" property="ibub_ivno" size="12"/>
                        ���ᵥ��
                        <html:text styleClass="text_red" maxlength="12" title="ibub_blno" property="ibub_blno" size="12"/>
                        ����Ʊ���
                        <html:text styleClass="text_red" maxlength="12" title="ibub_dfam" property="ibub_dfam"  onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" size="12"/>
                        ��������
						<html:text styleClass="text_red" maxlength="8" title="ibub_dudt" property="ibub_dudt" onclick="openWin('date','ibub_dudt')" size="8"/>
						��</div>            </td>
        </tr>
    </table>
	<br>
	
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
             <input type="checkbox" name="ibacCheckbox" id="NE4" value="ibac" disabled="disabled" onClick="cheinneri(this.checked,'ibac'),switchcheckbox(this.name,'ebac'),checktitle('ibrg_','ibac'),boxibac()" <%if(map!=null&&map.get("ibacCheckbox")!=null&&!((String)map.get("ibacCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>��֤�У������������ж�</strong><br>
                    <div id="ibac" style="display:none">��֤�������õ����ݺ�û��������֤���·��ֲ����㡢�����㱻���ܡ��Ѿ������������ҵ�񣬼��жң��ж���
						<html:text styleClass="text_red" maxlength="8" title="ibac_dudt" property="ibac_dudt" onclick="openWin('date','ibac_dudt')" size="8"/>
						���������
						<html:text styleClass="text_red" maxlength="8" title="ibac_apdt" property="ibac_apdt" onclick="openWin('date','ibac_apdt')" size="8" onblur="comperDate(document.getElementById('ibac_apdt').value,document.getElementById('ibac_dudt').value,0,'ibac_apdt','�������Ҫ���ڳж���')"/>
						���˲����շѷ�ʽΪ
						<span id="ibac_id0"><span class="selectRedMS">
						<html:select styleClass="selectListRedMS" title="ibac_chco" property="ibac_chco">
                            <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
                        </span>��</span>
						<span id="ibac_tltpY" style="display:">
						�ʵ������Ϊ<span id="c03">
						<span class="selectBlue">
						<html:select styleClass="selectListBlue" property="ibac_tltp" onchange="addId(this.name,'c03')">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
					    </html:select>
                        </span>��</span></span><span id="c04">ʵ���ʷѽ��
                        <html:text styleClass="text_blue" maxlength="12" property="ibac_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'c04')"/>
                        ��</span></span>������ɺ󣬲������ķ����鸶�С�</div>            </td>
        </tr>
    </table><br>
<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
               <input type="checkbox" name="ebtrCheckbox" id="NE5" value="ebtr" disabled="disabled" onClick="cheinneri(this.checked,'ebtr'),switchcheckbox(this.name,'ibpp'),boxebtr()" <%if(map!=null&&map.get("ebtrCheckbox")!=null&&!((String)map.get("ebtrCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>�鸶�У����ڼĵ��ջ㣭���ջ���</strong><br>
                    <div id="ebtr" style="display:none">�鸶�н����ڵ��ݼĳ��󣬳���Ԥ��ʱ����δ�ջ㣬�鸶�л���֤�д��յ��ݿ��
                        ����һ��������15��֮��Զ�ڵ�δ�жҵĻ�߿�֤�о���жң��ѳжҵ�����δ����Ĵ߿�֤�и��ҵ��¼���
                        ����SWIFT����(420\799\999)���͸���֤�У��˲����շѷ�ʽΪ
						<span id="ebtr_id0">
						<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="ebtr_chco" property="ebtr_chco">
                            <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
                        </span>��</span>
						<span id="d03">��ݹ���
						<span class="selectBlueCountry">
						<html:select styleClass="selectListBlueCountry" property="ebtr_cncd" onchange="addId(this.name,'d03')">
                            <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                        </html:select></span></span>��
					<span id="ebtr_tltpY" style="display:">
						�ʵ������Ϊ
						<span id="d04"><span class="selectBlue"><html:select styleClass="selectListBlue" property="ebtr_tltp" onchange="addId(this.name,'d04')">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
									</html:select>
                        </span>��</span><span id="d05">ʵ���ʵ�ѱ���Ϊ
						<span class="selectBlue">
                        <html:select styleClass="selectListBlue" property="ebtr_tlcy" onchange="addId(this.name,'d05')">
                             <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                        </html:select>
                        </span>��</span></span><span id="d06">ʵ���ʷѽ��
                        <html:text styleClass="text_blue" maxlength="12" property="ebtr_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'d06')"/>
                        </span></span>
					����ɴ˵ǼǺ󣬲������ķ�����֤�С�</div>            </td>
        </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
               <input type="checkbox" name="ibppCheckbox" id="NE6" value="ibpp" disabled="disabled" onClick="cheinneri(this.checked,'ibpp'),switchcheckbox(this.name,'ebpy'),checktitle('ebtr_','ibpp')" <%if(map!=null&&map.get("ibppCheckbox")!=null&&!((String)map.get("ibppCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>��֤�У�������������������</strong><br>
                    <div id="ibpp" style="display:none">��֤���յ��鸶�з�����������ĺ��Ȳ����Ҫ���鸶�еĵ��ݼĵ��Ժ�����޲�����֮����֪ͨ���������鸶�и����Ϣ��
						<html:text styleClass="text_red" maxlength="8" title="ibpp_vldt" property="ibpp_vldt" onclick="openWin('date','ibpp_vldt')" size="8"/>
						���տ���Ϊ
						<html:text styleClass="text_red" maxlength="12" title="ibpp_rvbk" property="ibpp_rvbk" onclick="openWin('bank1','ibpp_rvbk')"/>
						��<span id="e01">�տ���֮�ʻ���
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_rabk" onclick="openWin('bank1','ibpp_rabk'),addId(this.name,'e01')"/>
						��</span><span id="e02">�տ����ʺ�
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_raac" onclick="openWinNum('accountNum','ibpp_raac','PCBCCNBJBJX'),addId(this.name,'e02')"/>
						��</span><span id="e03">�����з���
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_ngch" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'e03')"/>
						��</span>�����ʻ���
						<html:text styleClass="text_red" maxlength="12" title="ibpp_acbk" property="ibpp_acbk" onclick="openWin('bank1','ibpp_acbk')"/>
						��<span id="e04">Ѻ����
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_amc1" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e04')"/>
						��</span><span id="e05">��֤����
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_amc2" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e05')"/>
						��</span><span id="e06">3140��Ŀ�ʺ�
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_acc1" onclick="addId(this.name,'e06')"/>
						��</span><span id="e07">ԭ�һ�����
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_amc4" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e07')"/>
						��</span><span id="e08">ԭ���ʺ�
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_acc4" onclick="addId(this.name,'e08')"/>
						��</span><span id="e09">�ۻ������
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_amc5" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e09')"/>
						��</span><span id="e10">�ۻ��ʺ�
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_acc5" onclick="addId(this.name,'e10')"/>
						��</span><span id="e11">ʵ�ʻ���
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e11')"/>
						��</span><span id="e99">�ۻ����
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_exam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e99')"/>
						��</span><span id="e12">�׻������
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_amc6" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e12')"/>
						��</span><span id="e13">���������ʽ
						<span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="ibpp_fxkd" onchange="addId(this.name,'e13')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_FXKD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
											</logic:iterate>
						</html:select>
						</span>��<span id="e14">�׻��ʺ�
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_acc6" onclick="addId(this.name,'e14')"/>
						��</span><span id="e15">�����
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_byft" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e15')"/>
						��</span><span id="e16">������
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e16')"/>
						��</span><span id="e98">�׻����
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_dram" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e98')"/>
						��</span><span id="e17">�ۻ�������
						   <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ibpp_shxz" onchange="addId(this.name,'e17')">
								<html:option value=""></html:option>
								<logic:iterate id="list" name="OPTION_SHXZ">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
								</html:select></span>
						��</span><span id="e18">�Թ�/��˽��
						<span class="selectBlueMS">
						<html:select styleClass="selectListBlueMS" property="ibpp_cmpr" onchange="addId(this.name,'e18')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_CMPR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>
						��</span><span id="e19">[��/��]
						<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ibpp_mepy" onchange="addId(this.name,'e19')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>
						ƾ�������</span><span id="e20">[��/��]
						<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ibpp_ctpy" onchange="addId(this.name,'e20')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>
						 ��ظ��㣬�걨����
						 <html:text styleClass="text_red" maxlength="12" title="ibpp_sbno" property="ibpp_sbno"/>
						��<span id="e21">���״���Ϊ
						<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ibpp_tytp" onchange="addId(this.name,'e21')">
                            <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_TYTP">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%></html:option>
											</logic:iterate>
							</html:select>
						 </span>��</span>
						�˲���������ȡ����
				<span class="selectRedS">
				<html:select styleClass="selectListRedS" title="ibpp_chfr" property="ibpp_chfr">
					<html:option value=""></html:option>
					<logic:iterate id="list" name="OPTION_TLFR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
				</html:select>
				</span>��
				<span id="ibpp_id0">
				�շѷ�ʽΪ</span><span id="e22"> <span class="selectBlueMS">
				<html:select styleClass="selectListBlueMS" property="ibpp_chco" onchange="addId(this.name,'e22')">
					<html:option value=""></html:option>
					<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
				</html:select>
				</span></span>
				��</span>
				 <span id="ibpp_tltpY" style="display:">
				 <span id="e24"></span><span id="e25">�ʵ������Ϊ
				<span class="selectBlue">
				<html:select styleClass="selectListBlue" property="ibpp_tltp" onchange="addId(this.name,'e25')">
					<html:option value=""></html:option>
					<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						  </html:select>
                 </span>��</span></span><span id="e26">
				 �����ʵ��
                 <html:text styleClass="text_blue" maxlength="12" property="ibpp_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e26')"/>
				��</span>���������Ϊ
				<html:text styleClass="text_red" maxlength="12" title="ibpp_ckno" property="ibpp_ckno"/>
				��<span id="e27">ƾ֤��������
				<html:text styleClass="text_blue" maxlength="12" property="ibpp_crdt" onclick="openWin('date','ibpp_crdt'),addId(this.name,'e27')" onblur="comperDate(document.getElementById('ibpp_crdt').value,document.getElementById('ibpp_vldt').value,0,'ibpp_crdt','ƾ֤�������ڲ�������Ϣ��֮ǰ')"/>
				��</span>��ɴ˲����󣬲������ķ����鸶�С�</div>            </td>
        </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
             <input type="checkbox" name="ibrtCheckbox" id="NE7" value="ibrt" disabled="disabled" onClick="cheinneri(this.checked,'ibrt'),switchcheckbox(this.name,'ebrt'),checktitle('ebrj_','ibrt')" <%if(map!=null&&map.get("ibrtCheckbox")!=null&&!((String)map.get("ibrtCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>��֤�У������������˵�</strong><br>
                    <div id="ibrt" style="display:none">�˵����ڵ��ݴ��в����������£���֤�˾ܾ��жһ򸶿��ָʾ��֤�н������˻��鸶�У���������ڿ�֤������Ҫ��֤�н��鸶���ύ�Ľ��ڵ����˻صĲ���������SWIFT����(799\999)���͸��鸶�У�����&lt;&lt;�˵��溯&gt;&gt;��ͬ�˻صĵ���һ��ĸ��鸶�С�</div>            </td>
        </tr>
    </table>
		<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
               <input type="checkbox" name="ebrtCheckbox" id="NE8" value="ebrt" onClick="cheinneri(this.checked,'ebrt'),checktitle('ibrt_','ebrt')" disabled="disabled" <%if(map!=null&&map.get("ebrtCheckbox")!=null&&!((String)map.get("ebrtCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>�鸶�У����ڼĵ��ջ㣭�˵��Ǽ�</strong><br>
                    <div id="ebrt" style="display:none">�յ���֤�е��˵����ĺ��˻صĵ��ݣ��鸶�����˵��Ǽǡ�</div>            </td>
        </tr>
    </table>
		<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
                <input type="checkbox" name="ibdrCheckbox" id="NE9" value="ibdr" disabled="disabled" onClick="cheinneri(this.checked,'ibdr'),switchcheckbox(this.name,'ibdk')" <%if(map!=null&&map.get("ibdrCheckbox")!=null&&!((String)map.get("ibdrCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>��֤�У��������������᲻����Ǽ�</strong><br>
                    <div id="ibdr" style="display:none">���ݴ��в����������£��鸶�и��������˵�Ҫ���Ȳ��ĵ��ݣ������ݲ������Ե籨��ʽ���͸���֤�С��˹������ڿ�֤�еǼ������鸶�еĵ��ݵĵ��᲻���㡣֪ͨ���� <html:text styleClass="text_red" title="ibdr_ardt" property="ibdr_ardt" size="8" maxlength="8" onclick="openWin('date','ibdr_ardt')" />��ҵ��¼��������溯&lt;&lt;���᲻����֪ͨ&gt;&gt;֪ͨ��֤�ˡ�</div></td>
        </tr>
    </table>
		<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
                <input type="checkbox" name="ibdkCheckbox" id="NE10" value="ibdk" disabled="disabled" onClick="cheinneri(this.checked,'ibdk'),checktitle('ibdr_','ebup')" <%if(map!=null&&map.get("ibdkCheckbox")!=null&&!((String)map.get("ibdkCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>��֤�У��������������᲻�������/�ܾ�</strong><br>
                   <div id="ibdk" style="display:none">��֤����ɵ��᲻����ǼǺ󣬶��鸶�е���Ĳ�������лظ�������SWIFT����(752\799\999)���鸶�У�֪ͨ��<span class="selectRedS"><html:select styleClass="selectListRedS" title="ibdk_drrv" property="ibdk_drrv" onchange="drrv(this.options[this.selectedIndex].value)">
				     <html:option value=""></html:option>
									<logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>���ܸõ��ݵĲ����㡣</div>                        </td>
        </tr>
    </table>
		<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
               <input type="checkbox" name="ebacCheckbox" id="NE11" value="ebac" disabled="disabled"  onClick="cheinneri(this.checked,'ebac'),boxebac()" <%if(map!=null&&map.get("ebacCheckbox")!=null&&!((String)map.get("ebacCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>�鸶�У����ڼĵ��ջ㣭�жҵǼ�</strong><br>
                    <div id="ebac" style="display:none">�鸶���յ���֤�еĳжҵ��ĺ󣬰������������жҵǼǡ�</div>            </td>
        </tr>
    </table>
		<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
            <input type="checkbox" name="ibumCheckbox" id="NE12" value="ibum" disabled="disabled"  onClick="cheinneri(this.checked,'ibum'),switchcheckbox(this.name,'ebum')" <%if(map!=null&&map.get("ibumCheckbox")!=null&&!((String)map.get("ibumCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>��֤�У��������������ĳжҵ�����</strong><br>
                    <div id="ibum" style="display:none">��֤�����˳жҺ󣬿�֤������������ĳжҵ����գ����ĵ�����Ϊ
                        <html:text styleClass="text_red" maxlength="8" title="ibum_dudt" property="ibum_dudt" onclick="openWin('date','ibum_dudt')" size="8"/>
                        ��������ɺ�������ķ����鸶�С�</div>            </td>
        </tr>
    </table>
		<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
                   <input type="checkbox" name="ibrjCheckbox" id="NE13" value="ibrj" disabled="disabled" onClick="cheinneri(this.checked,'ibrj'),switchcheckbox(this.name,'ebrj'),boxibrj()" <%if(map!=null&&map.get("ibrjCheckbox")!=null&&!((String)map.get("ibrjCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>��֤�У������������ܳ�/����</strong><br>
                    <div id="ibrj" style="display:none">�Ѿ����������Ǽǵ�����֤ҵ�񣬼���в�����ʱ����֤��������Ȩ��֤�����ܳ�/���������������ɺ󷢵��ĸ��鸶�С�</div>            </td>
        </tr>
    </table>
		<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
              <input type="checkbox" name="ebrjCheckbox" id="NE14" value="ebrj" disabled="disabled" onClick="cheinneri(this.checked,'ebrj'),checktitle('ibrj_','ebrj'),switchcheckbox(this.name,'ibrt')" <%if(map!=null&&map.get("ebrjCheckbox")!=null&&!((String)map.get("ebrjCheckbox")).equals("")) out.print("checked");%>></td>
            <td align="left" valign="top"><strong>�鸶�У����ڼĵ��ջ㣭�ܳж�/����Ǽ�</strong><br>
                    <div id="ebrj" style="display:none">�鸶���յ���֤�еľܳ�/������ĺ����ܳж�/����Ǽ�</div>            </td>
        </tr>
    </table>
		<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
                <input type="checkbox" name="ebnpCheckbox" id="NE15" value="ebnp" disabled="disabled" onClick="cheinneri(this.checked,'ebnp'),checktitle('ibnp_','ebnp')" <%if(map!=null&&map.get("ebnpCheckbox")!=null&&!((String)map.get("ebnpCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>�鸶�У����ڼĵ��ջ㣭�޳�����</strong><br>
                    <div id="ebnp" style="display:none">�鸶���յ���֤�оܸ�/�жҵ��ĺ�����������£�������(������)ָʾ�鸶�п�֤������(������)�����޳�ȡ�õ��ݣ��ڴ˹����������Ǽǣ��˲���������ȡ����
<%--				        <span id="f01"><span class="selectBlueS"><html:select styleClass="selectListBlueS" property="ebnp_tlfr" onchange="switchIdfk('ebnp',this.name),addId(this.name,'f01')">--%>
       				        <span id="f01"><span class="selectBlueS"><html:select styleClass="selectListBlueS" property="ebnp_tlfr">
                            <logic:iterate id="list" name="OPTION_TLFR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
                        </span></span>��
						<span id="f02">�շѷ�ʽΪ
						  <span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="ebnp_chco">
                            <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
                        </span> </span>��
						<span id="f05">��ݹ���
						<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ebnp_cncd" onchange="addId(this.name,'f05')">
                           <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                        </html:select>
						</span></span><span id="f06">
						���ʵ������Ϊ
						<span id="ebnp_tltpY" style="display:">
						<span class="selectBlue"><html:select styleClass="selectListBlue" property="ebnp_tltp" onchange="addId(this.name,'f06')">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
									</html:select>
						</span>��</span></span><span id="f07">
						�ʵ�ѱ���
						<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ebnp_cncd" onchange="addId(this.name,'f07')">
							<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                        </html:select>
						</span></span><span id="f08">
						��ʵ���ʵ�ѽ��
						<html:text styleClass="text_blue" maxlength="12" property="ebnp_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'f08')"/></span>��					</div>            </td>
        </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
                <input type="checkbox" name="ibnpCheckbox" id="NE16" value="ibnp" disabled="disabled" onClick="cheinneri(this.checked,'ibnp'),switchcheckbox(this.name,'ebnp')" <%if(map!=null&&map.get("ibnpCheckbox")!=null&&!((String)map.get("ibnpCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>��֤�У������������޳�����</strong><br>
                <div id="ibnp" style="display:none">��֤�и����鸶�е�ָʾ���ڿ�֤�����˲����������½����ڵ��ݷŸ���֤�ˡ�</div>            </td>
        </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
               <input type="checkbox" name="ebumCheckbox" id="NE17" value="ebum" disabled="disabled"  onClick="cheinneri(this.checked,'ebum'),checktitle('ibum_','ebum'),boxebum()" <%if(map!=null&&map.get("ebumCheckbox")!=null&&!((String)map.get("ebumCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>�鸶�У����ڼĵ��ջ㣭�޸ĳж�����</strong><br>
                <div id="ebum" style="display:none">�鸶���յ���֤�еĸ��ĳжҵ����յ��ĺ󣬰������������޸ĳж����ݲ�����</div>            </td>
        </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
               <input name="ibpyCheckbox" type="checkbox" disabled="disabled" id="NE18" onClick="cheinneri(this.checked,'ibpy'),switchcheckbox(this.name,'ebpy'),boxibpy()" value="ibpy" <%if(map!=null&&map.get("ibpyCheckbox")!=null&&!((String)map.get("ibpyCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>��֤�У���������������</strong><br>
                <div id="ibpy" style="display:none">��֤����֤��֤һ�»�����֤�����в����㵫��֤������ͬ�⸶�������£���֤���������������Ϣ��
						<html:text styleClass="text_red" maxlength="8" title="ibpy_vldt" property="ibpy_vldt" onclick="openWin('date','ibpy_vldt')" size="8"/>
						��<span id="g01">�տ���֮�ʻ���
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_rabk" onclick="openWin('bank1','ibpy_rabk'),addId(this.name,'g01')" />
						��</span><span id="g02">�տ����ʺ�
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_raac" onclick="openWinNum('accountNum','ibpy_raac','PCBCCNBJBJX'),addId(this.name,'g02')"/>
						��</span><span id="g03">�����з���
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_ngch" onclick="addId(this.name,'g03')" onblur="addDot(this)"/>
						��</span>�����ʻ���
						<html:text styleClass="text_red" maxlength="12" title="ibpy_acbk" property="ibpy_acbk" onclick="openWin('bank1','ibpy_acbk')"/>
						��<span id="g04">Ѻ����
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_amc1" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g04')"/>
						��</span><span id="g05">ԭ�һ�����
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_amc4" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g05')"/>
						��</span><span id="g06">ԭ���ʺ�
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_acc4" onclick="addId(this.name,'g06')"/>
						��</span><span id="g07">�ۻ������
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_amc5" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g07')"/>
						��</span><span id="g08">�ۻ��ʺ�
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_acc5" onclick="addId(this.name,'g08')"/>
						��</span><span id="g09">ʵ�ʻ���
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g09')"/>
						��</span><span id="g10">�׻������
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_amc6" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g10')"/>
						��</span><span id="g11">�׻��ʺ�
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_acc6" onclick="addId(this.name,'g11')"/>
						��</span><span id="g12">���������ʽ
						<span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="ibpy_fxkd2" onchange="addId(this.name,'g12')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_FXKD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
											</logic:iterate>
						</html:select>
						</span>
						��</span><span id="g13">�����
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_byft" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g13')"/>
						��</span><span id="g14">������
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g14')"/>
						��</span><span id="g15">�׻����
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_exr1" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g15')"/>
						��</span><span id="g16">�ۻ�����
						 <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ibpy_shxz" onchange="addId(this.name,'g16')">
								<html:option value=""></html:option>
								<logic:iterate id="list" name="OPTION_SHXZ">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
								</html:select></span>
						��</span><span id="g17">�Թ�/��˽��
						<span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="ibpy_cmpr" onchange="addId(this.name,'g17')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_CMPR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>
						��</span><span id="g18">[��/��]
						<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ibpy_mepy" onchange="addId(this.name,'g18')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>ƾ��������</span><span id="g19">
						��[��/��]
						<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ibpy_ctpy" onchange="addId(this.name,'g19')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>
						 ��ظ��㣬</span>�걨����
						 <html:text styleClass="text_red" maxlength="12" title="ibpy_sbno" property="ibpy_sbno"/>
						<span id="g20">�����״���
						<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ibpy_tytp" onchange="addId(this.name,'g20')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_TYTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
											</logic:iterate>
						</html:select>
						</span></span>
				��</span>�˲���������ȡ����
<%--				<span class="selectRedS"><html:select styleClass="selectListRedS" title="ibpy_chfr" property="ibpy_chfr" onchange="switchIdfk('ibpy',this.name),addId(this.name,'g20')">--%>
				<span class="selectRedS"><html:select styleClass="selectListRedS" title="ibpy_chfr" property="ibpy_chfr">
					<logic:iterate id="list" name="OPTION_TLFR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
				</html:select>
				</span>��
				<span id="ibpy_id0">
				�շѷ�ʽΪ
				 <span class="selectRedMS"><html:select styleClass="selectListRedMS" title="ibpy_chco" property="ibpy_chco">
					<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
				</html:select>
				</span>
				��<span id="ibpy_tltpY" style="display:"><span id="23">�ʵ������Ϊ
				<span class="selectBlue"><html:select styleClass="selectListBlue" property="ibpy_tltp" onchange="addId(this.name,'g23')">
				<html:option value=""></html:option>
				<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
				</html:select>
                 </span>��</span></span></span><span id="g24">
				 �����ʵ��
                 <html:text styleClass="text_blue" maxlength="12" property="ibpy_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g24')"/>
				��</span><span id="g25">���������Ϊ
				<html:text styleClass="text_blue" maxlength="12" property="ibpy_ckno" onclick="addId(this.name,'g25')"/>
				��</span><span id="g26">ƾ֤��������<html:text styleClass="text_blue" maxlength="12" property="ibpy_crdt" onclick="openWin('date','ibpy_crdt'),addId(this.name,'g26')"/>��</span>��ɴ˲����󣬲������ķ����鸶�С�</div> </td>
        </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
                <input name="ebpyCheckbox" type="checkbox" disabled="disabled" id="NE19" onClick="cheinneri(this.checked,'ebpy')" value="ebpy" <%if(map!=null&&map.get("ebpyCheckbox")!=null&&!((String)map.get("ebpyCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>�鸶�У����ڼĵ��ջ㣭�ջ�⸶</strong><br>
                <div id="ebpy" style="display:none">�鸶���յ���֤�еĸ�����ĺ����ջ�⸶�������շѽ��
						  <span id="h01"><html:text styleClass="text_blue" maxlength="12" property="ebpy_fnam" onclick="addId(this.name,'h01')" onblur="addDot(this)"/>
						��</span>
						 Ӧ��������
						<html:text styleClass="text_red" maxlength="12" title="ebpy_fnch" 
						onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"  property="ebpy_fnch" onblur="addDot(this)"/>��
						 Ӧ���ʵ��
						<html:text styleClass="text_red" maxlength="12" title="ebpy_fntl" 
						onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"  property="ebpy_fntl" onblur="addDot(this)"/>
						���ʻ���
						<html:text styleClass="text_red" maxlength="12" title="ebpy_acbk" property="ebpy_acbk" onclick="openWin('bank1','ebpy_acbk')"/>
						���⸶��ʽ<span id="h03">
						<span class="selectBlue"><html:select styleClass="selectListBlue" property="ebpy_jffs" onchange="switchjffsts('ebpy_jffs'),addId(this.name,'h03')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_HKBZ">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
							</html:select>
						</span>��</span>
						 <span id="h04" style="display:none">ԭ������/���ʽ��Ϊ
						<html:text styleClass="text_blue" maxlength="12" property="ebpy_dcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'h04')"/>
						��</span><span id="h05" style="display:none">ԭ������/�����ʺ�Ϊ
						<html:text styleClass="text_blue" maxlength="12" property="ebpy_stac" onclick="addId(this.name,'h05')"/>
						��</span>				
						<span id="h06" style="display:none">����/�ۻ���ҽ��Ϊ<html:text styleClass="text_blue" maxlength="12" property="ebpy_stam" onclick="addId(this.name,'h06')" onblur="addDot(this)"/>
						��</span><span id="h07" style="display:none">�������/�����ʺ�Ϊ
						<html:text styleClass="text_blue" maxlength="12" property="ebpy_rmac" onclick="addId(this.name,'h07')"/>
						��</span><span id="h08" style="display:none">������Ϊ
						<html:text styleClass="text_blue" maxlength="12" property="ebpy_exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'h08')"/>
						��</span><span id="h09" style="display:none">�ۻ�ͳ������(����)Ϊ
						 <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ebpy_shxz" onchange="addId(this.name,'h09')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_SHXZ">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
										</html:select></span>��</span>
					<span id="h10" style="display:none">���׻���ҽ��Ϊ
					<html:text styleClass="text_blue" maxlength="12" property="ebpy_pdam" onclick="addId(this.name,'h10')" onblur="addDot(this)"/>
						��</span><span id="h11" style="display:none">�׻����Ϊ
						<span class="selectBlue"><html:select styleClass="selectListBlue" property="ebpy_thcy" onchange="addId(this.name,'h11')">
							 <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
						</html:select>
						</span></span><span id="h12" style="display:none">
						���׻���/�����ʺ�Ϊ
						<html:text styleClass="text_blue" maxlength="12" property="ebpy_thac" onclick="addId(this.name,'h12')"/>
						��</span>
						<span id="h13" style="display:none">���������ʽΪ
						 <span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="ebpy_fxkd" onchange="swiftIdYNXJ(this.name),addId(this.name,'h13')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_FXKD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select></span>��</span>
						<span id="h14" style="display:none">���Ϊ<html:text styleClass="text_blue" maxlength="12" property="ebpy_exr2" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'h14')"/>��</span><span id="h15" style="display:none">������Ϊ<html:text styleClass="text_blue" maxlength="12" property="ebpy_slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'h15')"/>��</span>
						<span id="h16" style="display:none">�����Ϊ<html:text styleClass="text_blue" maxlength="12" property="ebpy_byft" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'h16')"/>��</span>						
						<span id="h17">[��/��]<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ebpy_strn" onchange="addId(this.name,'h17'),shewaitongji(this.name)">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_LGFG">
								<%String[] value = (String[]) list;%>
								<html:option value="<%=value[1]%>">
									<%=value[0]%>								</html:option>
							</logic:iterate>
						</html:select></span>����ͳ�ƣ�</span>
						<span id="h18" style="display:none">�Թ���˽Ϊ
						 <span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="ebpy_corp" onchange="addId(this.name,'h18')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_CMPR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>��</span>
						<span id="h19">��������Ϊ
						<span class="selectBlueS"><html:select styleClass="selectListBlueS" property="ebpy_nat" onchange="addId(this.name,'h19')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_NAT">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select></span>��</span>
					   <span id="ebpy_id0" style="display:">�걨ͳ������Ϊ
					   <span class="selectRedCountry"><html:select styleClass="selectListRedCountry" title="ebpy_natp" property="ebpy_natp">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_NATP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select></span>��</span></span>
						<span id="h20">���Ҵ���<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ebpy_cncd" onchange="addId(this.name,'h20')">
                            <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
							</html:select>
						 </span></span>���ջ�����Ϊ<span class="selectRed"><html:select styleClass="selectListRed" title="ebpy_shtp" property="ebpy_shtp">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_SHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate></html:select>
						</span>���걨��Ϊ<html:text styleClass="text_red" maxlength="12" title="ebpy_stno" property="ebpy_stno"/>��<span id="h21">���״���Ϊ
						<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ebpy_tytp" onchange="addId(this.name,'h21')">
                            <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_TYTP">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%></html:option>
											</logic:iterate>
							</html:select>
						 </span>��</span></div></td>
        </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
               <input type="checkbox" name="ibrbCheckbox" id="NE20" value="ibrb" disabled="disabled" onClick="cheinneri(this.checked,'ibrb')" <%if(map!=null&&map.get("ibrbCheckbox")!=null&&!((String)map.get("ibrbCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>��֤�У������������ŵ�</strong><br>
     <div id="ibrb" style="display:none">��֤�н���֤������ͬ�⸶����ѳжһ��޳������ĵ��ݽ�����֤�����˲��Ǽǡ�</div>            </td>
        </tr>
    </table>
            
           
	</div>
</td>
<td class="innerTable_right_y"> </td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td align="center" class="innerTable_bottom_x"> <input type="hidden" name="NEH" id="NEH" value="">
            <input type="hidden" name="LCHVAL" id="LCHVAL" value="">
			<input type="hidden" name="idPS" id="idPS" value="">

            <button class="btn btn-primary" onclick="checkType('NEH','NE');return false" type="submit">
                <i class="fa fa-plus fa-2x"></i>����
            </button>
			&nbsp;&nbsp;&nbsp;&nbsp;
            <button class="btn btn-primary" onclick="openReplace('cases.do?flag=list');return false">
                <i class="fa fa-level-up fa-2x"></i>����
            </button>

			<html:hidden property="aveValue"/>
			<html:hidden value="02" property="type"/>
			<html:hidden property="idM"/>
			<html:hidden value="�鸶��ҵ�����" property="name"/>
			<html:hidden value="submit" property="flag"/>
			<html:hidden property="lc_lcupsutp"/>
			<html:hidden property="lc_lctp"/>
			<html:hidden property="lc_tlbk"/>
			<html:hidden property="caseId"/>
			<html:hidden property="id"/>	</td>
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
</body>	
</html:form>
<script>
function shewaitongji(operation)
{//�Ƿ�����ͳ��
var operationType=operation;
var operationType=$(operationType).value;
switch(operationType)
{
	case "0":
		$("h18").style.display="";
		break;
	case "1"://1-no
		$("h18").style.display="none";
		$("ebpy_corp").value="";
		delId("h18");
		break;
	}
}

function swiftIdYNXJ(operation)
{//ѯ���Ƽ�
	var operationType=document.getElementById(operation).value;
	switch(operationType)
	{
		case "2":
			$("h14").style.display="";
			$("h15").style.display="none";
			$("h16").style.display="none";
			$("ebpy_slrt").value="";
			$("ebpy_byft").value="";
			delId("h15");
			delId("h16");
			break;
		case "3":
			$("h14").style.display="none";
			$("ebpy_exr2").value="";
			delId("h14");
			$("h15").style.display="";
			$("h16").style.display="";
			break;
		default: 
			$("h14").style.display="none";
			$("ebpy_exr2").value="";
			delId("h14");
			$("h15").style.display="none";
			$("h16").style.display="none";
			$("ebpy_slrt").value="";
			$("ebpy_byft").value="";
			delId("h15");
			delId("h16");
			break;
	}
}
	
function switchjffsts(objectJffs)
{//�жϽ⸶��ʽΪԭ������/����,���ۻ�����/����,�׻�����/����	
	var objectjffsType=document.getElementById(objectJffs).value;
	switch(objectjffsType)
	{
	case "1":// "ԭ������/����", "1"
		$("h04").style.display="";//ԭ������/����
		$("h05").style.display="";//ԭ������/����
		$("h06").style.display="none";//���ۻ�����/����
		$("h07").style.display="none";//���ۻ�����/����
		$("h08").style.display="none";//���ۻ�����/����
		$("h09").style.display="none";//���ۻ�����/����
		$("h13").style.display="none";//���������ʽ
		$("ebpy_stam").value="";
		$("ebpy_rmac").value="";
		$("ebpy_exrt").value="";
		$("ebpy_shxz").value="";
		$("ebpy_fxkd").value="";
		delId("h06");
		delId("h07");
		delId("h08");
		delId("h09");
		$("h10").style.display="none";//�׻�����/����
		$("h11").style.display="none";//�׻�����/����
		$("h12").style.display="none";//�׻�����/����
		$("ebpy_pdam").value="";
		$("ebpy_thcy").value="";
		$("ebpy_thac").value="";
		delId("h10");
		delId("h11");
		delId("h12");
		delId("h13");
		break;
	case "2":// "���ۻ�����/����", "2" 
		$("h04").style.display="none";//ԭ������/����
		$("h05").style.display="none";//ԭ������/����
		$("ebpy_dcam").value="";
		$("ebpy_stac").value="";
		delId("h04");
		delId("h05");
		$("h06").style.display="";//���ۻ�����/����
		$("h07").style.display="";
		$("h08").style.display="";
		$("h09").style.display="";
		$("h10").style.display="none";//�׻�����/����
		$("h11").style.display="none";
		$("h12").style.display="none";
		$("h13").style.display="none";//���������ʽ
		$("ebpy_pdam").value="";
		$("ebpy_thcy").value="";
		$("ebpy_thac").value="";
		$("ebpy_fxkd").value="";
		delId("h10");
		delId("h11");
		delId("h12");
		delId("h13");
		break;
	case "3"://"�׻�����/����", "3"
		$("h04").style.display="none";//ԭ������/����
		$("h05").style.display="none";
		$("ebpy_dcam").value="";
		$("ebpy_stac").value="";
		delId("h04");
		delId("h05");
		$("h06").style.display="none";//���ۻ�����/����
		$("h07").style.display="none";
		$("h08").style.display="none";
		$("h09").style.display="none";
		$("ebpy_stam").value="";
		$("ebpy_rmac").value="";
		$("ebpy_exrt").value="";
		$("ebpy_shxz").value="";
		delId("h06");
		delId("h07");
		delId("h08");
		delId("h09");
		$("h10").style.display="";//�׻�����/����
		$("h11").style.display="";
		$("h12").style.display="";
		$("h13").style.display="";
		break;
	default:// "��ͻ���", "4" ,"�ۿͻ���", "5"
/*		$("h04").style.display="none";//ԭ������/����
		$("h05").style.display="none";
		$("ebpy_dcam").value="";
		$("ebpy_stac").value="";
		delId("h04");
		delId("h05");
		$("h06").style.display="none";//���ۻ�����/����
		$("h07").style.display="none";
		$("h08").style.display="none";
		$("h09").style.display="none";
		$("ebpy_stam").value="";
		$("ebpy_rmac").value="";
		$("ebpy_exrt").value="";
		$("ebpy_shxz").value="";
		delId("h06");
		delId("h07");
		delId("h08");
		delId("h09");
		$("h10").style.display="";//�׻�����/����
		$("h11").style.display="";
		$("h12").style.display="";
		break;
*/	}
}

function ebrgtlrf()
{//�����ת���У�����ת�ú�
	var valuestate=	document.forms[0].lc_lctp.value;
	if(valuestate=='1')
	{
		//$("ebrg_tlrf").value=document.forms[0].lc_tlbk.value;
		//$("ebup_tlrf").value=document.forms[0].lc_tlbk.value;
		$("a02").style.display="";
		$("b02").style.display="";
	}else{
		$("a02").style.display="none";
		$("b02").style.display="none";
		$("ebrg_tlrf").value="";
		$("ebup_tlrf").value="";
		delId("a02");
		delId("b02");
	}
}


function boxebrg()
{
	var valuestate=document.forms[0].lc_lcupsutp.value;
	if(valuestate=="0"&&$("ebrgCheckbox").checked)
	{
		$("ebtrCheckbox").disabled=false;
	}else{
		$("ebtrCheckbox").checked="";
		$("ebtrCheckbox").disabled=true;
		$("ebtr").style.display="none";
		$("ibppCheckbox").checked="";
		$("ibppCheckbox").disabled=true;
		$("ibpp").style.display="none";
	}
}

function boxibrg()
{//�����Ǽ�
var valuestate=document.forms[0].lc_lcupsutp.value;
if($("ibrgCheckbox").checked)
   {
		$("ebtrCheckbox").disabled=true;
		$("ibdrCheckbox").disabled=false;
		$("ebupCheckbox").disabled=false;
		$("ibrjCheckbox").disabled=false;
		$("ibnpCheckbox").disabled=false;
		$("ibrgCheckbox").disabled=false;
		$("ibrgCheckbox").checked="checked";
		$("ibrg").style.display="";
		switchcheckbox('ebupCheckbox','ibub');//���ڼĵ��޸�-����
		if(valuestate==0)
		{
			$("ibpyCheckbox").disabled=false;//����-���
		    boxibpy(); 
			$("ibrbCheckbox").disabled=true;//���ڲ��ɷŵ�
		}else
		{
			$("ibacCheckbox").disabled=false;//Զ��-�жң�
			$("ibrbCheckbox").disabled=false;//Զ�ڿɷŵ�
			switchcheckbox('ibrgCheckbox','ibrb');//Զ��-�ŵ�
		} 
   }else {
		disable();
	    if(valuestate==0){
	    	$("ebtrCheckbox").disabled=false;
		}
  } 
}

function boxebac()
{//�жҵǼ�
	if($("ebacCheckbox").checked)
     { 
		 $("ibpyCheckbox").disabled=false;//����
		 if($("ibpyCheckbox").checked)
		 {
		  switchcheckbox('ibpyCheckbox','ebpy');//����-�ջ�⸶
		  }else{ 
		  switchcheckbox('ebacCheckbox','ibum');//�жҵǼ�-���ĳжҵ�����
		  switchcheckbox('ebacCheckbox','ibpy');//�жҵǼ�-����
		  }	
	}  
}


function boxebum()
{//�޸ĳж�����
	if($("ebumCheckbox").checked)
     { 
		 if(!$("ibpyCheckbox").checked)
		 {
		  switchcheckbox('ebumCheckbox','ibpy');//�жҵǼ�-����
	      }
	}	  
}

function boxebtr()
{//���ջ���
    if($("ebtrCheckbox").checked)
	{
		disable();
    	$("ibrjCheckbox").disabled=true;//�ܳ�/����
		$("ibnpCheckbox").disabled=true;//�޳�����
		$("ibrgCheckbox").disabled=true;//�޳�����
		$("ibppCheckbox").disabled=false;//��������
		if($("ibppCheckbox").checked){
		    switchcheckbox('ibppCheckbox','ebpy');//��������-�ջ�⸶
	    }
	}else{
		$("ibppCheckbox").disabled=true;//��������
		$("ibrgCheckbox").disabled=false;//�����Ǽ�
		boxibrg();
	}
}

function boxibpy()
{//����
	if($("ibpyCheckbox").checked){
		switchcheckbox('ibpyCheckbox','ebpy');//����-�ջ�⸶
	}
}


function boxibac()
{//�ж�
    if($("ibacCheckbox").checked)
	{
	   	$("ebtrCheckbox").disabled=true;//���ջ���
		$("ibpyCheckbox").disabled=true;//����
		$("ibrjCheckbox").disabled=true;//�ܳ�/����
		$("ibnpCheckbox").disabled=true;//�޳�����
		boxebac();//�жҵǼ�
	}
}

function boxibrj()
{//�ܳ�/����
    if($("ibrjCheckbox").checked)
	{
	   	$("ebtrCheckbox").disabled=true;//���ջ���
		$("ibpyCheckbox").disabled=true;//����
		$("ibacCheckbox").disabled=true;//�ж�
		$("ibnpCheckbox").disabled=true;//�޳�����
	}
}

function cheinneri(cha1,cha2)
{//�����ǰ��ѡ��ѡ���ж���һ�������еı�ѡ���Ƿ�ȫ����������Ӧ�Ĳ������ʾ��
	var cha11=cha1;
	var cha22=cha2;
	var prid=cha22+"_";
	if(cha11)
	{
		$(cha22).style.display="";
	}else{
	//������Ӧ�㲻����ʾ���Ҵ˲��µı��ؼ�ֵ��Ϊ��
		$(cha22).style.display="none";
		cheAll(prid);
	}
}

function checktitle(prids,ids)
{//����title��Ϊ��ѡ�û������������Ĳ���
/*  var iObj = document.forms[0].elements;
  var len=iObj.length;
  for (var i=0;i<len;i++)
  {
	if(iObj[i].title.substr(0,5)==prids&&iObj[i].value.Trim()=="")
	 {
		$(ids+"Checkbox").checked=""; 
		alert("����д������һ�������к�ɫ�����");
		iObj[i].focus();
		return false
	   }
	}
	return true;*/
}   
	
function checkType(hiddenobject,objectId)
	{
       if(checkGrade()){
 		var hiddenobjectname=hiddenobject;
		var objectSource=objectId;
		var checkboxId=document.getElementsByTagName("input");
		var loopLength=checkboxId.length;
		var idNum=0;
		var charId=new String();
		var prid;
		$(hiddenobjectname).value="";
		$("LCHVAL").value="";
		for(num=0;num<loopLength;num++)
		  {
		   if(checkboxId[num].type=="checkbox")
				{
				   if(checkboxId[num].checked)
					   {
						 $(hiddenobjectname).value+=(objectSource+idNum+",");
						 $("LCHVAL").value+=$(objectSource+idNum).value+"@";
						}
					else
					   {//�����ѡ��ûѡ�����Ӧ��ı��ؼ�ֵȫΪ�գ�
						  prid=checkboxId[num].name.substr(0,4);
						  cheAll(prid);
						   }
				   idNum++;
				}
		  }
		//charId=$(hiddenobjectname).value;//�õ����β�����ѡ�е�checkbox��id����;
		//charIdVAL=$("LCHVAL").value;//�õ����β�����ѡ�е�checkboxr��value����;
		cheId();
		//return [charId,charIdVAL];
        getAveValue($('grade').value,$('LCHVAL').value);
		document.forms[0].submit();
		}else{
		return false;
		}
	}
	
	
	function onLoadCheck(hiddenobject,objectId)
	{
		var hiddenobjectname=hiddenobject;
		var objectSource=objectId;
		var checkboxId=document.getElementsByTagName("input");
		var loopLength=checkboxId.length;
		var idNum=0;
		var charId=new String();
		var prid;
		$(hiddenobjectname).value="";
		$("LCHVAL").value="";
		for(num=0;num<loopLength;num++)
		  {
		   if(checkboxId[num].type=="checkbox")
				{
				   if(checkboxId[num].checked)
					   {
						 $(hiddenobjectname).value+=(objectSource+idNum+",");
						 $("LCHVAL").value+=$(objectSource+idNum).value+"@";
						}
					else
					   {//�����ѡ��ûѡ�����Ӧ��ı��ؼ�ֵȫΪ�գ�
						  prid=checkboxId[num].name.substr(0,4);
						  cheAll(prid);
						   }
				   idNum++;
				}
		  }
		charId=$(hiddenobjectname).value;//�õ����β�����ѡ�е�checkbox��id����;
		charIdVAL=$("LCHVAL").value;//�õ����β�����ѡ�е�checkboxr��value����;
		cheId();
		return [charId,charIdVAL];
	}
	
	


function disable()
{
	$("ibdrCheckbox").disabled=true;
	$("ibdkCheckbox").disabled=true;
	$("ebupCheckbox").disabled=true;
	$("ibubCheckbox").disabled=true;
	$("ibrbCheckbox").disabled=true;
	$("ibacCheckbox").disabled=true;
	$("ebacCheckbox").disabled=true;
	$("ibumCheckbox").disabled=true;
	$("ebumCheckbox").disabled=true;
	$("ibpyCheckbox").disabled=true;
	//$("ebpyCheckbox").disabled=true;
	//$("ebtrCheckbox").disabled=true;
	//$("ibppCheckbox").disabled=true;
	$("ibrjCheckbox").disabled=true;
	$("ebrjCheckbox").disabled=true;
	$("ibrtCheckbox").disabled=true;
	$("ebrtCheckbox").disabled=true;
	$("ibnpCheckbox").disabled=true;
	$("ebnpCheckbox").disabled=true;
	
	$("ibdrCheckbox").checked="";
	$("ibdkCheckbox").checked="";
	$("ebupCheckbox").checked="";
	$("ibubCheckbox").checked="";
	$("ibrbCheckbox").checked="";
	$("ibacCheckbox").checked="";
	$("ebacCheckbox").checked="";
	$("ibumCheckbox").checked="";
	$("ebumCheckbox").checked="";
	$("ibpyCheckbox").checked="";
	//$("ebpyCheckbox").checked="";
	//$("ebtrCheckbox").checked="";
	//$("ibppCheckbox").checked="";
	$("ibrjCheckbox").checked="";
	$("ebrjCheckbox").checked="";
	$("ibrtCheckbox").checked="";
	$("ebrtCheckbox").checked="";
	$("ibnpCheckbox").checked="";
	$("ebnpCheckbox").checked="";
	
	$("ibdr").style.display="none";
	$("ibdk").style.display="none";
	$("ebup").style.display="none";
	$("ibub").style.display="none";
	$("ibrb").style.display="none";
	$("ibac").style.display="none";
	$("ebac").style.display="none";
	$("ibum").style.display="none";
	$("ebum").style.display="none";
	$("ibpy").style.display="none";
	//$("ebpy").style.display="none";
	//$("ebtr").style.display="none";
	//$("ibpp").style.display="none";
	$("ibrj").style.display="none";
	$("ebrj").style.display="none";
	$("ibrt").style.display="none";
	$("ebrt").style.display="none";
	$("ibnp").style.display="none";
	$("ebnp").style.display="none";
}

function drrv(selectValue)
{
	switch(selectValue)
	{
	  case "0"://����-�ɼ�������
		boxibrg();
	    break;
	  case "1"://�ܾ�-��������
	   	$("ebupCheckbox").disabled=true;//���ڼĵ��޸�
	   	//$("ebtrCheckbox").disabled=true;//���ջ���
		$("ibpyCheckbox").disabled=true;//����
		$("ibacCheckbox").disabled=true;//�ж�
		$("ibrjCheckbox").disabled=true;//�ܳ�/����
		$("ibrbCheckbox").disabled=true;//�ŵ�
		$("ibnpCheckbox").disabled=false;//�޳�����
	    break;
	}
}


function checkChc()
{//��ʼ��
	cheId();//�����Ǳ�ѡ���id����
	cheLoa();//ȡ���ϴβ����У���ѡ�е�checkbox�����Ұ���Ӧ����ɿ�ѡ��
	cheinneri(fir("NE0"),"ebrg");
	switchcheckbox('ebrgCheckbox','ibrg');
	switchcheckbox('ibdrCheckbox','ibdk');//���᲻����Ǽǣ�
	switchcheckbox('ibacCheckbox','ebac');//�ж�-�жҵǼǣ�
	switchcheckbox('ibumCheckbox','ebum');//���ĳжҵ�����-�޸ĳж�����
	switchcheckbox('ibnpCheckbox','ebnp');//�޳�����
	switchcheckbox('ibrjCheckbox','ebrj');//�ܳ�/����Ǽ� (ebrj)
	switchcheckbox('ebrjCheckbox','ibrt');//�˵�
	switchcheckbox('ibrtCheckbox','ebrt');//�˵��Ǽ�
	switchcheckbox('ebtrCheckbox','ibpp');//��������
	boxebrg();//���ڼĵ��Ǽ�
	boxibrg();//�����Ǽ�
	boxibac();//�ж�
//	boxebac();//�жҵǼ�
	boxebtr();//���ջ���
	boxibrj();//�ܳ�/����
	switchjffsts('ebpy_jffs');	
	swiftIdYNXJ('ebpy_fxkd');
	shewaitongji('ebpy_strn');
	ebrgtlrf();//ת�ú�
	var opt1=$("ibdk_drrv").options[$("ibdk_drrv").selectedIndex].value;//���᲻����ܾ�
	drrv(opt1);
}

function cheLoa()
{//��onLoadʱ��
	var char=new Array();
		char=onLoadCheck('NEH','NE');
	var idName=new Array();
		idName=char[0].split(",");//ȡ���ϴβ����У���ѡ�е�checkbox�����У�
	var len=idName.length-1;
	for(var numR=0;numR<len;numR++)
	{
		$(idName[numR]).disabled="";
		$(idName[numR]).checked="checked";
		charDiv=$(idName[numR]).name.substr(0,4);
		$(charDiv).style.display="";//checkbox��Ӧ��div;
	}
}	
</script>
</html:html>
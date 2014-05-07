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
<%--���ʽ��㰸�����壩--�����������ҵ�����--%>
<html:html>
<head>
<link href="/IB/case/case.css" rel="stylesheet" type="text/css">
<script language="javascript" type="text/javascript"
    src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript"
    src="/IB/case/case.js"></script>
</head>
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
	<html:form action="caseDetailRemittance.do" method="post">
	<div id="errMsgDiv"><html:errors /></div>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="11%" align="left" valign="top">&nbsp;&nbsp;<strong>�������ͣ�</strong></td>
        <td width="89%" align="left" valign="top">������������ҵ�����</td>
      </tr>
	  <tr>
        <td width="11%" align="left" valign="top">&nbsp;&nbsp;<strong>�������ƣ�</strong></td>
        <td width="89%" align="left" valign="top"><label>
          <html:text styleClass="kuang"  property="detai" size="30" maxlength="30"/>
        </label></td>
      </tr>
      <tr>
        <td align="left" valign="top">&nbsp;&nbsp;<strong>����������</strong></td>
        <td align="left" valign="top"><html:text property="grade" size="3" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"  maxlength="3" styleClass="kuang"/>
          ��</td>
      </tr>
      <tr>
        <td height="3" colspan="2" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
      </tr>
      <tr>
        <td height="10" colspan="2" align="left" valign="top" ></td>
      </tr>
    </table>
	<table width="98%" border="0" cellspacing="0" cellpadding="0" id="">
		<tr>
			<td width="3%" align="center" valign="top">
                        <input type="checkbox" name="orrgCheckbox" value="orrg" id="RE0" onClick="cheinner(this.checked,'orrg','4')" <%if(map!=null&&map.get("orrgCheckbox")!=null&&!((String)map.get("orrgCheckbox")).equals("")) out.print("checked");%>>			</td>
			<td align="left" valign="top">
					   <strong>�������������Ǽ�</strong>
						<div id="orrg" style="display:none">
						    ��ҵ����Ҫ��������ˣ�
						    <html:text styleClass="text_red" maxlength="12" title="orrg_clno" property="orrg_clno" onclick="openWin('client',',orrg_clno,')"/>
						        ��
								<html:text styleClass="text_red" maxlength="8" title="orrg_apdt" property="orrg_apdt" onclick="openWin('date','orrg_apdt')" size="8"/>
						        ��������ڣ�����
						        <html:text styleClass="text_red" maxlength="12" title="orrg_rve1" property="orrg_rve1" onclick="openWin('client',',orrg_rve1')"/>
						        ���տ�������������<span id="a01">�û������������Ϊ
						        <html:text styleClass="text_blue" maxlength="12" property="orrg_ckno" onclick="addId(this.name,'a01')"/>
						        ��</span><span id="a02">ƾ֤��������Ϊ
						        <html:text styleClass="text_blue" maxlength="8" property="orrg_crdt" onclick="openWin('date','orrg_crdt'),addId(this.name,'a02')" size="8"/>
						        ��</span>���������
								<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="orrg_ortp" property="orrg_ortp">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_ORTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									</logic:iterate></html:select>
						        </span>��<span id="a03">�տ����˺���
						       <html:text styleClass="text_blue" maxlength="12" size="12" property="orrg_rvac" onclick="addId(this.name,'a03'),openWinNum('accountNum','orrg_rvac','FS000000025')" />��</span>
								�տ�����
								<span class="selectRedCountry"><html:select styleClass="selectListRedCountry" title="orrg_cncd" property="orrg_cncd">
                                    <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                                </html:select>
								</span>���տ������ڹ��ң���
						        �տ�����Ϊ
						            <html:text styleClass="text_red" maxlength="12" title="ccpy_irbk" property="orrg_irbk" onclick="openWin('bank1','orrg_irbk')"/>
						        ��<span id="a04">
						        �տ��������˻�����
						            <html:text styleClass="text_blue" maxlength="12" property="orrg_mdbk" onclick="openWin('bank1','orrg_mdbk'),addId(this.name,'a04')" />
						        ��</span><span id="a05">
						        �˻��ҵ���72�����
						            <html:text styleClass="text_blue" maxlength="12" property="orrg_tg72" onclick="addId(this.name,'a05')"/>
						           ��</span>
						        ����˻��
								<span class="selectRed"><html:select styleClass="selectListRed" title="orrg_cyno" property="orrg_cyno">
                                     <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                                </html:select>
						        </span>�������֣�
						            <html:text styleClass="text_red" maxlength="12" title="orrg_amts" property="orrg_amts" onblur="addDot(this)"/>������
						            ����<html:text styleClass="text_red" maxlength="8" title="orrg_vldt" property="orrg_vldt" onclick="openWin('date','orrg_vldt')" size="8"  onblur="comperDate(document.getElementById('orrg_vldt').value,document.getElementById('orrg_apdt').value,0,'orrg_vldt','��Ϣ��Ҫ�ڻ������֮��')"/>����Ϣ�գ��տ�ʼ��Ϣ
						        ��<span id="a06">
						        ��Ʊ����Ϊ
						        <html:text styleClass="text_blue" maxlength="12" property="orrg_dfno" onclick="addId(this.name,'a06')"/>
						        ��</span><span id="a07">
						        ���е��˻���Ϊ
						        <html:text styleClass="text_blue" maxlength="12" property="orrg_acbk" onclick="openWin('bank1','orrg_acbk'),addId(this.name,'a07')" />
						        ��</span><span id="a08">
						        �ֻ�֧��
						        <html:text styleClass="text_blue" maxlength="12" property="orrg_amc1" onclick="addId(this.name,'a08')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this);comperMoney(document.getElementById('orrg_amts').value,document.getElementById('orrg_amc1').value,0,0,0,'orrg_amc1','�ֻ�֧�����ӦС�ڻ����')"/>
						        ���ֻ�֧������</span><span id="a09">
						        ԭ���˺�Ϊ
						        <html:text styleClass="text_blue" maxlength="12" property="orrg_acc1" onclick="addId(this.name,'a09')"/>
								��</span><span id="a11">
						        ��<html:text styleClass="text_blue" maxlength="12" property="orrg_exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'a11')"/>
						        �����ʣ��Ļ����۳����</span>
								<span id="a10">
						        <html:text styleClass="text_blue" maxlength="12" property="orrg_sdam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'a10')"/>
						        </span>���۳�������
								<span id="a12">
						        �����������˺�Ϊ
						        <html:text styleClass="text_blue" maxlength="12" property="orrg_acc2" onclick="addId(this.name,'a12')"/>
						        ��</span><span id="a13">
						        ���Ϊ
						        <html:text styleClass="text_blue" maxlength="12" property="orrg_amc2" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'a13')"/>
						        ������ҽ���</span><span id="a14">
						        �׻�֧�����Ϊ
						        <html:text styleClass="text_blue" maxlength="12" property="orrg_tham" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'a14')"/>
						        ��</span><span id="a15">���������˺�Ϊ
						        <html:text styleClass="text_blue" maxlength="12" property="orrg_acc3" onclick="addId(this.name,'a15')"/>
						        ��</span><span id="a16">��
								<span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="orrg_fxkd" onchange="XPjia(this.name)">
						            <html:option value=""></html:option>
									 <logic:iterate id="list" name="OPTION_FXKD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
						                </html:select>
						       </span>�����������ʽ������ʽ�������������</span>
								<span id="a17" style="display:none">���Ϊ
						        <html:text styleClass="text_blue" maxlength="12" property="orrg_exr2" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'a17')"/>
						        ��</span>
								<span id="a18"  style="display:none">��<html:text styleClass="text_blue" maxlength="12" property="orrg_byrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'a18')"/>
						        ������ۣ����룬</span><span id="a19"  style="display:none">��
						        <html:text styleClass="text_blue" maxlength="12" property="orrg_slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'a19')"/>
						       �������ۣ�������</span><span id="a20">
							   �����Ϊ
						        <html:text styleClass="text_blue" maxlength="12" property="orrg_amc3" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'a20')"/>
						        ��</span> <span id="a21">�ۻ�ͳ������Ϊ
						        <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="orrg_shxz" onchange="addId(this.name,'a21')">
						                 <html:option value=""></html:option>
						                 <logic:iterate id="list" name="OPTION_SHXZ">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
						                </html:select>
					            </span></span>��[��/��]<span class="selectRedYN"><html:select styleClass="selectListRedYN" title="orrg_stfg" property="orrg_stfg" onchange="shenbao(this.name)">
						                <html:option value=""></html:option>
						                <logic:iterate id="list" name="OPTION_YNFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
						                </html:select>
						            </span>�걨��<span id="a22">��������Ϊ
						          <span class="selectBlue" id="L0"><html:select styleClass="selectListBlue" property="orrg_fhtp" onchange="addId(this.name,'a22')">
						                <html:option value=""></html:option>
						               <logic:iterate id="list" name="OPTION_FHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									 </logic:iterate>
						                </html:select>
						            </span>��</span>
									<span id="a92">��������Ϊ
									<span class="selectBlueMS" id="L1"><html:select styleClass="selectListBlueMS" property="orrg_cmpr" onchange="addId(this.name,'a92')">
						                <html:option value=""></html:option>
						                 <logic:iterate id="list" name="OPTION_CMPR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
						                </html:select>
						            </span>��</span><span id="a23">���״�����
						        <span class="selectBlueCountry" id="L2"><html:select styleClass="selectListBlueCountry" property="orrg_tytp" onchange="addId(this.name,'a23')">
						                <html:option value=""></html:option>
										 <logic:iterate id="list" name="OPTION_TYTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
						                </html:select></span>��</span><span id="a24">�걨��Ϊ
                                 <html:text styleClass="text_blue" maxlength="12" property="orrg_sbno" onclick="addId(this.name,'a24')"/>��</span>�����з�����
								<span class="selectRedYN"><html:select styleClass="selectListRedYN" title="orrg_obfg" property="orrg_obfg">
                                   <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_OBFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
                                </html:select></span>֧����<span id="a25">������
								<span class="selectBlueS"><html:select styleClass="selectListBlueS"  property="orrg_tlfr" onchange="fukuan(this.name)">
                                    <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_TLFR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
	                                </html:select>
								</span>����������ȡ������ȡ�����ѡ�</span>
								<span style="display:" id="a99">�շѷ�ʽΪ<span class="selectRedMS"><html:select styleClass="selectListRedMS"  property="orrg_chco" onchange="addId(this.name,'a99')">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
								  </logic:iterate>
                                </html:select></span>��</span></div></td>
         </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0" id="">
        <tr>
            <td width="3%" align="center" valign="top">
                <input type="checkbox" name="irrgCheckbox" id="RE1" value="irrg" disabled="disabled" onClick="cheinner(this.checked,'irrg','4')" <%if(map!=null&&map.get("irrgCheckbox")!=null&&!((String)map.get("irrgCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td> <strong>�������������Ǽ�</strong><br>
						<div id="irrg"  style="display:none"><span id="b01">�տ����յ�����л����Ʊ�ݺ��ж�[��/��]
						<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="irrg_mkty" onchange="addId(this.name,'b01')">
                                <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_YNFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							</logic:iterate>
                            </html:select>
						</span>ͬҵת��</span>
						������
						<span class="selectRed"><html:select styleClass="selectListRed" title="irrg_pctp" property="irrg_pctp" onchange="GZ(this.options[this.selectedIndex].value)">
                            <html:option value=""></html:option>
                            <logic:iterate id="list" name="OPTION_PCTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							</logic:iterate>
                        </html:select>
						</span>
						&nbsp;����<span id="b02">������
						<span class="selectBlue"><html:select styleClass="selectListBlue" property="irrg_fncy" onchange="addId(this.name,'b02')">
                            <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                        </html:select>
						</span>������۷ѱ��֣�Ϊ�۷ѱ��ֿ۴����ã�</span><span id="b03">
						<html:text styleClass="text_blue" maxlength="12" property="irrg_fnam" onclick="addId(this.name,'b03')"  onblur="addDot(this)"/>
						������۷ѽ���</span>��Ϣ��
						<html:text styleClass="text_red" maxlength="8" title="irrg_vldt" property="irrg_vldt" onclick="openWin('date','irrg_vldt')" size="8"/>
						������еĻ�ʽ��
						<span class="selectRedS"><html:select styleClass="selectListRedS" title="irrg_irtp" property="irrg_irtp">
                            <html:option value=""></html:option>
							 <logic:iterate id="list" name="OPTION_IRTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							</logic:iterate>
                        </html:select>
						</span>���˻���ҵ������<html:text styleClass="text_red" size="16" maxlength="16"  property="irrg_acrf" title="irrg_acrf" />���������<span class="selectRedCountry"><html:select styleClass="selectListRedCountry" title="irrg_cncd" property="irrg_cncd">
										<html:option value=""></html:option>
							 <logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
							</logic:iterate>
										
                        </html:select>
						</span>
						������˹��𣩽��л��ҵ���տ�����
						<span class="selectRed"><html:select styleClass="selectListRed" title="irrg_jffs" property="irrg_jffs" onchange="jffsHK(this.name)">
                                <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_JFFS">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>													</html:option>
											</logic:iterate>
                            </html:select></span>���⸶��ʽ���ķ�ʽ���н⸶
						��<span id="b10"></span><span id="b11">�⸶���Ϊ
						<html:text styleClass="text_blue" maxlength="12" property="irrg_exam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'b11')"/>
						��</span>
						<span id="b12" style="display:none">
						��
						<span class="selectRedMS"><html:select styleClass="selectListRedMS" property="irrg_dkth" onchange="addId(this.name,'b12')">
                            <html:option value=""></html:option>
                            <logic:iterate id="list" name="OPTION_FXKD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>													</html:option>
							</logic:iterate>
                        </html:select>
						</span>�ķ�ʽ�������������</span><span id="b13" style="display:none">
						��
						<html:text styleClass="text_blue" maxlength="12" property="irrg_slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'b13')"/>
						������ۣ����룬</span><span id="b14" style="display:none">��
						<html:text styleClass="text_blue" maxlength="12" property="irrg_byrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'b14')"/>
						�������ۣ�������</span></span><span id="b15" style="display:none">
						������Ϊ
						<html:text styleClass="text_blue" maxlength="12" property="irrg_exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'b15')"/>
						��</span><span id="b16" style="display:none">
							�Ƿ�����ͳ��Ϊ
							<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="irrg_strn" onchange="addId(this.name,'b16')">
                                <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select>
							</span>��</span><span id="b20">������Ϊ
							<span class="selectBlueS"><html:select styleClass="selectListBlueS" property="irrg_nat" onchange="quyushuxing(this.name,'b99'),addId(this.name,'b20')">
                                <html:option value=""></html:option>
                                 <logic:iterate id="list" name="OPTION_NAT">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select>
							</span>���������ԣ����ף�</span>
							<span id="b99" style="display:none">��
							 <span class="selectRedCountry"><html:select styleClass="selectListRedCountry" title="iirg_natp" property="iirg_natp" onchange="addId(this.name,'b99')">
							  <html:option value=""></html:option>
                            <logic:iterate id="list" name="OPTION_NATP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							   </logic:iterate>
						  </html:select>
						  </span>���걨ͳ�����ͣ�</span>
						<span id="b21">�������׸���Ϊ
						<html:text styleClass="text_blue" maxlength="12"  property="irrg_trmo" onclick="addId(this.name,'b21')"/>
						��</span></div>            </td>
        </tr>
    </table>
	<br>
	<table width="98%">
        <tr>
            <td width="3%" align="center" valign="top">
                <input type="checkbox" name="orstCheckbox" id="RE2" value="orst" disabled="disabled" onClick="cheinner(this.checked,'orst','4')" <%if(map!=null&&map.get("orstCheckbox")!=null&&!((String)map.get("orstCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td> <strong>�������ֹ��</strong><br>
                    <div id="orst"  style="display:none">
                       ������������ȡ�������ã���
					    <span class="selectRedMS"><html:select styleClass="selectListRedMS" title="orst_chco" property="orst_chco">
                           <html:option value=""></html:option>
                           <logic:iterate id="list" name="OPTION_CHCO">
				           <%String[] value = (String[]) list;%>
					       <html:option value="<%=value[1]%>"><%=value[0]%></html:option>
						</logic:iterate>
                       </html:select>
                       </span>&nbsp;
					   ���շѷ�ʽ���ķ�ʽ��������ȡ�����ѣ�
<span id="c03">�ʵ������Ϊ
							 <span class="selectBlue"><html:select styleClass="selectListBlue" property="orst_tltp" onchange="addId(this.name,'c03')">
								<html:option value=""></html:option>
								<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							   </logic:iterate>
							</html:select>
							</span>��</span></span><span id="c04">ʵ�յ籨�ѽ��Ϊ
							<html:text styleClass="text_blue" maxlength="12" property="orst_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'c04')"/>
							��</span></div>            </td>
        </tr>
    </table>
	<br>
            <table width="98%" id="">
				<tr>
					<td width="3%" align="center" valign="top">
					     <input type="checkbox" name="orclCheckbox" id="RE3" value="orcl" disabled="disabled" onClick="cheinnerL('RE3','orcl')" <%if(map!=null&&map.get("orclCheckbox")!=null&&!((String)map.get("orclCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
							<strong>�����������</strong>
								<div id="orcl"  style="display:none">
								       ������������ȡ�������ã���������ȡ������
									  <span id="d01"></span><span id="d03">����
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="orcl_tltp" onchange="addId(this.name,'d03')">
									<html:option value=""></html:option>
									<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
								</html:select>
								</span>���籨�����ͣ��ʵ�ѣ�</span><span id="d04">
								<html:text styleClass="text_blue" maxlength="12" property="orcl_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'d04')"/>��ʵ���ʵ�ѽ���
								</span></div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%" id="">
				<tr>
					<td width="3%" align="center" valign="top">
                    <input type="checkbox" name="irrtCheckbox"  id="RE4" value="irrt" disabled="disabled"  onClick="cheinnerL('RE4','irrt');xiaojuan()" <%if(map!=null&&map.get("irrtCheckbox")!=null&&!((String)map.get("irrtCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
								<strong>��������˻�</strong>
								<div id="irrt"  style="display:none"><span id="e06">�ջ���Ӧ�����Ҫ�������ԭ�����������˻����ջ�����
								<html:text styleClass="text_blue" maxlength="12" property="irrt_rjrs" onclick="addId(this.name,'e06')"/>
								(�˻�ԭ��)��ԭ������˻㣬</span>���˻���Ϊ
								<html:text styleClass="text_red" maxlength="12" title="irrt_rjam" property="irrt_rjam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" />
								��<span id="e01"></span>
								�ʻ���Ϊ
								<html:text styleClass="text_red" maxlength="12" title="irrt_acbk" property="irrt_acbk"  
								onclick="openWin('bank1','irrt_acbk')"/>��<span id="e02">�������˻��е��ʺ���
								<html:text styleClass="text_blue" maxlength="12" property="irrt_stac" onclick="addId(this.name,'e02'),openWinNum('accountNum','irrt_stac','JMXH0011')"/>
								��</span><span id="e03">
								�˻���ԭ���Ǳ��Ϊ
<html:text styleClass="text_blue" maxlength="12" property="irrt_acrf" onclick="addId(this.name,'e03')"/>
								��</span><span id="e04">
								��������Ϊ
								<html:text styleClass="text_blue" maxlength="8" property="irrt_mstp" size="8" onclick="addId(this.name,'e04')"/>
								��</span><span id="e05">
								ԭ��������Ϣ����
								<html:text styleClass="text_blue" maxlength="8" property="irrt_vldt" onclick="openWin('date','irrt_vldt'),addId(this.name,'e05')" size="8"/>
								��</span></div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%">
                <tr>
                    <td width="3%" align="center" valign="top">
                    <input type="checkbox" name="irpbCheckbox" id="RE5" value="irpb" disabled="disabled" onClick="cheinnerL('RE5','irpb');xiaojuan()" <%if(map!=null&&map.get("irpbCheckbox")!=null&&!((String)map.get("irpbCheckbox")).equals("")) out.print("checked");%>>                    </td>
                            <td><strong>����������ʽ⸶</strong>
                            <div id="irpb"  style="display:none">�Է����������������������⸶��
							<span id="f01">�������Ļ�Ʊ����Ϊ
                                <html:text styleClass="text_blue" maxlength="12" property="irpb_dfno" onclick="addId(this.name,'f01')"/>
							��</span><span id="f02">�����Ϊ
							<html:text styleClass="text_blue" maxlength="12" property="irpb_orbk" onclick="openWin('bank1','irpb_orbk'),addId(this.name,'f02')"/>
							��</span><span id="f03">�������ַ
							<html:text styleClass="text_blue" maxlength="12" property="irpb_orbkad" onclick="addId(this.name,'f03')"/>
							��</span>��
							<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="irpb_corp" property="irpb_corp">
                                <html:option value=""></html:option>
								 <logic:iterate id="list" name="OPTION_CMPR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select>
							</span>
							[�Թ�/��˽]��<span id="f04">�������ջ�����ַΪ
							<html:text styleClass="text_blue" maxlength="12" property="irpb_yhnm" onclick="addId(this.name,'f04')"/>
							��</span>�����Ϊ
							<html:text styleClass="text_red" maxlength="12" title="irpb_clno" property="irpb_clno"/>
							���տ�����
						   <span class="selectRed"><html:select styleClass="selectListRed" title="irpb_jffs" property="irpb_jffs" onchange="jffs(this.name)">
                                <html:option value=""></html:option>
                                 <logic:iterate id="list" name="OPTION_JFFS">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							 </logic:iterate>
                              </html:select>
						   </span>
							���⸶��ʽ���ķ�ʽ���н⸶��<span id="f05">�տ����ʺ�Ϊ
							<html:text styleClass="text_blue" maxlength="12" property="irpb_stac" onclick="addId(this.name,'f05'),openWinNum('accountNum','irpb_stac','JMXH0011')"/>
							��</span><span id="f06">�⸶���Ϊ
							<html:text styleClass="text_blue" maxlength="12" property="irpb_exam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'f06')"/>
							��</span><span id="f07" style="display:none">
								��
								<span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="irpb_dkth" onchange="addId(this.name,'f07')">
									<html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_FXKD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
								</html:select>
								</span>�ķ�ʽ�������������</span><span id="f08" style="display:none">
								��
								<html:text styleClass="text_blue" maxlength="12" property="irpb_slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'f08')"/>
								������ۣ����룬</span><span id="f09" style="display:none">��
								<html:text styleClass="text_blue" maxlength="12" property="irpb_byrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'f09')"/>
								�������ۣ�������</span><span id="f10" style="display:none">
								�������Ϊ
								<html:text styleClass="text_blue" maxlength="12" property="irpb_exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'f10')"/>��</span><span id="f11">
							ת���л���
							<html:text styleClass="text_blue" maxlength="12" property="irpb_ztbr" onclick="addId(this.name,'f11')"/>
							��</span><span id="f12">
							[��/��]
							<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="irpb_strn" onchange="addId(this.name,'f12')">
                                <html:option value=""></html:option>
                                 <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select>
							</span>Ϊ����ͳ�ƣ�</span><span id="f13">
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="irpb_shtp" onchange="addId(this.name,'f13')">
                                <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_SHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>

                            </html:select>
							</span>���ջ����ͣ������ջ㣬</span><span id="f14">�걨��Ϊ
							<html:text styleClass="text_blue" maxlength="12" property="irpb_sbno" onclick="addId(this.name,'f14')"/>
							��</span><span id="f15">���е���
							<span class="selectBlueTradeCode"><html:select styleClass="selectListBlueTradeCode"property="irpb_tytp" onchange="addId(this.name,'f15')">
										<html:option value=""></html:option>
										 <logic:iterate id="list" name="OPTION_TYTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
									</html:select></span>
							(���״���)���ף�</span><span id="f16">��������
							<span class="selectBlueS"><html:select styleClass="selectListBlueS" property="irpb_nat" onchange="quyushuxing(this.name,'f99'),addId(this.name,'f16')">
                                <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_NAT">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select>
							</span>���������ԣ����ף�</span>
							<span id="f99" style="display:none">
							��
							 <span class="selectRedCountry"><html:select styleClass="selectListRedCountry" title="irpb_natp" property="irpb_natp" onchange="addId(this.name,'f99')">
							  <html:option value=""></html:option>
							  <logic:iterate id="list" name="OPTION_NATP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							   </logic:iterate>
						  </html:select>
						  </span>���걨ͳ�����ͣ�						  </span><span id="f17">
							�������׸�����
							<html:text styleClass="text_blue" maxlength="12" title="irpb_trmo" property="irpb_trmo" onclick="addId(this.name,'f17')"/>��</span></div></td>
                </tr>
            </table>
			<br>
			<table width="98%" id="">
                <tr>
                    <td width="3%" align="center" valign="top">
                        <input type="checkbox" name="irclCheckbox" id="RE6" value="ircl"  disabled="disabled" onClick="cheinnerL('RE6','ircl')" <%if(map!=null&&map.get("irclCheckbox")!=null&&!((String)map.get("irclCheckbox")).equals("")) out.print("checked");%>>                    </td>
                           <td> <strong>�����������</strong>
                            <div id="ircl"  style="display:none">���Ѱ��������⸶�Ļ�����ҵ����н����</div>                    </td>
                </tr>
            </table>
			
			</div></td>
				<td class="innerTable_right_y"> </td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td align="center" class="innerTable_bottom_x">
	        <input type="hidden" name="errCode" id="errCode"/>
			<input type="hidden" name="REH" id="REH" value="">
            <input type="hidden" name="LCHVAL" id="LCHVAL" value="">
			<input type="hidden" name="idPS" id="idPS" value="">
            <input type="image" src="/IB/images/submit.gif" onClick="checkType('4');return false">
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" src="/IB/images/returnInto.gif"  onClick="openReplace('cases.do?flag=list');return false" >
			<html:hidden property="aveValue"/>
			<html:hidden property="idM"/>
			<html:hidden value="05" property="type"/>
			<html:hidden value="����С�������ҵ�����" property="name"/>
			<html:hidden value="submit" property="flag"/>
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
</body></html:form>
<script>
function XPjia(operation)
{
//ѯ��2���Ƽ�3��
    addId("orrg_fxkd","a16");//���������ʽ-�Ǳ�ѡ�
	var operationType=document.getElementById(operation).value;
	switch(operationType)
	{
		case "2":
			$("a17").style.display="";
			$("a18").style.display="none";
			$("a19").style.display="none";
			delId("a18");
			delId("a19");
			break;
		case "3":
			$("a17").style.display="none";
			delId("a17");
			$("a18").style.display="";
			$("a19").style.display="";
			break;
	}
}

function quyushuxing(operation,ids) 
{
//��������
	switch($(operation).value)
	{
		case "0"://����
			$(ids).style.display="";
			break;
		default://2,1��˰�� ����
			$(ids).style.display="none";
			delId(ids);
			break;
	}
}

function shenbao(operation)
{
//�Ƿ��걨
	var operationType=$(operation).value;
	switch(operationType)
	{
	case "0"://��������;��������;���״���Ϊ��ѡ��
		$("L0").style.border="1px solid #FF0000";//��������
		$("L1").style.border="1px solid #FF0000";//��������
		$("L2").style.border="1px solid #FF0000";//���״���
		break;
	case "1"://1-no
		$("L0").style.border="1px solid #08346B";
		$("L1").style.border="1px solid #08346B";
		$("L2").style.border="1px solid #08346B";
		break;
		}
}
function fukuan(operation)
{
//�������տ���
	addId('orrg_tlfr','a25');
	var operationType=$(operation).value;
	switch(operationType)
	{
		case "I":
			$("a99").style.display="";
			break;
		case "O":
			//$("a99").style.display="";
			$("orrg_chco").value="MS";
			addId("orrg_chco","a99");
			break;
	}
}

function jffsHK(prid)
{
//�жϽ⸶��ʽΪ�ֻ�����/�������/�׻�����(�����/������/������/�걨ͳ������)
	switch($(prid).value)
	{
		case "JH":
			$("b12").style.display="none";
			$("b13").style.display="none";
			$("b14").style.display="none";
			$("b15").style.display="";
			$("b99").style.display="";
			delId("b12");
			delId("b13");
			delId("b14");
			$("irrg_dkth").value="";
			$("irrg_slrt").value="";
			$("irrg_byrt").value="";
			break;
		case "TH":
			$("b12").style.display="";
			$("b13").style.display="";
			$("b14").style.display="";
			$("b15").style.display="none";
			$("b99").style.display="none";
			delId("b15");
			delId("b99");
			$("irrg_exrt").value="";
			$("iirg_natp").value="";
			break;
		default:
			$("b12").style.display="none";//���������ʽ
			$("b13").style.display="none";//�����
			$("b14").style.display="none";//������
			$("b15").style.display="none";//������
			$("b99").style.display="none";//�걨ͳ������
			delId("b12");
			delId("b13");
			delId("b14");
			delId("b15");
			delId("b99");
			$("irrg_dkth").value="";
			$("irrg_slrt").value="";
			$("irrg_byrt").value="";
			$("irrg_exrt").value="";
			$("iirg_natp").value="";
			break;
	}
}

//�жϽ⸶��ʽΪ�ֻ�����/�������/�׻�����(�����/������/������)
function jffs(prid)
{
	switch($(prid).value)
	{
		case "JH":
			$("f07").style.display="none";//���������ʽ
			$("f08").style.display="none";//�����
			$("f09").style.display="none";//������
			$("f10").style.display="";//������
			delId("f07");
			delId("f08");
			delId("f09");
			$("irpb_dkth").value="";
			$("irpb_slrt").value="";
			$("irpb_byrt").value="";
			break;
		case "TH":
			$("f07").style.display="";
			$("f08").style.display="";
			$("f09").style.display="";
			$("f10").style.display="none";
			delId("f10");
			$("irpb_exrt").value="";
			break;	
		default:
			$("f07").style.display="none";
			$("f08").style.display="none";
			$("f09").style.display="none";
			$("f10").style.display="none";
			delId("f07");
			delId("f08");
			delId("f09");
			delId("f10");
			$("irpb_dkth").value="";
			$("irpb_slrt").value="";
			$("irpb_byrt").value="";
			$("irpb_exrt").value="";
			break;
	}
}

	function GZ(selectValue)
	{
		/*����ʽ==����*/
		if(selectValue=="1")
		 { 
             $("irrtCheckbox").disabled=false;
             $("irpbCheckbox").disabled=false;
			 xiaojuan();
		   }
		else	
		 { //�������ʽ��Ϊ���ʣ����˻㣬���ʽ⸶����������������ɲ�����
             $("irrtCheckbox").disabled=true;
             $("irpbCheckbox").disabled=true;
             $("irclCheckbox").disabled=true;
             $("irrtCheckbox").checked="";
             $("irpbCheckbox").checked="";
             $("irclCheckbox").checked="";
			 $("irrt").style.display="none";
			 $("irpb").style.display="none";
			 $("ircl").style.display="none";
			 cheAll("irrt_");
			 cheAll("irpb_");
			 cheAll("ircl_");
		   }
		}   

function xiaojuan(){
	if($("irrtCheckbox").checked||$("irpbCheckbox").checked){
	 $("irclCheckbox").disabled=false;
	 cheinnerL('RE6','ircl');
	}else{
	 $("irclCheckbox").disabled=true;
	 $("ircl").style.display="none";
	 cheAll("ircl_");
	}
}
</script>

<script>
//��ʼ��
function checkChc()
{
	cheId();//�����Ǳ�ѡ���id����
	cheLoa(7,"4","REH");
	//cheLoa("4");////��onLoadʱ��ȡ���ϴβ�����ѡ�е�checkbox������
	var opt1=document.getElementById("irrg_pctp").options[document.getElementById("irrg_pctp").selectedIndex].value;//���ʷ�ʽ
	quyushuxing("irrg_nat","b99");//��������
	quyushuxing("irpb_nat","f99");
	XPjia('orrg_fxkd');//ѯ��/�Ƽ�
	shenbao('orrg_stfg');//�Ƿ��걨
	fukuan('orrg_tlfr');//����
	GZ(opt1);//���˽⸶
	jffsHK('irrg_jffs');//������Ǽ�-�⸶��ʽ
	jffs('irpb_jffs');//���ʽ⸶-�⸶��ʽ
}
</script>	
</html:html>
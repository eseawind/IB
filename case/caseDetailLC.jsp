<%@ page contentType="text/html; charset=GB2312"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>
<%--���ʽ��㰸����һ��--��֤�С�֪ͨ��ҵ�����--%>
<html:html>
<head>
<title><bean:message key="common.systemName"/></title>
<link href="/IB/case/case.css" rel="stylesheet" type="text/css">
<script language="javascript" type="text/javascript" src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript" src="/IB/common/list.js"></script>
<script language="javascript" type="text/javascript" src="/IB/case/case.js"></script>
</head>
<body onLoad="checkChc()">	
<html:form action="caseDetailLC.do"  method="post">
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
        <td class="outerTable_mainContent">
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
	
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td align="left" valign="top">&nbsp;&nbsp;<strong>�������ͣ�</strong></td>
        <td align="left" valign="top">��֤����֪ͨ��ҵ�����</td>
      </tr>
      <tr>
        <td width="11%" align="left" valign="top">&nbsp;&nbsp;<strong>�������ƣ�</strong></td>
        <td width="89%" align="left" valign="top"><label>
        <html:text styleClass="kuang"  property="detai" size="30"  maxlength="30"/>
        </label></td>
        </tr>
      <tr>
        <td align="left" valign="top">&nbsp;&nbsp;<strong>����������</strong></td>
        <td align="left" valign="top">
        <html:text property="grade" size="3" maxlength="3" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" styleClass="kuang"/>
        ��</td>
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
				<input type="checkbox" name="lcopCheckbox" id="LC0" value="lcop" onClick="cheinner(this.checked,'lcop','0')" <%if(map!=null&&map.get("lcopCheckbox")!=null&&!((String)map.get("lcopCheckbox")).equals("")) out.print("checked");%>>			</td>
			<td align="left" valign="top">
					   <strong>��֤�У�����֤������</strong><br>
						<div id="lcop" style="display:none">��֤������<html:text styleClass="text_red" maxlength="12" title="lcop_apno" property="lcop_apno" size="12"  onclick="openWin('client',',lcop_apno,')"/>
							��
							<html:text styleClass="text_red" maxlength="8" title="lcop_isdt" property="lcop_isdt" onclick="openWin('date','lcop_isdt')" size="8"/>
							<span id="a01" style="display:">
							������<html:text styleClass="text_blue" maxlength="30" property="lcop_utno"  onclick="openWin('bank1','lcop_utno'),addId(this.name,'a01')"/>
							</span>�����������֤���룬<span id="a97">��������Ϊ<html:text styleClass="text_blue" maxlength="18"  size="18" title="text_blue" property="lcop_gstp" onclick="addId(this.name,'a97')" />��</span>�������ʱ�<html:text styleClass="text_red" title="lcop_appscd" property="lcop_appscd" size="15"/>������ʾ�˵�λ֤����������
							<html:text styleClass="text_red" maxlength="12" title="lcop_adl1" property="lcop_adl1"  onclick="openWin('client',',lcop_adl1,')"/>
							��ͬǩ�������˫����ͬ���������ʱ�<html:text styleClass="text_red" title="lcop_clpscd" property="lcop_clpscd" size="15"/>��<span id="a02">��ͬ��Ϊ
							<html:text styleClass="text_blue" maxlength="12" property="lcop_crno" 
							onclick="addId(this.name,'a02')"/></span>������ͬ���ݣ�������֤[��/��]
							<span class="selectRedYN"><html:select styleClass="selectListRedYN" title="lcop_lgfg" property="lcop_lgfg" onchange="baohan('lcop_lgfg')">
                                <html:option value=""></html:option>
                                 <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select></span>
							����������<span style="display:none" id="a99">������������Ϊ
							<span class="selectRedBH">
							<html:select styleClass="selectListRedBH"  property="lcop_bhtp" onchange="addId(this.name,'a99')">
								<html:option value=""></html:option>
								 <logic:iterate id="list" name="OPTION_BHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
						</html:select>
							</span>��</span>
								<span style="display:" id="lcop_sutpY">
								������֤Ϊ����/Զ�ڣ�
								<span class="selectRedS"><html:select styleClass="selectListRedS" title="lcop_sutp" property="lcop_sutp" onchange="jiqiyuanqi()">
								<html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_SUTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
								  </logic:iterate>
                                </html:select>
							    </span>&nbsp;����֤��<span id="a30">Զ������Ϊ
								<span class="selectRedL"><html:select styleClass="selectListRedL" property="lcop_uutp" onchange="addId(this.name,'a30');">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_UUTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
                                </html:select></span>��</span><span id="a03">����Ϊ
								<html:text styleClass="text_blue" maxlength="4" property="lcop_tenr" size="4" onclick="addId(this.name,'a03')"/>�죻</span><span id="lcop_id2" style="display:">����֤����Ϊ
								<span class="selectRedL" id="lcop_lgfgY">
								<html:select styleClass="selectListRedL" title="lcop_lctp" property="lcop_lctp" onchange="lctype('lcop',this.name)">
                                    <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_LCTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
                                </html:select></span>��</span>֧����ʽΪ
								<span class="selectRed"><html:select styleClass="selectListRed" title="lcop_ustp" property="lcop_ustp">
                               <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_USTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
								  </logic:iterate>
							    </html:select>
                                </span>��</span>
								<span id="a04">ָ���鸶������Ϊ
							    <html:text styleClass="text_blue" maxlength="12" property="lcop_avbk" size="12"  onclick="openWin('bank1','lcop_avbk'),addId(this.name,'a04')"/>��</span>
								<span id="a05" style="display:none">
								ת��������Ϊ
								<html:text styleClass="text_blue" maxlength="12" property="lcop_tlbk" size="12" onclick="openWin('bank1','lcop_tlbk'),addId(this.name,'a05')"/>��</span>
								<span id="a06" style="display:none">�˴�����֤[��/��]
								<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="lcop_tris" onchange="addId(this.name,'a06')">
                                    <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_YNFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
                                </html:select>
								</span>
								&nbsp;Ϊת����</span>
							<span id="a07" style="display:none">ѭ������Ϊ
							<html:text styleClass="text_blue" maxlength="4" property="lcop_rlit" size="4" onclick="addId(this.name,'a07')"/>��</span>	
                            ֪ͨ������Ϊ
							<html:text styleClass="text_red" maxlength="12" title="lcop_adbk" property="lcop_adbk" size="12" onclick="openWin('bank1','lcop_adbk')"/>������Ϊ
									<span class="selectRed"><html:select styleClass="selectListRed" title="lcop_lccy" property="lcop_lccy">
										<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select>
									</span>������֤/�������Ϊ
									<html:text styleClass="text_red" maxlength="12" title="lcop_lcam" property="lcop_lcam" size="12" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
									��<span id="a08">����֤[��/��]
									<span class="selectBlueS"><html:select styleClass="selectListBlueS" property="lcop_mksb" onchange="addId(this.name,'a08')">
										<html:option value=""></html:option>
										 <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
									</html:select>
									</span>&nbsp;���ң�</span>��֤��ʽΪ
									<span class="selectRed">
									<html:select styleClass="selectListRed" title="lcop_ammd" property="lcop_ammd">
                                    <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_ISMD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
						    </html:select></span>
							��<span id="a09">������
							<html:text styleClass="text_blue" maxlength="8" property="lcop_epdt" onclick="openWin('date','lcop_epdt'),addId(this.name,'a09')" size="8" onblur="comperDate(document.getElementById('lcop_epdt').value,document.getElementById('lcop_isdt').value,document.getElementById('lcop_tenr').value,'lcop_epdt','������Ӧ���ڿ�������+Զ������')"/>
							��</span>���ڵص���
							<html:text styleClass="text_red" maxlength="12" title="lcop_pcep" property="lcop_pcep" size="12"/>
							��<span id="a10">���װ����Ϊ
							<html:text styleClass="text_blue" maxlength="8" property="lcop_shdt" onclick="openWin('date','lcop_shdt'),addId(this.name,'a10')" size="8"/>
							��</span>������
							<html:text styleClass="text_red" maxlength="4" title="lcop_psbl" property="lcop_psbl" size="4"/>
							�죻<span id="a11">����֤���µĻ���
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcop_part" onchange="addId(this.name,'a11')">
                                <html:option value=""></html:option>
                                 <logic:iterate id="list" name="OPTION_YNAL">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
		
                            </html:select>
							</span>&nbsp;����װ��</span>��</span id="a12">
							<span class="selectBlue">
							<html:select styleClass="selectListBlue" property="lcop_tras" onchange="addId(this.name,'a12')">
                                <html:option value=""></html:option>
                                 <logic:iterate id="list" name="OPTION_YNAL">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select>
							</span>&nbsp;
							ת�ˣ�</span><span id="a13">
[��/��] <span class="selectBlueYN"><html:select styleClass="selectListBlueYN" title="lcop_mkis" property="lcop_mkis" onchange="addId(this.name,'a13')">
								<html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_OKFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
								  </logic:iterate>
                                </html:select>
							    </span>��װ�����ޣ�</span>����ش�<html:text styleClass="text_red"  title="lcop_shfm" property="lcop_shfm"/>��<html:text styleClass="text_red"  title="lcop_shto" property="lcop_shto"/>��<span id="a14">����֤����������Ϊ
							<html:text styleClass="text_blue" maxlength="12" property="lcop_dwbk"  onclick="openWin('bank1','lcop_dwbk'),addId(this.name,'a14')"/>
							��</span><span id="a15">����������Ϊ
							<html:text styleClass="text_blue" maxlength="12" property="lcop_rmbk" onclick="openWin('bank1','lcop_rmbk'),addId(this.name,'a15')"/>��</span>����֤[��/��]��ȿ�֤Ϊ
<span class="selectRed"><html:select styleClass="selectListRed" title="lcop_qlfg" property="lcop_qlfg">
                                <html:option value=""></html:option>
                                 <logic:iterate id="list" name="OPTION_LOFR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select>
						  </span>��<span id="a16">�ͻ��ʻ�һΪ
							<html:text styleClass="text_blue" maxlength="12" property="lcop_mgcltact" onclick="addId(this.name,'a16')"/>��</span>
							<span id="a17">����&nbsp;<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcop_mgclcur" onchange="addId(this.name,'a17')" >
                              <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                            </html:select></span>��</span>
							<span id="a18">���
							<html:text styleClass="text_blue" maxlength="12" property="lcop_mgcltamt" onclick="addId(this.name,'a18')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
							��</span><span id="a19">��֤���˺�һΪ
							<html:text styleClass="text_blue" maxlength="12" property="lcop_mgac" onclick="addId(this.name,'a19')"/>��</span>
							<span id="a20">����
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcop_accy" onchange="addId(this.name,'a20')">
                              <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                            </html:select></span>��</span>
							<span id="a21">���<html:text styleClass="text_blue" maxlength="12" property="lcop_mgam" onclick="addId(this.name,'a21')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
							��</span>
							<span id="a22">�ͻ��ʻ���Ϊ
							<html:text styleClass="text_blue" maxlength="12" property="lcop_mgcltact2" onclick="addId(this.name,'a22')"/>��</span>
							<span id="a23">����
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcop_mgclcur2" onchange="addId(this.name,'a23')">
                                <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                            </html:select></span>��</span>
							<span id="a24">���
							<html:text styleClass="text_blue" maxlength="12" property="lcop_mgcltamt2" onclick="addId(this.name,'a24')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>��</span>
							<span id="a25">��֤���˺Ŷ�Ϊ
							<html:text styleClass="text_blue" maxlength="12" property="lcop_mgc2" onclick="addId(this.name,'a25')"/>
							��</span>
							<span id="a26">����
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcop_acy2" onchange="addId(this.name,'a26')">
										<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                            </html:select>
							</span>��</span>
							<span id="a27">���
							<html:text styleClass="text_blue" maxlength="12" property="lcop_mam2" onclick="addId(this.name,'a27')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
							��</span>���������ڵ�Ϊ
							<span class="selectRed"><html:select styleClass="selectListRed" title="lcop_gdtp" property="lcop_gdtp">
                            <html:option value=""></html:option>
                             <logic:iterate id="list" name="OPTION_GDTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select>
							</span>������֤���������շѷ�ʽΪ
							<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="lcop_chco" property="lcop_chco">
                                <html:option value=""></html:option>
                                 <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select>
							</span>��<span id="lcop_tltpY" style="display:"><span id="a28">�ʵ������Ϊ
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcop_tltp" onchange="addId(this.name,'a28')">
                               <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select>
							</span></span>��</span>
							<span id="a29">ʵ�տ�֤�ʵ�ѽ��
							<html:text styleClass="text_blue" maxlength="12" property="lcop_taam" onclick="addId(this.name,'a29')"  onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this);comperMoney(document.getElementById('lcop_lcam').value,document.getElementById('lcop_taam').value,0,0,0,'lcop_taam','ʵ�տ�֤�ʵ�Ѳ��ܳ�������֤/������')" />
							��</span>��֤�����ղ�������֤�͵��ķ���֪ͨ�С�<br>
						</div></td>
         </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0" id="">
     	 <tr>
        	<td width="3%" align="center" valign="top">
	          <input type="checkbox" name="eladCheckbox" id="LC1" value="elad" disabled="disabled" onClick="cheinner(this.checked,'elad','0')" <%if(map!=null&&map.get("eladCheckbox")!=null&&!((String)map.get("eladCheckbox")).equals("")) out.print("checked");%>> </td>
			   <td>
				   <strong>֪ͨ�У���������֤����֤֪ͨ/�Ǽ�</strong><br>
						<div id="elad" style="display:none">
							��������֤���������ݣ�֪ͨ���ڱ�����ҵ��Ǽǣ��������£�<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="b02">������֤[��/��]&nbsp;
								<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="elad_mksb" onchange="addId(this.name,'b02')">
                                    <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_BRFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
                                </html:select>
								</span>&nbsp;Ϊ��������֤��</span>
							<span id="b03">
							[��/��]&nbsp;<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="elad_mkan" onchange="addId(this.name,'b03')">
                                    <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_BRFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                                </html:select>
								</span>&nbsp;Ϊ����������֤��</span>
							<span id="b04">
							[��/��]&nbsp;<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="elad_mkrv" onchange="addId(this.name,'b04')">
                                    <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_BRFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                                </html:select>
								</span>
							&nbsp;Ϊѭ������֤��</span>
							<span id="elad_id0" style="display:">							</span>
							֪ͨ����֤֪ͨ�Ǽǲ����շѷ�ʽΪ
							<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="elad_chco" property="elad_chco">
                                <html:option value=""></html:option>
                                 <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select></span>
							<span id="b99">����ݹ���
									<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="elad_cncd" onchange="addId(this.name,'b99')">
									<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                                    </html:select>
									</span>
									��</span><span id="elad_tltpY" style="display:">
							<span id="b07">�ʵ������Ϊ
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="elad_tltp" onchange="addId(this.name,'b07')">
							<html:option value=""></html:option>
							 <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
							</html:select>
							</span>��</span></span>
							<span id="b08">ʵ�տ�֤�ʵ�ѽ��
							<html:text styleClass="text_blue" maxlength="12" property="elad_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'b08')"/>��</span>
							�Ǽ����ϵͳ�����溯������֤֪ͨ�����ˡ�</div></td>
			</tr>
			</table>
			<br>
			<table width="98%" id=lcModify>
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="lcupCheckbox" id="LC2" value="lcup" disabled="disabled" onClick="cheinnerL('LC2','lcup'),switchcheckbox('lcupCheckbox','elup'),switchcheckbox('lcupCheckbox','eluk');" <%if(map!=null&&map.get("lcupCheckbox")!=null&&!((String)map.get("lcupCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
						<strong>��֤�У�����֤���޸�</strong><br>
								<div id="lcup" style="display:none">��֤�п�������֤�󣬿�֤��������Ϊ�����˷�ʽ�ȱ䶯��֤������޸����룬��д����֤�޸������飬����֪ͨ��ʽΪ<span class="selectRed"><html:select styleClass="selectListRed" title="lcup_ammd" property="lcup_ammd" >
								 <html:option value=""></html:option>
								 <logic:iterate id="list" name="OPTION_ISMD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
							</html:select>
							</span>��<span id="c97">�ҵ�λҵ����Ϊ<html:text styleClass="text_blue" size="18" maxlength="30" property="lcup_trno" onclick="addId(this.name,'c97')" />��</span><span id="c98">�ҵ�λ��ͬ��Ϊ<html:text styleClass="text_blue"  size="18" maxlength="30"  property="lcup_crno" onclick="addId(this.name,'c98')" />��</span><span id="c99">�޸�����Ϊ<html:text styleClass="text_blue" title="lcup_mdcont" property="lcup_mdcont" onclick="addId(this.name,'c99')" />��</span>�����޸����£�<span id="c01">�ͻ���(��������)<html:text styleClass="text_red" title="lcup_apdt" property="lcup_apdt" onclick="openWin('date','lcup_apdt')"/>��������֤�޸����룬��������Ϊ<html:text styleClass="text_red" title="lcup_applnno" property="lcup_applnno" />������֤����
								   <span class="selectBlueS"><html:select styleClass="selectListBlueS"  property="lcup_adsn" onchange="addId(this.name,'c01')">
										<html:option value=""></html:option>
										 <logic:iterate id="list" name="OPTION_AASG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									 </logic:iterate>

									</html:select>
								   </span>&nbsp;</span>
									<span id="c02">���
									<html:text styleClass="text_blue" maxlength="12" property="lcup_adam" onclick="addId(this.name,'c02')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
									��</span>�޸�Ϊ[����/Զ��]
									<span class="selectRedS"><html:select styleClass="selectListRedS" title="lcup_sutp" property="lcup_sutp">
										<html:option value=""></html:option>
										 <logic:iterate id="list" name="OPTION_SUTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
									</html:select>
									</span>&nbsp;����֤��
									<span id="lcup_id0" style="display:none">
									<span id="c03">����Ϊ
									<html:text styleClass="text_blue" maxlength="4" property="lcup_tenr" size="4" onclick="addId(this.name,'c03')"/>
									��</span>��</span><span id="c04">����������Ϊ
									<html:text styleClass="text_blue" maxlength="12" property="lcup_adl1"  onclick="openWin('client',',lcup_adl1,'),addId(this.name,'c04')"/>
									��</span><span id="c06">����֤���µĻ���
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcup_part" onchange="addId(this.name,'c06')">
                                        <html:option value=""></html:option>
                                        <logic:iterate id="list" name="OPTION_YNAL">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
                                    </html:select></span></span>&nbsp;����װ�˺�<span id="c07">
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcup_tras" onchange="addId(this.name,'c07')">
                                        <html:option value=""></html:option>
                                         <logic:iterate id="list" name="OPTION_YNAL">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
                                    </html:select>
									</span></span><span id="c08">
									&nbsp;ת�ˣ�װ������Ϊ
									<html:text styleClass="text_blue" maxlength="3" size="3" property="lcup_mkis" onclick="addId(this.name,'c08')" />�죬
                                    </span><span id="c09">���װ��
									<html:text styleClass="text_blue" maxlength="8" property="lcup_shdt" onclick="openWin('date','lcup_shdt'),addId(this.name,'c09')" size="8"/>
									��</span><span id="c10">����֤������
									<html:text styleClass="text_blue" maxlength="8" property="lcup_epdt" onclick="openWin('date','lcup_epdt'),addId(this.name,'c10')" size="8" onblur="comperDate(document.getElementById('lcup_epdt').value,document.getElementById('lcup_shdt').value,'0','lcup_epdt','����֤������Ҫ�����װ��֮��')"/>
									��</span><span id="c11">���ڵص�
									<html:text styleClass="text_blue" maxlength="12" property="lcup_pcep" onclick="addId(this.name,'c11')"/>
									��</span><span id="c12">�ͻ��ʻ�һΪ
									<html:text styleClass="text_blue" maxlength="12" property="lcup_mgcltact" onclick="addId(this.name,'c12')"/>
									��</span><span id="c13">����
									<span class="selectBlue">
									<html:select styleClass="selectListBlue" property="lcup_mgclcur" onchange="addId(this.name,'c13')">
                                       <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                                    </html:select>
									</span></span><span id="c14">
									�����
									<html:text styleClass="text_blue" maxlength="12" property="lcup_mgcltamt" onclick="addId(this.name,'c14')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
									��</span>
									
									<span id="c15">��֤���˺�һΪ
							<html:text styleClass="text_blue" maxlength="12" property="lcup_mgac" onclick="addId(this.name,'c15')"/>��</span>
							<span id="c16">����
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcup_accy" onchange="addId(this.name,'c16')">
                              <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                            </html:select></span>��</span>
							<span id="c17">���<html:text styleClass="text_blue" maxlength="12" property="lcup_mgam" onclick="addId(this.name,'c17')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
							��</span><span id="c18">�ͻ��ʻ���Ϊ
									<html:text styleClass="text_blue" maxlength="12" property="lcup_mbcltact2" onclick="addId(this.name,'c18')"/>
									��</span><span id="c19">����
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcup_mgclcur2" onchange="addId(this.name,'c19')">
                                        <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                                    </html:select></span>
									��</span><span id="c20">���
									<html:text styleClass="text_blue" maxlength="12" property="lcup_mgcltamt2" onclick="addId(this.name,'c20')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
									��</span><span id="c21">��֤���˺Ŷ�Ϊ
									<html:text styleClass="text_blue" maxlength="12" property="lcup_mgac2" onclick="addId(this.name,'c21')"/>
									��</span><span id="c22">����
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcup_acy2" onchange="addId(this.name,'c22')">
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
									��</span><span id="c23">���
									<html:text styleClass="text_blue" maxlength="12" property="lcup_mam2" onclick="addId(this.name,'c23')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
									��</span>����֤���������շѷ�ʽΪ
							        <span class="selectRedMS">
							        <html:select styleClass="selectListRedMS" title="lcup_chco" property="lcup_chco" >
										<html:option value=""></html:option>
										 <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
									</html:select></span>��
									<span id="lcup_tltpY" style="display:"></span><span id="c24">�ʵ������Ϊ
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcup_tltp" onchange="addId(this.name,'c24')">
									<html:option value=""></html:option>
									 <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
								</html:select>
								</span>��</span>
								</span><span id="c25">
									<span id="lcup_chamY" style="display:">ʵ�տ�֤�ʵ�ѽ��
									<html:text styleClass="text_blue" maxlength="8" property="lcup_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" size="8" onclick="addId(this.name,'c26')"/>
									</span>��</span>��֤�����ղ���707���ķ���֪ͨ�С�</div>					</td>
				</tr>
			</table>
            <br>
            <table width="98%" id="">
				<tr>
					<td width="3%" align="center" valign="top">
						<input type="checkbox" name="elupCheckbox" id="LC3" value="elup" disabled="disabled" onClick="cheinner(this.checked,'elup','0')" <%if(map!=null&&map.get("elupCheckbox")!=null&&!((String)map.get("elupCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
								<strong>֪ͨ�У���������֤���޸�֪ͨ</strong>
								<div id="elup" style="display:none">֪ͨ���յ���֤�е��޸ĵ��ĺ󣬸����޸����ݲ����溯֪ͨ�����ˣ�<span id="d01">ת����ҵ����Ϊ<html:text styleClass="text_blue" size="16" maxlength="16" property="elup_tlrf" onclick="addId(this.name,'d01')"/>��</span>�˴��޸ķ�ʽΪ
								<span class="selectRedS"><html:select styleClass="selectListRedS" title="elup_aemd" property="elup_aemd">
                                        <html:option value=""></html:option>
                                         <logic:iterate id="list" name="OPTION_AEMD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
                                    </html:select>
								</span>
								���޸�����
								<html:text styleClass="text_red" maxlength="8" title="elup_aedt" property="elup_aedt" onclick="openWin('date','elup_aedt')" size="8"/>
								���ò����շѷ�ʽΪ
								<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="elup_chco" property="elup_chco" >
								 <html:option value=""></html:option>
								 <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
							</html:select>
							</span>��</div></td>
				</tr>
			</table>
			<br>
			<table width="98%" id="">
				<tr>
					<td width="3%" align="center" valign="top">
						<input type="checkbox" name="elukCheckbox" id="LC4" value="eluk" disabled="disabled" onClick="cheinner(this.checked,'eluk','0')" <%if(map!=null&&map.get("elukCheckbox")!=null&&!((String)map.get("elukCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
							<strong>֪ͨ�У���������֤���ܾ�/�����޸�</strong>
								<div id="eluk" style="display:none">�����˽ӵ���֤�е��޸��溯��ѡ��[�ܾ�/����]
								<span class="selectRedS"><html:select styleClass="selectListRedS" title="eluk_rvst" property="eluk_rvst" onchange="switchcheckboxValueRej(this.options[this.selectedIndex].value,'lcuk')">
                                        <html:option value=""></html:option>
                                         <logic:iterate id="list" name="OPTION_ARMK">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
                                    </html:select>
								</span>&nbsp;�޸�����֤���ò����շѷ�ʽΪ
								<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="eluk_chco" property="eluk_chco">
                                    <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
                                </html:select>
								</span><span id="e03">����ݹ���
									<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="eluk_cncd" onchange="addId(this.name,'e03')">
									<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                                    </html:select>
									</span>
									��</span><span id="e04">��������Ϊ
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="eluk_tltp" onchange="addId(this.name,'e04')">
                                        <html:option value=""></html:option>
                                         <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
                                    </html:select>
									</span></span>��<span id="e06">�ʵ�ѱ���
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="eluk_tlcy" onchange="addId(this.name,'e06')">
									<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
								</html:select></span></span><span id="e05">
									��ʵ���ʵ��
									<html:text styleClass="text_blue" maxlength="12" property="eluk_taam"  onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'e05')"/>
									��</span>������ɺ����ɵ��ķ�����֤�С�					  </div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%" id="">
				<tr>
					<td width="3%" align="center" valign="top">
						<input type="checkbox" name="lcukCheckbox" id="LC5" value="lcuk" disabled="disabled" onClick="cheinnerL('LC5','lcuk')" <%if(map!=null&&map.get("lcukCheckbox")!=null&&!((String)map.get("lcukCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
								<strong>��֤�У�����֤���ܾ��޸�</strong>
								<div id="lcuk" style="display:none">��֤���յ�֪ͨ�оܾ���������֤�޸ĵĵ��ĺ󣬵ǼǾܾ����ݣ��˲����ı�֤���˺�һΪ
									<span id="f01"><html:text styleClass="text_blue" maxlength="12" property="lcuk_mgac" onclick="addId(this.name,'f01')"/>
									��</span><span id="f02">����
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcuk_accy" onchange="addId(this.name,'f02')">
									<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
								</html:select></span>��
									</span><span id="f03">���
									<html:text styleClass="text_blue" maxlength="12" property="lcuk_mgam" onclick="addId(this.name,'f03')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
									��</span><span id="f04">��֤���˺Ŷ�Ϊ
									<html:text styleClass="text_blue" maxlength="12" property="lcuk_mgc2" onclick="addId(this.name,'f04')"/>
									��</span><span id="f05">����<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcuk_acy2" onchange="addId(this.name,'f05')">
                                        <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                            </html:select></span>��
									</span><span id="f06">���
									<html:text styleClass="text_blue" maxlength="12" property="lcuk_mam2" onclick="addId(this.name,'f06')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
									��</span></div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%" id="">
			    <tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="lccnCheckbox" id="LC6" value="lccn" disabled="disabled"  onClick="cheinner(this.checked,'lccn','0')" <%if(map!=null&&map.get("lccnCheckbox")!=null&&!((String)map.get("lccnCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td align="left" valign="top">
						<strong>��֤�У�����֤����֤</strong>
							<div id="lccn" style="display:none">��֤������֤����������֤�鸶ǰ����֤��������֤�������֤���룬����������֤���ò����շѷ�ʽΪ
								<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="lccn_chco" property="lccn_chco">
                                    <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
                                </html:select>
								</span>��������ɺ����ɵ��ķ���֪ͨ�С�������֤���ϡ� </div>				  </td>
			</tr>
			</table>
			<br>
			<table width="98%" id="">
			<tr>
				<td width="3%" align="center" valign="top">
				<input type="checkbox" name="elcnCheckbox" id="LC7" value="elcn" disabled="disabled" onClick="cheinnerL('LC7','elcn')" <%if(map!=null&&map.get("elcnCheckbox")!=null&&!((String)map.get("elcnCheckbox")).equals("")) out.print("checked");%>>				</td>
				<td>
					<strong>֪ͨ�У���������֤����֤�Ǽ� </strong>
							<div id="elcn" style="display:none">�յ���֤�еĳ�֤���ģ�֪ͨ������֤�Ǽǲ������Ļؿ�֤�С�</div>				</td>
			</tr>
			</table>
			<br>
			<table width="98%" id="">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="sgrgCheckbox" id="LC8" value="sgrg" disabled="disabled" onClick="cheinner(this.checked,'sgrg','0')" <%if(map!=null&&map.get("sgrgCheckbox")!=null&&!((String)map.get("sgrgCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
						<strong>��֤�У�����������Ǽ�</strong>
								<div id="sgrg" style="display:none">������(��֤������)��δ�յ������ᵥ�������ѵ�����֤������������������Ǽǵ������ݣ����������������
								    <html:text styleClass="text_red" maxlength="8" title="sgrg_apdt" property="sgrg_apdt" onclick="openWin('date','sgrg_apdt')" size="8"/>
									��<span id="h01">��Ʊ��
									<html:text styleClass="text_blue" maxlength="12" property="sgrg_ivno" onclick="addId(this.name,'h01')"/>
									��</span>�����������
									<span class="selectRed"><html:select styleClass="selectListRed" title="sgrg_gucy" property="sgrg_gucy">
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
									������������
									<html:text styleClass="text_red" maxlength="12" title="sgrg_guam" property="sgrg_guam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
									��<span id="h02">װ������
								    <html:text styleClass="text_blue" maxlength="8" property="sgrg_shdt" onclick="openWin('date','sgrg_shdt'),addId(this.name,'h02')" size="8" onblur="comperDate(document.getElementById('sgrg_shdt').value,document.getElementById('lcop_isdt').value,'0','sgrg_shdt','�����ճ����˿������ں��Զ������')"/>
									��</span>�ᵥ����
									<html:text styleClass="text_red" maxlength="12" title="sgrg_blno" property="sgrg_blno"/>
									����������
									<html:text styleClass="text_red" maxlength="12" title="sgrg_gsds" property="sgrg_gsds"/>
									��<span id="h03">������
									<html:text styleClass="text_blue" maxlength="12" property="sgrg_gubk" onclick="openWin('bank1','sgrg_gubk'),addId(this.name,'h03')"/>
									��</span>�ò����շѷ�ʽΪ<span id="h04">
										<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="sgrg_chco" property="sgrg_chco" onchange="addId(this.name,'h04')">
										<html:option value=""></html:option>
										 <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
										  </logic:iterate>
									</html:select>
									</span>��</span>
									<span id="h06">�ʵ������Ϊ
									<span class="selectBlue">
									<html:select styleClass="selectListBlue" property="sgrg_tltp" onchange="addId(this.name,'h06')">
										<html:option value=""></html:option>
										 <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
									</html:select>
									</span></span>��</span>
									ʵ���ʵ�ѽ��<span id="h07">
									<html:text styleClass="text_blue" maxlength="12" property="sgrg_taam" onclick="addId(this.name,'h07')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this);"/></span>
									���Ǽ���ɺ���������˾����һ��&lt;&lt;�������ᵥ���������&gt;&gt;��Ϊ�����̵������������ᵥ������������ͬʱ��֤��������Ȩ��֤��������֧�������� </div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top" id="">
					<input name="sgtrCheckbox" type="checkbox" id="LC9" value="sgtr" disabled="disabled" onClick="cheinner(this.checked,'sgtr','0')" <%if(map!=null&&map.get("sgtrCheckbox")!=null&&!((String)map.get("sgtrCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
						<strong>��֤�У����������������</strong>
						<div id="sgtr" style="display:none">���������������л����������������޶Կ�֤�����˽��д߱�������&lt;&lt;���������溯&gt;&gt;����֤�����ˡ� </div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%" id="">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="sgclCheckbox" id="LC10" value="sgcl" disabled="disabled"  onClick="cheinnerL('LC10','sgcl')" <%if(map!=null&&map.get("sgclCheckbox")!=null&&!((String)map.get("sgclCheckbox")).equals("")) out.print("checked");%>>					</td>
				<td>
					<strong>��֤�У��������������</strong>
							<div id="sgcl" style="display:none">��֤���յ������ᵥ��֪ͨ��֤�ˣ��������ᵥ�������溯&lt;&lt;���ᵥ�����溯&gt;&gt;һ���ĸ�����˾����&lt;&lt;�������ᵥ����溯&gt;&gt;��</div>				</td>
				</tr>
			</table>
            
            
</div>
</td>
<td class="innerTable_right_y"> </td>
                </tr>
                <tr>
                    <td></td>
                    <td align="center"><input type="hidden" name="LCH" id="LCH" value="">
            <input type="hidden" name="LCHVAL" id="LCHVAL" value="">
			<input type="hidden" name="idPS"  id="idPS" value="">
			<input type="image"  src="/IB/images/submit.gif"  onClick="checkType('0');return false">
&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" src="/IB/images/returnInto.gif"  onClick="openReplace('cases.do?flag=list');return false" >
			<html:hidden property="aveValue"/>
			<html:hidden value="01" property="type"/>
			<html:hidden property="idM"/>
			<html:hidden value="��֤�С�֪ͨ��ҵ�����" property="name"/>
			<html:hidden value="submit" property="flag"/>
			<html:hidden property="id"/>	</td>
                    <td></td>
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
</table></html:form>
</body>

<script>
//�Ƿ񿪳����������Ϊ���ǡ���������֤Ϊ�����ڡ�
function baohan(operation)
{
	var operationType=operation;
	var operationType=$(operationType).value;
	switch(operationType)
		{
			case "0"://�ǿ�������
			 $("lcop_sutp").value="0"; //Ĭ��Ϊ����
             $("lcop_sutp").readonly=true;
			 $("a99").style.display=""; //�����������Ϳ�ѡ
		     $("a30").style.display="none"; //Զ����������
			 $("lcop_uutp").value="";//Զ��ֵ��Ϊ��
		     $("a03").style.display="none"; //��������
			 $("lcop_tenr").value="";//����Ϊ��
				break;
			case "1":
				$("a99").style.display="none";
				$("lcop_bhtp").value="";
				$("lcop_sutp").readonly=false;
				jiqiyuanqi();
				break;
			default: 
				$("a99").style.display="none";
				$("lcop_bhtp").value="";
				$("lcop_sutp").readonly=false;
				$("lcop_sutp").value=""; //����/Զ��Ϊ��
				jiqiyuanqi();
				break;
			}
}
function jiqiyuanqi()
{
	if($("lcop_sutp").value==0){
		$("a03").style.display="none"; //��������
		$("lcop_tenr").value="";//����Ϊ��
		$("a30").style.display="none"; //Զ����������
		$("lcop_uutp").value="";//Զ��ֵ��Ϊ��
	}else{
		if($("lcop_sutp").value==1){
			$("a03").style.display=""; 
			$("a30").style.display=""; 
			}
	}

}

function lctype(operation,objectLc)
{
	//����֤�����ж�
	var operationType=operation;
	var objectLcType=objectLc;
	objectLcType=document.getElementById(objectLcType).value;
	switch(objectLcType)
	{
		case "1"://�ɳ���������֤
			$("a05").style.display=""; //ת���п���
			$("a06").style.display="none"; //�Ƿ�Ϊת��
			$("lcop_tris").value="";//
			delId("a06");
			$("a07").style.display="none"; //ѭ������Ϊ
			$("lcop_rlit").value="";//
			delId("a07");
			break;
			
		case "2"://���ɳ���ת��������֤
			$("a05").style.display="none";
			$("lcop_tlbk").value="";
			delId("a05");
			$("a06").style.display=""; 
			$("a07").style.display=""; 
			break;
			
		case "4"://���ɳ���������֤
			$("a05").style.display="none"; 
			delId("a05");
			$("lcop_tlbk").value="";
			$("a06").style.display="";
			$("a07").style.display="none"; 
			$("lcop_rlit").value="";
			delId("a07");
			break;
			
	   default://0,3,5
			$("a05").style.display="none"; 
			$("lcop_tlbk").value="";
			$("a06").style.display="none"; 
			$("lcop_tris").value="";
			$("a07").style.display="none"; 
			$("lcop_rlit").value="";
			delId("a05");
			delId("a06");
			delId("a07");
	}
}

</script>

<script>	
/*----------------�ܾ�����/�޸�---------------------*/
function switchcheckboxValueRej(selectValue,showId)
{
	var selectValueState=selectValue;
	var showIdName=showId;
	var divInn=showIdName.substr(0,4);
	if(selectValueState=="N")
	 { 
		$(showIdName+"Checkbox").disabled=false;
	   }
	else
	{
		if(selectValueState=="Y")	
		 { 
			$(divInn).style.display="none";
			$(showIdName+"Checkbox").checked="";
			$(showIdName+"Checkbox").disabled=true;
		   }
	}		   
}   
/*function chezhen()
{
	if($("lcopCheckbox").checked){
		$("lccnCheckbox").disabled=false;
		cheinnerL('LC6','lccn')	;
	}else{
		$("lccnCheckbox").checked="";
		$("lccnCheckbox").disabled=true;
		$("lccn").style.display="none";
	}

}
*/
</script>
<script>
//��ʼ��
function checkChc()
{
	cheId();//�����Ǳ�ѡ���id����
	cheLoa(11,"0","LCH");
	if($("lcopCheckbox").checked){
		cheinner($("lcopCheckbox").checked,"lcop","0");
    }
	//cheLoa("0");
	jiqiyuanqi();
	var opt1=$("eluk_rvst").options[$("eluk_rvst").selectedIndex].value;
	baohan('lcop_lgfg');
	lctype('lcop','lcop_lctp');
	                  //switchId('lcop','lcop_lgfg');
	                  // switchcheckbox('lcupCheckbox','elup');
	                  //switchcheckbox('lcupCheckbox','eluk');
	switchcheckboxValueRej(opt1,'lcuk');
}
</script>	
</html:html>
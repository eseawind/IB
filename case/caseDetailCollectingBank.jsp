<%@ page contentType="text/html; charset=gb2312"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>
<%--���ʽ��㰸��������--�����С�������ҵ�����--%>
<html:html>
<head>
<link href="/IB/case/case.css" rel="stylesheet" type="text/css">
    <link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/IB/resources/font-awesome-4.0.3/css/font-awesome.min.css">
<script language="javascript" type="text/javascript" 	src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript" 	src="/IB/common/list.js"></script>
<script language="javascript" type="text/javascript" src="/IB/case/case.js"></script>	
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
	<html:form action="caseDetailCollectingBank.do" method="post">
	
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
       <tr>
        <td width="11%" align="left" valign="top">&nbsp;&nbsp;<strong>�������ͣ�</strong></td>
        <td width="89%" align="left" valign="top">�������������ҵ�����</td>
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
				<input type="checkbox" name="ocrgCheckbox" id="DC0" value="ocrg" onClick="cheinneri(this.checked,'ocrg'),che(),switchcheckbox(this.name,'icrg')" <%if(map!=null&&map.get("ocrgCheckbox")!=null&&!((String)map.get("ocrgCheckbox")).equals("")) out.print("checked");%>>			</td>
			<td align="left" valign="top">
					   <strong>�����У��������գ���������ҵ��Ǽ�</strong>
						<div id="ocrg" style="display:none">
						    ������
						        <html:text styleClass="text_red" maxlength="12" title="ocrg_clno" property="ocrg_clno" onclick="openWin('client',',ocrg_clno,')"/>
						        ������������յ��ݺ���
						        <html:text styleClass="text_red" maxlength="8" title="ocrg_psdt" property="ocrg_psdt" onclick="openWin('date','ocrg_psdt')" size="8"/>
						        �������
						        <html:text styleClass="text_red" maxlength="12" title="ocrg_icbk" property="ocrg_icbk" onclick="openWin('bank1','ocrg_icbk')"/>
						        �����������ҵ�񣬷�Ʊ��Ϊ
						        <html:text styleClass="text_red" maxlength="12" title="ocrg_ivno" property="ocrg_ivno"/>
						        ������
								<span class="selectRed"><html:select styleClass="selectListRed" title="ocrg_cyno" property="ocrg_cyno">
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
								�����ձ��֣������Ϊ
						        <html:text styleClass="text_red" maxlength="12" title="ocrg_amts" property="ocrg_amts" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
								��<span class="selectRed"><html:select styleClass="selectListRed" title="ocrg_pstp" property="ocrg_pstp" onchange="switchpstp(this.name,'ocrg_tenr','a99','a01'),che()">
                                <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_PSTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                            </html:select></span>&nbsp;���͵�����ҵ��
								<span id="a99" style="display:none">����Ϊ<html:text styleClass="text_red" maxlength="12"  property="ocrg_tenr_r"  onclick="addId(this.name,'a99')"/>�죬</span>
								<span id="a01" style="display:none">����Ϊ<html:text styleClass="text_blue" maxlength="12" property="ocrg_tenr_b" onclick="addId(this.name,'a01')"/>�죬</span>������<html:text styleClass="text_red" maxlength="12"  property="ocrg_blpy" onclick="openWin('client',',ocrg_blpy,')"/>
								��<html:text styleClass="text_red" maxlength="12" title="ocrg_ime1" property="ocrg_ime1"/>
								�����������ڵ�ַ�����и���տ��˿�������<html:text styleClass="text_red" maxlength="12" title="ocrg_ocbknm" property="ocrg_ocbknm" onclick="openWin('bank1','ocrg_ocbknm')"/>���и�������<html:text styleClass="text_red" maxlength="8" title="ocrg_acdt" property="ocrg_acdt" onclick="openWin('date','ocrg_acdt')" size="8"/>������������<html:text styleClass="text_red" maxlength="8" title="ocrg_gtdt" property="ocrg_gtdt" onclick="openWin('date','ocrg_gtdt')" size="8"/>��ǩ��������<html:text styleClass="text_red" maxlength="8" title="ocrg_sgdt" property="ocrg_sgdt" onclick="openWin('date','ocrg_sgdt')" size="8"/>����������
								<span class="selectRedMS">
								<html:select styleClass="selectListRedMS" title="ocrg_chco" property="ocrg_chco">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                </html:select>
								</span>
								���շѷ�ʽ���ķ�ʽ����������ȡ������
								   <span id="a03">����
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="ocrg_tltp" onchange="addId(this.name,'a03')">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
									</html:select>
									</span>
                                &nbsp;���籨�����ͣ��ʵ�ѣ�</span><span id="a04">
						        <html:text styleClass="text_blue" maxlength="12" property="ocrg_taam" onclick="addId(this.name,'a04')" onblur="addDot(this)"/>��ʵ�յ籨�ѽ�</span>
								<span id="a05">
								��ݹ���Ϊ
								<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ocrg_cncd" onchange="addId(this.name,'a05')">
                                       <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty></html:select>
									</span>��</span></span>���ҵ�������&lt;&lt;��������ָʾ��&gt;&gt;��ͬ����һ��ĸ������С�						</div>			</td>
         </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
     	 <tr>
        	<td width="3%" align="center" valign="top">
	          <input type="checkbox" name="icrgCheckbox" id="DC1"  value="icrg"  disabled=true onClick="cheinneri(this.checked,'icrg'),checktitle('ocrg_','icrg'),boxicrg()" <%if(map!=null&&map.get("icrgCheckbox")!=null&&!((String)map.get("icrgCheckbox")).equals("")) out.print("checked");%>>           </td>
			   <td>
				   <strong>�����У����ڴ��գ����ڴ��յǼ�</strong><br>
						<div id="icrg" style="display:none">�������յ������м����Ľ��ڴ��յ��ݺ󣬽��н��ڴ���ҵ��¼�룬�����˿ͻ�
						<html:text styleClass="text_red" maxlength="12" title="icrg_clno" property="icrg_clno" onclick="openWin('client',',icrg_clno,')"/>
						 ����
						 <html:text styleClass="text_red" maxlength="8" title="icrg_ardp" property="icrg_ardp" onclick="openWin('date','icrg_ardp')" size="8"/>
						 �յ�������
                         <html:text styleClass="text_red" maxlength="12" title="icrg_ocbk" property="icrg_ocbk" onclick="openWin('bank1','icrg_ocbk')"/>
                         ��
						 <html:text styleClass="text_red" maxlength="8" title="icrg_dpdt" property="icrg_dpdt" onclick="openWin('date','icrg_dpdt')" size="8" onblur="comperDate(document.getElementById('icrg_ardp').value,document.getElementById('icrg_dpdt').value,0,'icrg_dpdt','�ĵ���ӦС���յ���')"/>
						 �ĳ��ĵ��ݣ�ί�д�����
                         <html:text styleClass="text_red" maxlength="12" title="icrg_icbk" property="icrg_icbk" onclick="openWin('bank1','icrg_icbk')"/>
                         �����ڴ��յǼ�ҵ��<span id="b01">��Ʊ��/�տ�������Ϊ
						 <html:text styleClass="text_blue" maxlength="12" property="icrg_drnm" size="12" onclick="addId(this.name,'b01')"/>
						  ��</span><span id="b03">��Ҫ�����շ���Ϊ
						 <html:text styleClass="text_blue" maxlength="12" property="icrg_cgam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" size="12" onclick="addId(this.name,'b03')"/>
						  ��</span><span id="b04">��
						  <html:text styleClass="text_blue" maxlength="8" property="icrg_dudt" onclick="openWin('date','icrg_dudt'),addId(this.name,'b04')" size="8" onblur="comperDate(document.getElementById('icrg_dudt').value,document.getElementById('icrg_dpdt').value,0,'icrg_dudt','������Ӧ���ڼĵ���'),comperDate(document.getElementById('icrg_dudt').value,document.getElementById('icrg_ardp').value,0,'icrg_dudt','������Ӧ�����յ���')"/>
						  �������գ����ڣ�</span><span id="b05">�տ�����
						  <span class="selectBlue"><html:select styleClass="selectListBlue" property="icrg_gdtp" onchange="addId(this.name,'b05')">
                            <html:option value=""></html:option>
                            <logic:iterate id="list" name="OPTION_GDTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                          </html:select>
						  </span>���տ������ڵأ���</span><span id="b06">��������
                          <span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="icrg_chco" onchange="addId(this.name,'b06')">
									<html:option value=""></html:option>
									<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
								</html:select>
                          </span>���շѷ�ʽ���ķ�ʽ��ͻ���ȡ������</span>��ȡ�����ѣ�
						<span id="b09">����
						  <span class="selectBlue"><html:select styleClass="selectListBlue" property="icrg_tltp" onchange="addId(this.name,'b09')">
								 <html:option value=""></html:option>
								 <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                          </html:select> </span>
						  ���籨�����ͣ��ʵ��</span>��<span id="b10">
						  <html:text styleClass="text_blue" maxlength="12" property="icrg_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'b10')"/>
						  ��ʵ�յ籨�ѽ���</span><%--<span id="b11">��ݹ���Ϊ
						  <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="icrg_cncd" onchange="addId(this.name,'b11')">
                            <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty> </html:select></span>��</span>--%>ҵ����ɺ�����ȷ��SWIFT���ĸ������м��溯&lt;&lt;����֪ͨ��&gt;&gt;�������ˡ�						  </div>				</td>
			</tr>
			</table>
			<br>
			<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="ocupCheckbox"  id="DC2" value="ocup" disabled=true onClick="cheinneri(this.checked,'ocup'),boxocup()" <%if(map!=null&&map.get("ocupCheckbox")!=null&&!((String)map.get("ocupCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
						<strong>�����У��������գ����������޸�</strong><br>
								<div id="ocup" style="display:none">�����н��������յ��ݼĳ���ί���������������ύ�޸ĵĵ��ݣ�����������ָʾ������Ҫ�޸ĳ����������ݡ�<br>
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����Ϊ���޸ĺ�Ŀͻ�����Ϊ
                                 <html:text styleClass="text_red" maxlength="12" title="ocup_clno" property="ocup_clno" onclick="openWin('client','ocup_clno')"/>
                                 ����������Ϊ
                                 <html:text styleClass="text_red" maxlength="8" title="ocup_psdt" property="ocup_psdt" onclick="openWin('date','ocup_psdt')" size="8"/>
                                 ��<span id="c01">
								 <select name="ocup_adsn" onChange="addId(this.name,'c01')">
  <option>+</option>
  <option>-</option>
</select>
                                 ��������׼����</span><span id="c02">
                                 <html:text styleClass="text_blue" maxlength="12" property="ocup_adam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'c02')"/>
                                 ����������</span>ҵ���޸�Ϊ
								 <span class="selectRed">
                                 <html:select styleClass="selectListRed" title="ocup_pstp" property="ocup_pstp" onchange="switchpstp(this.name,'ocup_tenr','c99','c03'),cheocup()">
                                     <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_PSTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								   </logic:iterate>
                                 </html:select></span>&nbsp;���͵�����ҵ��
								 <span id="c99" style="display:none">
								 ����Ϊ<html:text styleClass="text_red" maxlength="12"  property="ocup_tenr_r"  onclick="addId(this.name,'c99')"/>
								 �죬</span>
								 <span id="c03" style="display:none">
								 ����Ϊ<html:text styleClass="text_blue" maxlength="12" property="ocup_tenr_b" onclick="addId(this.name,'c03')"/>
								�죬</span>������
                                 <html:text styleClass="text_red" maxlength="12" title="ocup_blpy" property="ocup_blpy" onclick="openWin('client',',ocup_blpy,')"/>��<span id="c04">��
                                 <html:text styleClass="text_blue" maxlength="12" property="ocup_ime1" onclick="addId(this.name,'c04')"/>
                                 �����������ڵ�ַ�����и��</span>��������
								  <span class="selectRedMS"><html:select styleClass="selectListRedMS" title="ocup_chco" property="ocup_chco">
									<html:option value=""></html:option>
									<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									</logic:iterate>
								</html:select>
                          </span>���շѷ�ʽ���ķ�ʽ����������ȡ������
						<span id="c07">����
						  <span class="selectBlue"><html:select styleClass="selectListBlue" property="ocup_tltp" onchange="addId(this.name,'c07')">
                              <html:option value=""></html:option>
                              <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							</logic:iterate>
                          </html:select></span>&nbsp;
						  ���籨�����ͣ��ʵ��</span>��<span id="c08">
<html:text styleClass="text_blue" maxlength="12" property="ocup_taam" onclick="addId(this.name,'c08')" onblur="addDot(this)" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" /> (ʵ�յ籨�ѽ���</span>
						  <span id="c09">��ݹ���Ϊ
						  <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ocup_cncd" onchange="addId(this.name,'c09')">
                           <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
					    </html:select></span>��</span>ҵ��¼������ɵ��ķ��͸������У������溯��ͬ�޸ĵĵ���һ��ĸ������С� </div>					</td>
				</tr>
			</table>
            <br>
            <table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
						<input type="checkbox" name="iccgCheckbox" id="DC3" value="iccg" disabled=true onClick="cheinneri(this.checked,'iccg'),checktitle('ocup_','iccg'),boxiccg()" <%if(map!=null&&map.get("iccgCheckbox")!=null&&!((String)map.get("iccgCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
							<strong>�����У����ڴ��գ����ڴ����޸�</strong>
								<div id="iccg" style="display:none">�����и��������з��͵ĵ��ĺͼ������޸ĵ��ݺ������ڴ����޸Ĳ������޸��յ���Ϊ
                                 <html:text styleClass="text_red" maxlength="8" title="iccg_ardp" property="iccg_ardp" onclick="openWin('date','iccg_ardp')" size="8"/>
								���ĵ���Ϊ
                                 <html:text styleClass="text_red" maxlength="8" title="iccg_dpdt" property="iccg_dpdt" onclick="openWin('date','iccg_dpdt')" size="8" onblur="comperDate(document.getElementById('iccg_ardp').value,document.getElementById('iccg_dpdt').value,0,'iccg_dpdt','�ĵ���ӦС���յ���')"/>
								��<span id="d01">�����˿ͻ�����Ϊ
								<html:text styleClass="text_blue" maxlength="12" property="iccg_clno" onclick="addId(this.name,'d01'),openWin('client','iccg_clno')"/>
								��</span><span id="d02">��Ʊ��/�տ�����ַΪ
								<html:text styleClass="text_blue" maxlength="12" property="iccg_drnm" onclick="addId(this.name,'d02')"/>
								��</span>��������
								<span class="selectRed"><html:select styleClass="selectListRed" title="iccg_pstp" property="iccg_pstp" onchange="switchpstp(this.name,'iccg_tenr','d99','d03'),cheiccg(),boxiccg()">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_PSTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                </html:select>
                                </span>
								 <span id="d99" style="display:none">������
                                <html:text styleClass="text_red" maxlength="12" title="iccg_tenr_r" property="iccg_tenr_r" onclick="addId(this.name,'d99')"/>�죬</span>
								 <span id="d03" style="display:none">������
                                <html:text styleClass="text_blue" maxlength="12" property="iccg_tenr_b" onclick="addId(this.name,'d03')"/>
                                �죬</span></span>���ձ���Ϊ
								 <span class="selectRed"><html:select styleClass="selectListRed" title="iccg_cyno" property="iccg_cyno">
								<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
							  </html:select>
						  </span>�����ս��Ϊ
								<html:text styleClass="text_red" maxlength="12" title="iccg_amts" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" property="iccg_amts"/>
								��<span id="d04">�����з���Ϊ<html:text styleClass="text_blue" maxlength="12" property="iccg_cgam" onclick="addId(this.name,'d04')"/>
								��</span><span id="d05">������Ϊ
                                 <html:text styleClass="text_blue" maxlength="8" property="iccg_dudt" onclick="openWin('date','iccg_dudt'),addId(this.name,'d05')" size="8" onblur="comperDate(document.getElementById('iccg_dudt').value,document.getElementById('icrg_dpdt').value,0,'iccg_dudt','������Ӧ���ڼĵ���'),comperDate(document.getElementById('iccg_dudt').value,document.getElementById('icrg_ardp').value,0,'iccg_dudt','������Ӧ�����յ���')"/>��</span>��Ʊ��Ϊ<html:text styleClass="text_red" maxlength="12" title="iccg_ivno" property="iccg_ivno"/>��ҵ��¼��������溯&lt;&lt;����֪ͨ��&gt;&gt;�������˼�ȷ�ϵ��ĸ������С�</div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
						<input name="octrCheckbox" type="checkbox" id="DC4" disabled=true Onclick="cheinneri(this.checked,'octr'),checkoctr()" value="octr" <%if(map!=null&&map.get("octrCheckbox")!=null&&!((String)map.get("octrCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
						<strong>�����У��������գ����ջ���</strong>
								<div id="octr" style="display:none">
								�����н��������յ��ݼĳ��󣬳���Ԥ��ʱ����δ�ջ㣬������������д��յ��ݿ������ҵ����Ҫ����д�������ݣ�
								<span id="e01">������
								<html:text styleClass="text_blue" maxlength="12" property="octr_icbk" onclick="openWin('bank1','octr_icbk'),addId(this.name,'e01')" /></span>��
						 <span class="selectRedMS"><html:select styleClass="selectListRedMS" title="octr_chco" property="octr_chco">
									<html:option value=""></html:option>
									<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
								</html:select>
                          </span>���շѷ�ʽ���ķ�ʽ��ͻ���ȡ�����ѣ�
						<span id="e04">����
						  <span class="selectBlue"><html:select styleClass="selectListBlue" property="octr_tltp" onchange="addId(this.name,'e04')">
                              <html:option value=""></html:option>
                              <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                          </html:select></span>���籨�����ͣ��ʵ��</span>��<span id="e05">
						  <html:text styleClass="text_blue" maxlength="12" property="octr_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e05')"/>
						  ��ʵ�յ籨�ѽ���</span><span id="e06">��ݹ���Ϊ
						  <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="octr_cncd" onchange="addId(this.name,'e06')">
                            <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>                          </html:select>
						  	</span>��</span>ҵ��¼������ɵ��ķ��͸������С�</div></td>
				</tr>
			</table>
			<br>
			<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
						<input type="checkbox" name="icpyCheckbox" id="DC5" value="icpy" disabled=true Onclick="cheinneri(this.checked,'icpy'),checkicpy(),switchcheckbox(this.name,'ocpy')" <%if(map!=null&&map.get("icpyCheckbox")!=null&&!((String)map.get("icpyCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
						<strong>�����У����ڴ��գ�����</strong>
								<div id="icpy" style="display:none">����Ǽ��ڽ��ڴ��յ��ݣ�������ͬ�⸶��󣬼������ݷŸ������������и��<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����Զ�ڽ��ڴ��յ��ݣ������˳жҵ����պ󣬼������ݷŸ������ڳжҵ����ո��� ��<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�������յ�������ݵ���ص��ݺ���и��
								<span id="f01">���������Ϊ
								<html:text styleClass="text_blue" maxlength="12" property="icpy_ckno" onclick="addId(this.name,'f01')"/>
								��</span><span id="f02">ƾ֤��������Ϊ
								<html:text styleClass="text_blue" maxlength="8" property="icpy_crdt" onclick="openWin('date','icpy_crdt'),addId(this.name,'f02')" size="8"/>
								��</span>���ѽ��
								<html:text styleClass="text_red" maxlength="12" title="icpy_dlam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" property="icpy_dlam"/>
								��<span id="f03">�����з���
								<html:text styleClass="text_blue" maxlength="12" property="icpy_cgam" onclick="addId(this.name,'f03')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this);comperMoney(document.getElementById('icpy_dlam').value,document.getElementById('icpy_cgam').value,0,0,0,'icpy_cgam','�����з���ӦС�ڸ�����')"/>
								��</span>�ʻ���
								<html:text styleClass="text_red" maxlength="12" title="icpy_acbk" property="icpy_acbk" onclick="openWin('bank1','icpy_acbk')"/>
								��<span id="f04">�м���
								<html:text styleClass="text_blue" maxlength="12" property="icpy_mdbk"  onclick="openWin('bank1','icpy_mdbk'),addId(this.name,'f04')"/>
								��</span>��
								<html:text styleClass="text_red" maxlength="8" title="icpy_dudt" property="icpy_dudt" onclick="openWin('date','icpy_dudt')" size="8"/>
								����Ϣ�գ��տ�ʼ��Ϣ��<span id="f05">�ֻ�֧��
								<html:text styleClass="text_blue" maxlength="12" property="icpy_amc1" onclick="addId(this.name,'f05')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this);comperMoney(document.getElementById('icpy_dlam').value,document.getElementById('icpy_amc1').value,0,0,0,'icpy_amc1','�ֻ�֧��ӦС�ڵ��ڸ�����')"/>
								���ֻ�֧������</span><span id="f06">ԭ���˺���
								<html:text styleClass="text_blue" maxlength="12" property="icpy_acc1" onclick="addId(this.name,'f06')"/>
								��</span><span id="f08">��
								<html:text styleClass="text_blue" maxlength="12" property="icpy_exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'f08')"/>
								�����ʣ��Ļ����۳����</span><span id="f07">
								<html:text styleClass="text_blue" maxlength="12" property="icpy_sdam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'f07')"/>
								���۳�������</span><span id="f09">�����������˺���
								<html:text styleClass="text_blue" maxlength="12" property="icpy_acc2" onclick="addId(this.name,'f09')"/>
								��</span><span id="f10">���Ϊ
								<html:text styleClass="text_blue" maxlength="12" property="icpy_amc2" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'f10')"/>
								������ҽ���</span><span id="f11">�׻�֧�����
								<html:text styleClass="text_blue" maxlength="12" property="icpy_amc7" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'f11')"/>
								��</span><span id="f12">���������˺�Ϊ
								<html:text styleClass="text_blue" maxlength="12" property="icpy_acc3" onclick="addId(this.name,'f12')"/>
								��</span>��<span id="f99"><span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="icpy_fxkd" onchange="addId(this.name,'f99')">
							  <html:option value=""></html:option><logic:iterate id="list" name="OPTION_FXKD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						  </html:select></span>�����������ʽ������ʽ�������������</span><span id="f15">��
								<html:text styleClass="text_blue" maxlength="12" property="icpy_dram" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'f15')"/>
								���׻���ʣ��Ļ���</span>
								<span id="f14"><html:text styleClass="text_blue" maxlength="12" property="icpy_byft" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'f14')"/>
								������ۣ����룬</span>
								<span id="f13">��
								<html:text styleClass="text_blue" maxlength="12" property="icpy_slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'f13')"/>
								�������ۣ�������</span><span id="f16">����е���
								   <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="icpy_shxz" onchange="addId(this.name,'f16')">
						                <html:option value=""></html:option>
						                <logic:iterate id="list" name="OPTION_SHXZ">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						                </html:select></span>
								���ۻ����ʣ�</span>
								<span class="selectRedMS">
								<html:select styleClass="selectListRedMS" title="icpy_cmpr" property="icpy_cmpr">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_CMPR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                </html:select></span>
								���Թ���˽��ҵ��<span id="f17">ƾ�������
								<span class="selectBlueYN">
								<html:select styleClass="selectListBlueYN" property="icpy_mepy" onchange="addId(this.name,'f17')">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                </html:select></span>��</span><span id="f18">
								<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="icpy_ctpy" onchange="addId(this.name,'f18')">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                </html:select>
								</span>[��/��]��ظ��㣬</span>��������
						 <span class="selectRedMS"><html:select styleClass="selectListRedMS" title="icpy_chco" property="icpy_chco">
									<html:option value=""></html:option>
									<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
								</html:select>
                          </span>���շѷ�ʽ���ķ�ʽ��ͻ���ȡ������<span id="f20"></span><span id="f21">����
						  <span class="selectBlue"><html:select styleClass="selectListBlue" property="icpy_tltp" onchange="addId(this.name,'f21')">
                             <html:option value=""></html:option>
                             <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                          </html:select></span>���籨�����ͣ��ʵ��</span><span id="f22">
						  <html:text styleClass="text_blue" maxlength="12" property="icpy_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'f22')"/>��ʵ�յ籨�ѽ���</span>�걨��Ϊ<html:text styleClass="text_red"  property="icpy_sbno" title="icpy_sbno" /> ��</div>				  </td>
			</tr>
			</table>
			<br>
			<table width="98%">
                <tr>
                    <td width="3%" align="center" valign="top">
                    <input type="checkbox" name="icacCheckbox" id="DC6" value="icac" disabled=true  onClick="cheinneri(this.checked,'icac'),checkicac(),switchcheckbox(this.name,'ocac')" <%if(map!=null&&map.get("icacCheckbox")!=null&&!((String)map.get("icacCheckbox")).equals("")) out.print("checked");%>>                    </td>
                    <td> <strong>�����У����ڴ��գ��ж�</strong>
                            <div id="icac" style="display:none">�����˲�����Զ�ڽ��ڴ��յ��ݣ������˳жҵ����պ󣬴����н����ݷŸ������ˣ������˽��гжң��ж�������
                             <html:text styleClass="text_red" maxlength="12" title="icac_ocbk" property="icac_ocbk" onclick="openWin('bank1','icac_ocbk')"/>
                            ���жұ���
							<span class="selectRed"><html:select styleClass="selectListRed" title="icac_dlcy" property="icac_dlcy">
                                <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                            </html:select></span>���жұ��֣�<html:text styleClass="text_red" maxlength="12" title="icac_dlam" property="icac_dlam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>���жҽ�����������
                            <html:text styleClass="text_red" maxlength="8" title="icac_dudt" property="icac_dudt" onclick="openWin('date','icac_dudt')" size="8"/>������ڣ����ڡ���������
							<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="icac_chco" property="icac_chco">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                </html:select>
                                </span>���շѷ�ʽ���ķ�ʽ��ͻ���ȡ������
								<span id="g03">����
						<span class="selectBlue"><html:select styleClass="selectListBlue" property="icac_chtp" onchange="addId(this.name,'g03')">
						<html:option value=""></html:option>
						<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
					</html:select>
					</span>���籨�����ͣ��ʵ��</span><span id="g04">
						<html:text styleClass="text_blue" maxlength="12" property="icac_taam" onclick="addId(this.name,'g04')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this);"/>
					��ʵ�յ籨�ѽ���</span><span id="g05">��ݹ���Ϊ
					<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="icac_cncd" onchange="addId(this.name,'g05')">
					<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
							</html:select>
						</span></span>��</div>			</td>
                </tr>
            </table>
			<br>
			<table width="98%">
			<tr>
				<td width="3%" align="center" valign="top">
				<input type="checkbox" name="icrjCheckbox" value="icrj" id="DC7"  disabled=true onClick="cheinneri(this.checked,'icrj'),switchcheckbox(this.name,'ocrj'),boxicrj()" <%if(map!=null&&map.get("icrjCheckbox")!=null&&!((String)map.get("icrjCheckbox")).equals("")) out.print("checked");%>>				</td>
				<td>
					<strong>�����У����ڴ��գ��ܸ�</strong>
							<div id="icrj" style="display:none">��������
							<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="icrj_chco" property="icrj_chco">
                                <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                            </html:select>
                            </span>���շѷ�ʽ���ķ�ʽ��ͻ���ȡ������
						<span id="h03">����
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="icrj_tltp" onchange="addId(this.name,'h03')">
								<html:option value=""></html:option>
								<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
							</html:select>
							</span>���籨�����ͣ��ʵ��</span><span id="h04">
							<html:text styleClass="text_blue" maxlength="12" property="icrj_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'h04')"/>
							��ʵ�յ籨�ѽ�</span><span id="h05">��ݹ���Ϊ
							<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="icrj_cncd" onchange="addId(this.name,'h05')">
								<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
							</html:select>
							</span></span>��</div>				</td>
			</tr>
			</table>
			<br>
			<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
                    <input type="checkbox" name="ocpyCheckbox" id="DC8" value="ocpy" disabled=true  onClick="cheinneri(this.checked,'ocpy'),boxocrt(),checktitle('icpy_','ocpy')" <%if(map!=null&&map.get("ocpyCheckbox")!=null&&!((String)map.get("ocpyCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
						<strong>�����У��������գ��ջ㼰�⸶</strong>
						<div id="ocpy" style="display:none">�������յ������еĸ�����ĺͳ��ڵ��ݿ���������н�����⸶��ί���ˡ�<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�������ղ���������
						  <html:text styleClass="text_red" maxlength="12" title="ocpy_fnam" property="ocpy_fnam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" />
						  �������˻���Ϊ<html:text styleClass="text_red" maxlength="12" title="ocpy_acbk" property="ocpy_acbk" onclick="openWin('bank1','ocpy_acbk')"/>��Ӧ��������
						  <html:text styleClass="text_red" maxlength="12" title="ocpy_fnch" property="ocpy_fnch" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" />���ʵ��
						  <html:text styleClass="text_red" maxlength="12" title="ocpy_fntl" property="ocpy_fntl" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" />��
						  <span id="i01">��������
						  <span class="selectBlue"><html:select styleClass="selectListBlue" property="ocpy_jffs" onchange="switchjffsts('ocpy_jffs'),addId(this.name,'i01')">
							  <html:option value=""></html:option>
							  <logic:iterate id="list" name="OPTION_HKBZ">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						  </html:select></span>���⸶��ʽ���ķ�ʽ�����ջ�⸶��</span>
						  <span id="i02" style="display:none">ԭ������/���ʽ��Ϊ
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_dcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'i02')"/>��</span><span id="i03" style="display:none">ԭ������/�����ʺ�Ϊ
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_stac" onclick="addId(this.name,'i03')"/>��</span>	
						   <span id="i04" style="display:none">����/�ۻ���ҽ��Ϊ
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_stam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'i04')"/>��</span><span id="i05" style="display:none">���ۻ���/�����˺�Ϊ
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_rmac" onclick="addId(this.name,'i05')"/>��</span>
						   <span id="i06" style="display:none">������Ϊ
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'i06')"/>��</span><span id="i07" style="display:none">�ۻ�ͳ������(����)Ϊ
						   <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ocpy_shxz" onchange="addId(this.name,'i07')">
						     <html:option value=""></html:option>
						      <logic:iterate id="list" name="OPTION_SHXZ">
								<%String[] value = (String[]) list;%>
									<html:option value="<%=value[1]%>">
									<%=value[0]%>									</html:option>
										</logic:iterate>
						      </html:select></span>��</span>
						   <span id="i08" style="display:none">���ۻ����Ϊ<html:text styleClass="text_blue" maxlength="12" property="ocpy_exam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'i08')"/>��</span>						  
						  <span id="i09" style="display:none">���׻���ҽ��Ϊ
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_pdam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'i09')"/>
						  ��</span><span id="i10" style="display:none">�׻����Ϊ
						  <span class="selectBlue"><html:select styleClass="selectListBlue" property="ocpy_thcy" onchange="addId(this.name,'i10')">
							<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
						  </html:select></span>��</span>
						  <span id="i11" style="display:none">�׻���/�����ʺ�Ϊ
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_thac" onclick="addId(this.name,'i11')"/>
						  ��</span><span id="i12" style="display:none">���������ʽΪ
						  <span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="ocpy_fxkd" onchange="waihui(this.name),addId(this.name,'i12')">
							  <html:option value=""></html:option>
							  <logic:iterate id="list" name="OPTION_FXKD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate></html:select>
						  </span>��</span>
						  <span id="i13" style="display:none">���Ϊ
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_exr2" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'i13')"/>��</span><span id="i14" style="display:none">������Ϊ
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'i14')"/>��</span><span id="i15" style="display:none">�����Ϊ
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_byft" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'i15')"/>��</span><span id="i17">[��/��]<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ocpy_strn" onchange="addId(this.name,'i17'),shewaitongji(this.name)">
							  <html:option value=""></html:option>
							  <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						  </html:select></span>����ͳ�ƣ�</span>
						  <span id="i18" style="display:">�Թ���˽Ϊ
						  <span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="ocpy_corp" onchange="addId(this.name,'i18')">
							  <html:option value=""></html:option>
							  <logic:iterate id="list" name="OPTION_CMPR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						  </html:select></span>��</span>
						  <span id="ocpy_id0" style="display:">
						  �걨ͳ������Ϊ<span class="selectRedCountry"><html:select styleClass="selectListRedCountry" title="ocpy_natp" property="ocpy_natp">
							  <html:option value=""></html:option>
							  <logic:iterate id="list" name="OPTION_NATP">
								<%String[] value = (String[]) list;%>
								<html:option value="<%=value[1]%>">
									<%=value[0]%>								</html:option>
							</logic:iterate></html:select></span>��</span>�ջ�����Ϊ<span class="selectRed"><html:select styleClass="selectListRed" title="ocpy_shtp" property="ocpy_shtp">
							  <html:option value=""></html:option>
							  <logic:iterate id="list" name="OPTION_SHTP">
								<%String[] value = (String[]) list;%>
								<html:option value="<%=value[1]%>">
									<%=value[0]%>								</html:option>
							</logic:iterate>
						  </html:select></span>��<span id="i99">�걨��Ϊ<html:text styleClass="text_red" maxlength="12" title="ocpy_stno" property="ocpy_stno"/>��</span>
						  <span id="i19">���״���Ϊ<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ocpy_tytp" onchange="addId(this.name,'i19')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_TYTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
											</logic:iterate>
						</html:select>
						</span>��</span>
						  <span id="i20">��������Ϊ<span class="selectBlueS"><html:select styleClass="selectListBlueS" property="ocpy_nat" onchange="addId(this.name,'i20')">
							  <html:option value=""></html:option>
							  <logic:iterate id="list" name="OPTION_NAT">
								<%String[] value = (String[]) list;%>
								<html:option value="<%=value[1]%>">
									<%=value[0]%></html:option>
							</logic:iterate>
						    </html:select>
						  </span>��</span></div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="ocacCheckbox"  id="DC9" value="ocac" disabled=true onClick="cheinneri(this.checked,'ocac'),switchcheckbox('icacCheckbox','ocac'),checktitle('icac_','ocac'),checkocac()" <%if(map!=null&&map.get("ocacCheckbox")!=null&&!((String)map.get("ocacCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
						<strong>�����У��������գ��жҵǼ�</strong>
						<div id="ocac" style="display:none">�ڳ�����Զ�����µĳ�������ҵ���У��������յ������з����Ľ����̳жҵ��ģ����жҵǼǣ������ĳжҽ��Ϊ
						<html:text styleClass="text_red" maxlength="12" title="ocac_dlam" property="ocac_dlam"  size="12" onblur="addDot(this)"/>������Ϊ
						<html:text styleClass="text_red" maxlength="8" title="ocac_dudt" property="ocac_dudt" onclick="openWin('date','ocac_dudt')" size="8"/>
						��</div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="ocrjCheckbox" id="DC10" value="ocrj" disabled=true onClick="cheinneri(this.checked,'ocrj'),checkocrj(),checktitle('icrj_','ocrj')" <%if(map!=null&&map.get("ocrjCheckbox")!=null&&!((String)map.get("ocrjCheckbox")).equals("")) out.print("checked");%>>					</td>
				<td>
					<strong>�����У��������գ��ܳж�/����Ǽ�</strong>
							<div id="ocrj" style="display:none">�������յ������еľܾ��жһ�ܾ�����ĵ��ģ����ܳж�/����Ǽ�ҵ��</div>				</td>
				</tr>
			</table>
			<br>
            <table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="ocnpCheckbox" id="DC11" value="ocnp" disabled=true onClick="cheinneri(this.checked,'ocnp'),switchcheckbox(this.name,'icnp'),checktitle('ocrj_','ocnp')" <%if(map!=null&&map.get("ocnpCheckbox")!=null&&!((String)map.get("ocnpCheckbox")).equals("")) out.print("checked");%>>					</td>
				<td>
					<strong>�����У��������գ��޳�����</strong>
							<div id="ocnp" style="display:none">�������յ������оܳ�/������ĺ������������󣬳�����ָʾ�����н����̿����޳�ȡ�����յ��ݵ�ҵ�������ҵ��¼������ɵ��ķ��͸������С�</div>				</td>
				</tr>
			</table>
			<br>
            <table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="icnpCheckbox" id="DC12" value="icnp" disabled=true  onClick="cheinneri(this.checked,'icnp'),boxocrt(),checktitle('ocnp_','icnp')" <%if(map!=null&&map.get("icnpCheckbox")!=null&&!((String)map.get("icnpCheckbox")).equals("")) out.print("checked");%>>					</td>
				<td>
					<strong>�����У����ڴ��գ��޳�����</strong>
							<div id="icnp" style="display:none">���ڴ������޳���������������
							<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="icnp_chco" property="icnp_chco" >
                                <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                            </html:select>
                            </span>���շѷ�ʽ���ķ�ʽ��ͻ���ȡ������
						<span id="j03">����
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="icnp_tltp" onchange="addId(this.name,'j03')">
								<html:option value=""></html:option>
								<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
							</html:select>
							</span>���籨�����ͣ��ʵ��</span><span id="j04">
							<html:text styleClass="text_blue" maxlength="12" property="icnp_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'j04')"/>
							��ʵ�յ籨�ѽ���</span><span id="j05">��ݹ���Ϊ
							<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="icnp_cncd" onchange="addId(this.name,'j05')">
								<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%></html:option>
											</logic:iterate>
										</logic:notEmpty>
							</html:select>
							</span></span>��</div>				</td>
				</tr>
			</table>
			<br>
            <table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
						<input type="checkbox" name="icrtCheckbox" id="DC13" value="icrt" disabled=true onClick="cheinneri(this.checked,'icrt'),boxicrt(),switchcheckbox(this.name,'ocrt')" <%if(map!=null&&map.get("icrtCheckbox")!=null&&!((String)map.get("icrtCheckbox")).equals("")) out.print("checked");%>>					</td>
				<td>
					<strong>�����У����ڴ��գ��˵�</strong>
							<div id="icrt" style="display:none">���ڴ������˵�����������
							<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="icrt_chco" property="icrt_chco" >
                                <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>

                            </html:select>
                            </span>���շѷ�ʽ���ķ�ʽ��ͻ���ȡ������<span id="k03">����
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="icrt_tltp" onchange="addId(this.name,'k03')">
								<html:option value=""></html:option>
								<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
							</html:select></span>���籨�����ͣ��ʵ��</span><span id="k04">
							<html:text styleClass="text_blue" maxlength="12" property="icrt_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'k04')"/>
							��ʵ�յ籨�ѽ���</span><span id="k05">��ݹ���Ϊ
							 <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="icrt_cncd" onchange="addId(this.name,'k05')">
							<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty></html:select>
							</span></span>��</div>				</td>
				</tr>
			</table> <br>
			<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="ocrtCheckbox" id="DC14" value="ocrt" disabled=true onClick="cheinneri(this.checked,'ocrt'),boxocrt(),checktitle('icrt_','ocrt')" <%if(map!=null&&map.get("ocrtCheckbox")!=null&&!((String)map.get("ocrtCheckbox")).equals("")) out.print("checked");%>>					</td>
				<td>
					<strong>�����У��������գ��˵��Ǽ�</strong>
							<div id="ocrt" style="display:none">������(��������)�ܸ����յ��ݣ�����ָʾ�����н������˻������У��������յ��˵�����еǼǲ������������ɵ��ķ��͸������С�</div>				</td>
				</tr>
			</table>
			<br>
				<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="occlCheckbox" id="DC15" value="occl"  disabled=true  onClick="cheinneri(this.checked,'occl'),switchcheckbox(this.name,'iccl'),checktitle('occl_','iccl')" <%if(map!=null&&map.get("occlCheckbox")!=null&&!((String)map.get("occlCheckbox")).equals("")) out.print("checked");%>>					</td>
				<td>
					<strong>�����У��������գ�����</strong>
							<div id="occl" style="display:none">�Գ������յ�����ȫ���ջ�򱻴����оܸ����˵��ĵǼǲ�����ֻ���������ڲ��ĵǼǲ�����</div>				</td>
				</tr>
			</table>
				<br>
	            <table width="98%">
                    <tr>
                        <td width="3%" align="center" valign="top">
                            <input type="checkbox" id="DC16" name="icclCheckbox" value="iccl" disabled=true  onClick="cheinneri(this.checked,'iccl')" <%if(map!=null&&map.get("icclCheckbox")!=null&&!((String)map.get("icclCheckbox")).equals("")) out.print("checked");%>>                        </td>
                        <td> <strong>�����У����ڴ��գ�����</strong>
                                <div id="iccl" style="display:none">���ڴ���������</div>                        </td>
                    </tr>
                </table>
				
			
			</div></td>
<td class="innerTable_right_y"> </td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td align="center" class="innerTable_bottom_x"><input type="hidden" name="DCH" id="DCH" value="">
            <input type="hidden" name="LCHVAL" id="LCHVAL" value="">
			<input type="hidden" name="idPS" id="idPS" value="">
			<input type="hidden" name="lastprid" id="lastprid" value="">

                        <button class="btn btn-primary" onclick="checkType('DCH','DC');return false" type="submit">
                            <i class="fa fa-plus fa-2x"></i>����
                        </button>
			&nbsp;&nbsp;&nbsp;&nbsp;
                        <button class="btn btn-primary" onclick="openReplace('cases.do?flag=list');return false">
                            <i class="fa fa-level-up fa-2x"></i>����
                        </button>
			<html:hidden property="aveValue"/>
		    <html:hidden property="idM"/>
		    <html:hidden value="03" property="type"/>
		    <html:hidden value="�����С�������ҵ�����" property="name"/>
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
</body>
</html:form>
<script>
function cheinneri(cha1,cha2)
{//�����ǰ��ѡ��ѡ���ж���һ�������еı�ѡ���Ƿ�ȫ����������Ӧ�Ĳ������ʾ��
	var cha11=cha1;
	var cha22=cha2;
	var prid=cha22+"_";
	if(cha11)
	{
		$(cha22).style.display="";
	}
	else
	{//������Ӧ�㲻����ʾ���ң�
		$(cha22).style.display="none";
		cheAll(prid);//�˲��µı��ؼ�ֵ��Ϊ�գ�
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

function shewaitongji(operation)
{//�Ƿ�����ͳ��
	var operationType=$(operation).value;
	switch(operationType)
	{
		case "0":
			$("i18").style.display="";
			$("i99").style.display="";
			break;
		case "1"://1-no
			$("i18").style.display="none";
			$("i99").style.display="none";
			$("ocpy_corp").value="";
			$("ocpy_stno").value="";
			delId("i18");
			delId("i99");
			break;
		}
}

function waihui(operation)
{//���������ʽ
	var operationType=operation;
	operationType=$(operationType).value;
	switch(operationType)
	{
	case "2":
		$("i13").style.display="";//���
		$("i14").style.display="none";
		$("i15").style.display="none";
		//$("i16").style.display="none";
		$("ocpy_slrt").value="";
		$("ocpy_byft").value="";
		//$("ocpy_blan").value="";
		delId("i14");
		delId("i15");
		//delId("i16");
		break;
	case "3":
		$("i13").style.display="none";
		$("ocpy_exr2").value="";
		delId("i13");
		$("i14").style.display="";
		$("i15").style.display="";
		//$("i16").style.display="";
		break;
	}
}
function switchjffsts(objectJffs)
{//�жϽ⸶��ʽΪԭ������/����,���ۻ�����/����,�׻�����/����(������-���ڴ���-�ջ㼰�⸶)	
	var objectjffsType=objectJffs;
	objectjffsType=$(objectjffsType).value;
	switch(objectjffsType)
	{
	case "1":// "ԭ������/����", "1"
		$("i02").style.display="";//���ۻ�����/����
		$("i03").style.display="";
		$("i04").style.display="none";//���ۻ�����/����
		$("i05").style.display="none";
		$("i06").style.display="none";
		$("i07").style.display="none";
		$("i08").style.display="none";
		$("ocpy_stam").value="";
		$("ocpy_rmac").value="";
		$("ocpy_exrt").value="";
		$("ocpy_shxz").value="";
		$("ocpy_exam").value="";
		delId("i04");
		delId("i05");
		delId("i06");
		delId("i07");
		delId("i08");
		$("i09").style.display="none";//�׻�����/����
		$("i10").style.display="none";
		$("i11").style.display="none";
		$("i12").style.display="none";
		$("i13").style.display="none";
		$("i14").style.display="none";//������
		$("i15").style.display="none";//�����
		//$("i16").style.display="none";
		$("ocpy_pdam").value="";
		$("ocpy_thcy").value="";
		$("ocpy_thac").value="";
		$("ocpy_fxkd").value="";
		$("ocpy_exr2").value="";
		$("ocpy_slrt").value="";
		$("ocpy_byft").value="";
		//$("ocpy_blan").value="";
		delId("i09");
		delId("i10");
		delId("i11");
		delId("i12");
		delId("i13");
		delId("i14");
		delId("i15");
		//delId("i16");
		break;
	case "2":// "���ۻ�����/����", "2" 
		$("i02").style.display="none";//ԭ������/����
		$("i03").style.display="none";
		$("ocpy_dcam").value="";
		$("ocpy_stac").value="";
		delId("i02");
		delId("i03");
		$("i04").style.display="";
		$("i05").style.display="";
		$("i06").style.display="";
		$("i07").style.display="";
		$("i08").style.display="";
		$("i09").style.display="none";
		$("i10").style.display="none";
		$("i11").style.display="none";
		$("i12").style.display="none";
		$("i13").style.display="none";
		$("i14").style.display="none";
		$("i15").style.display="none";
		//$("i16").style.display="none";
		$("ocpy_pdam").value="";
		$("ocpy_thcy").value="";
		$("ocpy_thac").value="";
		$("ocpy_fxkd").value="";
		$("ocpy_exr2").value="";
		$("ocpy_slrt").value="";
		$("ocpy_byft").value="";
		//$("ocpy_blan").value="";
		delId("i09");
		delId("i10");
		delId("i11");
		delId("i12");
		delId("i13");
		delId("i14");
		delId("i15");
		//delId("i16");
		break;
	case "3"://"�׻�����/����", "3"
		$("i02").style.display="none";//ԭ������/����
		$("i03").style.display="none";
		$("ocpy_dcam").value="";
		$("ocpy_stac").value="";
		delId("i02");
		delId("i03");
		$("i04").style.display="none";//���ۻ�����/����
		$("i05").style.display="none";
		$("i06").style.display="none";
		$("i07").style.display="none";
		$("i08").style.display="none";
		$("ocpy_stam").value="";
		$("ocpy_rmac").value="";
		$("ocpy_exrt").value="";
		$("ocpy_shxz").value="";
		$("ocpy_exam").value="";
		delId("i04");
		delId("i05");
		delId("i06");
		delId("i07");
		delId("i08");
		$("i09").style.display="";//���ۻ�����/����
		$("i10").style.display="";
		$("i11").style.display="";
		$("i12").style.display="";
		$("i13").style.display="";
		$("i14").style.display="";
		$("i15").style.display="";
		//$("i16").style.display="";
		break;
/*	default:// "��ͻ���", "4" ,"�ۿͻ���", "5"
		$("i02").style.display="none";//ԭ������/����
		$("i03").style.display="none";
		$("ocpy_dcam").value="";
		$("ocpy_stac").value="";
		$("i04").style.display="none";//���ۻ�����/����
		$("i05").style.display="none";
		$("i06").style.display="none";
		$("i07").style.display="none";
		$("i08").style.display="none";
		$("ocpy_stam").value="";
		$("ocpy_rmac").value="";
		$("ocpy_exrt").value="";
		$("ocpy_shxz").value="";
		$("ocpy_exam").value="";
		$("i09").style.display="";//���ۻ�����/����
		$("i10").style.display="";
		$("i11").style.display="";
		$("i12").style.display="";
		$("i13").style.display="";
		$("i14").style.display="";
		$("i15").style.display="";
		//$("i16").style.display="";
		break;*/
	}
}
 
function jiqiyuanqi(selevalue)
{//���Ϊ�����ڡ�����ɽ��С���������Ϊ��Զ�ڡ�����ɽ��С��жҡ�
  var c1=selevalue;
  switch(c1)
	{
	case "0"://����
		$("icpyCheckbox").disabled=false;//�����ѡ
		$("icacCheckbox").disabled=true;//�жҲ���ѡ
		$("icacCheckbox").checked="";
		$('icac').style.display="none";
		$("icrjCheckbox").disabled=false;//�ܸ���ѡ
		break;
	case "1"://Զ��
	   if($("ocpyCheckbox").checked)
	   {
		 $("icpyCheckbox").disabled=false;
		 switchcheckbox('ocacCheckbox','icpy');
	   }
		 $("icrjCheckbox").disabled=true;
		 $("icrjCheckbox").checked="";
		 $('icrj').style.display="none";
		 $("icacCheckbox").disabled=false;
		 //cheinneri('icacCheckbox'.checked,'icac');
		break;
	case "2"://Զ��
	   if($("ocpyCheckbox").checked)
	   {
		 $("icpyCheckbox").disabled=false;
		 switchcheckbox('ocacCheckbox','icpy');
	   }
		 $("icrjCheckbox").disabled=true;
		 $("icrjCheckbox").checked="";
		 $('icrj').style.display="none";
		 $("icacCheckbox").disabled=false;
		// cheinneri('icacCheckbox'.checked,'icac');
		break;
   case "3"://����
		 $("icrjCheckbox").disabled=true;
		 $("icrjCheckbox").checked="";
		 $('icrj').style.display="none";
		 $("icpyCheckbox").disabled=true;
		 $("icpyCheckbox").checked="";
		 $("icpy").style.display="none";
		 $("icacCheckbox").disabled=true;
		 $("icacCheckbox").checked="";
		 $('icac').style.display="none";
		break;
	}
}
 
function boxicrg()
{//�������"���ڴ��յǼ�icrg",��������������޸�ocup��,"�ж�icac",���ܸ�icrj��,"����icpy","���ջ���octr","�˵�icrt"��

if($("icrgCheckbox").checked)
   {
    boxocup();//���������޸�
    $("ocupCheckbox").disabled=false;
	$("octrCheckbox").disabled=false;
	$("icrtCheckbox").disabled=false;
	var opt1=document.getElementById("ocrg_pstp").options[document.getElementById("ocrg_pstp").selectedIndex].value;
	jiqiyuanqi(opt1);
   } 
else
  {
	disable();
  } 
}

function boxocup()
{//�������"���������޸ġ���ĩ�������ڴ����޸ġ�
//����������ڴ����޸ġ��Ҳ�����"�ж�",���ܸ�,"����","���ջ���octr","�˵�icrt"��
if(($("ocupCheckbox").checked)&&(!$("iccgCheckbox").checked))
   {
	$("iccgCheckbox").disabled=false;
	//$("icacCheckbox").disabled=true;
	//$("icrjCheckbox").disabled=true;
	//$("icpyCheckbox").disabled=true;
	//$("octrCheckbox").disabled=true;
	//$("icrtCheckbox").disabled=true;
	//$("icacCheckbox").checked="";
	//	$("icrjCheckbox").checked="";
	//	$("icpyCheckbox").checked="";
	//	$("octrCheckbox").checked="";
	//	$("icrtCheckbox").checked="";
	//	$('icac').style.display="none";
	//	$('icrj').style.display="none";
	//	$('icpy').style.display="none";
	//	$('octr').style.display="none";
	//	$('icrt').style.display="none";
	switchcheckbox('ocupCheckbox','iccg');
   } 
  else{
	switchcheckbox('ocupCheckbox','iccg');
  } 
}

function boxiccg()
{//������������ڴ����޸�,�����"�ж�icac",���ܸ�icrj��,"����icpy","���ջ���octr","�˵�icrt"��
	if($("iccgCheckbox").checked&&$("ocupCheckbox").checked)
	   {
		$("octrCheckbox").disabled=false;
		$("icrtCheckbox").disabled=false;
		var opt3=document.getElementById("iccg_pstp").options[document.getElementById("iccg_pstp").selectedIndex].value;
		jiqiyuanqi(opt3);
	  }
}

function boxicrj()
{ //����ѡ��ܸ���,1�򡰳жҡ�&�����&"�˵�"��������2�������ܳж�/�����3���û�������ջ�����򡰴��ջ������ѡ
	if($("icrjCheckbox").checked)
	 {
		$("icac").style.display="none";//�ж�
		$("icacCheckbox").disabled=true;
		$("icacCheckbox").checked="";
		$("icpy").style.display="none";//����
		$("icpyCheckbox").disabled=true;
		$("icpyCheckbox").checked="";
		$("icrt").style.display="none";//�˵�
		$("icrtCheckbox").disabled=true;
		$("icrtCheckbox").checked="";
		switchcheckbox('icrjCheckbox','ocrj');
		if(!$("octrCheckbox").checked)
		{
			$("octrCheckbox").disabled=true;
		}
	 }else{
		switchcheckbox('icrjCheckbox','ocrj');
		switchcheckbox('ocrjCheckbox','ocnp');
		switchcheckbox('ocnpCheckbox','icnp');
		boxocrt();//����
	}
}

function checkoctr()
 {//���������ջ������ɡ����,���жҡ�,���ܸ���
   if($("octrCheckbox").checked)
   {
	  $('icrt').style.display="none";//�˵�����ѡ
	  $("icrtCheckbox").disabled=true;
	  $("icrtCheckbox").checked="";
	  var opt1=document.getElementById("ocrg_pstp").options[document.getElementById("ocrg_pstp").selectedIndex].value;
	  var opt2=document.getElementById("iccg_pstp").options[document.getElementById("iccg_pstp").selectedIndex].value;
	  if($("ocupCheckbox").checked)
	  {
		  jiqiyuanqi(opt2);
	  }else{
		  jiqiyuanqi(opt1);
		 // $("ocupCheckbox").disabled=true;
	  }
	}
 }
 
function checkicac()
 { //����ѡ��жҡ����򡰾ܸ���&"�˵�"���������������жҵǼǡ�
	if($("icacCheckbox").checked)
	 {
		$("icrj").style.display="none";//�ܸ�
		$("icrjCheckbox").disabled=true;
		$("icrjCheckbox").checked="";
		$("icrt").style.display="none";//�˵�
		$("icrtCheckbox").disabled=true;
		$("icrtCheckbox").checked="";
		switchcheckbox('icacCheckbox','ocac');
		if(!$("octrCheckbox").checked)
		{
			$("octrCheckbox").disabled=true;
		}
		/*if(!$("ocupCheckbox").checked)
		{
			$("ocupCheckbox").disabled=true;
		}*/
	 }
}
 
function checkocac()
 { //����ѡ��жҵǼǡ�&&���ջ�⸶������ɡ�����������ĩ������ɡ����
		if($("ocacCheckbox").checked)
		 {
			  boxocrt();
			  if(!$("ocpyCheckbox").checked){
				  switchcheckbox('ocacCheckbox','icpy');
			  } 
		 }
}
 
function checkicpy()
 { //����ѡ�����򡰾ܸ���&"�˵�"������
	if($("icpyCheckbox").checked)
	 {
		$("icrj").style.display="none";//�ܸ�
		$("icrjCheckbox").disabled=true;
		$("icrjCheckbox").checked="";
		$("icrt").style.display="none";//�˵�
		$("icrtCheckbox").disabled=true;
		$("icrtCheckbox").checked="";
		switchcheckbox('icpyCheckbox','ocpy');
		if(!$("octrCheckbox").checked)//���ջ���ĩ��������ջ����ѡ
		{
			$("octrCheckbox").disabled=true;
		}
		if(!$("icacCheckbox").checked)//�ж�ĩ������жҲ���ѡ
		{
			$("icacCheckbox").disabled=true;
		}
	}/*else
	{
		if(!$("ocupCheckbox").checked)
		{
			$("ocupCheckbox").disabled=true;
		}
	}*/
 }
 
function boxicrt()
 { //����ѡ��˵�����ɡ��˵��Ǽǡ��ҡ�������жҡ����ܸ��������ջ��������
	if($("icrtCheckbox").checked)
	 {
		$("octrCheckbox").disabled=true;
		$("icpyCheckbox").disabled=true;
		$("icacCheckbox").disabled=true;
		$("icrjCheckbox").disabled=true;
		$("octrCheckbox").checked="";
		$("icpyCheckbox").checked="";
		$("icacCheckbox").checked="";
		$("icrjCheckbox").checked="";
		$("octr").style.display="none";
		$("icpy").style.display="none";
		$("icac").style.display="none";
		$("icrj").style.display="none";
		switchcheckbox('icrtCheckbox','ocrt');
		/*if(!$("ocupCheckbox").checked)
		{
			$("ocupCheckbox").disabled=true;
		}*/
	  }
 }

function boxocrt()
 { //�����"�޳�����icnp"||"�ջ�⸶"||"�˵��Ǽ�"||"�жҵǼ�"�����"����"
	if($("icnpCheckbox").checked||$("ocpyCheckbox").checked||$("ocrtCheckbox").checked||$("ocacCheckbox").checked)
	 {
		$("occlCheckbox").disabled=false;
		}
 }
 
function checkocrj()
{
	switchcheckbox("ocrjCheckbox","ocnp");
	switchcheckbox("ocnpCheckbox","icnp");
} 
 
function checkChc()
{//onload��ʼ��
	cheId();//onloadʱ���û�е���addId();��$("idPS").value=���ݿ��ֵ���������addId();��$("idPS").value+=�¼ӵ�id;
	cheinneri(fir("DC0"),"ocrg");
	cheLoa();//ȡ���ϴβ����У���ѡ�е�checkbox�����Ұ���Ӧ����ɿ�ѡ��
	shewaitongji("ocpy_strn");
	switchcheckbox('ocrjCheckbox','ocnp');//����"�ܳж�/����"�����"�޳�����"
	switchcheckbox('ocnpCheckbox','icnp');//�޳�����
	switchcheckbox('occlCheckbox','iccl');//����
	switchpstp('ocrg_pstp','ocrg_tenr','a99','a01');
	switchpstp('ocup_pstp','ocup_tenr','c99','c03');
	switchpstp('iccg_pstp','iccg_tenr','d99','d03');
	switchjffsts('ocpy_jffs');
	waihui('ocpy_fxkd');
}
	
function che()
{//�����һ����ѡ��ѡ�����һ��div����ʾ��icrgΪ��ѡ��
	if($("ocrgCheckbox").checked)
	{
		$("ocrgCheckbox").style.display="";
		$("icrgCheckbox").disabled=false;
		$("icrgCheckbox").checked="";
		$("icrg").style.display="none";
		//cheAll("icrg");
	}else
	{//�����һ����ѡ��û��ѡ��������checkboxΪ����ѡ�����Ӧ��divΪ���أ�
		disable();
	}
}

function cheocup()
{//����޸�����ҵ�����ͣ�
	$("iccgCheckbox").disabled=false;
	$("octrCheckbox").disabled=true;
	$("icpyCheckbox").disabled=true;
	$("icacCheckbox").disabled=true;
	$("icrjCheckbox").disabled=true;
	$("ocpyCheckbox").disabled=true;
	$("ocacCheckbox").disabled=true;
	$("ocrjCheckbox").disabled=true;
	$("ocnpCheckbox").disabled=true;
	$("icnpCheckbox").disabled=true;
	$("icrtCheckbox").disabled=true;
	$("ocrtCheckbox").disabled=true;
	$("occlCheckbox").disabled=true;
	$("icclCheckbox").disabled=true;
	$("iccgCheckbox").checked="";
	$("octrCheckbox").checked="";
	$("icpyCheckbox").checked="";
	$("icacCheckbox").checked="";
	$("icrjCheckbox").checked="";
	$("ocpyCheckbox").checked="";
	$("ocacCheckbox").checked="";
	$("ocrjCheckbox").checked="";
	$("ocnpCheckbox").checked="";
	$("icnpCheckbox").checked="";
	$("icrtCheckbox").checked="";
	$("ocrtCheckbox").checked="";
	$("occlCheckbox").checked="";
	$("icclCheckbox").checked="";
	$("iccg").style.display="none";
	$("octr").style.display="none";
	$("icpy").style.display="none";
	$("icac").style.display="none";
	$("icrj").style.display="none";
	$("ocpy").style.display="none";
	$("ocac").style.display="none";
	$("ocrj").style.display="none";
	$("ocnp").style.display="none";
	$("icnp").style.display="none";
	$("icrt").style.display="none";
	$("ocrt").style.display="none";
	$("occl").style.display="none";
	$("iccl").style.display="none";
}

function cheiccg()
{//����޸�����ҵ�����ͣ�
	$("iccgCheckbox").disabled=false;
	$("octrCheckbox").disabled=true;
	$("icpyCheckbox").disabled=true;
	$("icacCheckbox").disabled=true;
	$("icrjCheckbox").disabled=true;
	$("ocpyCheckbox").disabled=true;
	$("ocacCheckbox").disabled=true;
	$("ocrjCheckbox").disabled=true;
	$("ocnpCheckbox").disabled=true;
	$("icnpCheckbox").disabled=true;
	$("icrtCheckbox").disabled=true;
	$("ocrtCheckbox").disabled=true;
	$("occlCheckbox").disabled=true;
	$("icclCheckbox").disabled=true;
	$("octrCheckbox").checked="";
	$("icpyCheckbox").checked="";
	$("icacCheckbox").checked="";
	$("icrjCheckbox").checked="";
	$("ocpyCheckbox").checked="";
	$("ocacCheckbox").checked="";
	$("ocrjCheckbox").checked="";
	$("ocnpCheckbox").checked="";
	$("icnpCheckbox").checked="";
	$("icrtCheckbox").checked="";
	$("ocrtCheckbox").checked="";
	$("occlCheckbox").checked="";
	$("icclCheckbox").checked="";
	$("octr").style.display="none";
	$("icpy").style.display="none";
	$("icac").style.display="none";
	$("icrj").style.display="none";
	$("ocpy").style.display="none";
	$("ocac").style.display="none";
	$("ocrj").style.display="none";
	$("ocnp").style.display="none";
	$("icnp").style.display="none";
	$("icrt").style.display="none";
	$("ocrt").style.display="none";
	$("occl").style.display="none";
	$("iccl").style.display="none";
	boxicrg();
}

function disable()
{
	$("ocupCheckbox").disabled=true;
	$("iccgCheckbox").disabled=true;
	$("octrCheckbox").disabled=true;
	$("icpyCheckbox").disabled=true;
	$("icacCheckbox").disabled=true;
	$("icrjCheckbox").disabled=true;
	$("ocpyCheckbox").disabled=true;
	$("ocacCheckbox").disabled=true;
	$("ocrjCheckbox").disabled=true;
	$("ocnpCheckbox").disabled=true;
	$("icnpCheckbox").disabled=true;
	$("icrtCheckbox").disabled=true;
	$("ocrtCheckbox").disabled=true;
	$("occlCheckbox").disabled=true;
	$("icclCheckbox").disabled=true;
	$("ocupCheckbox").checked="";
	$("iccgCheckbox").checked="";
	$("octrCheckbox").checked="";
	$("icpyCheckbox").checked="";
	$("icacCheckbox").checked="";
	$("icrjCheckbox").checked="";
	$("ocpyCheckbox").checked="";
	$("ocacCheckbox").checked="";
	$("ocrjCheckbox").checked="";
	$("ocnpCheckbox").checked="";
	$("icnpCheckbox").checked="";
	$("icrtCheckbox").checked="";
	$("ocrtCheckbox").checked="";
	$("occlCheckbox").checked="";
	$("icclCheckbox").checked="";
	$("ocup").style.display="none";
	$("iccg").style.display="none";
	$("octr").style.display="none";
	$("icpy").style.display="none";
	$("icac").style.display="none";
	$("icrj").style.display="none";
	$("ocpy").style.display="none";
	$("ocac").style.display="none";
	$("ocrj").style.display="none";
	$("ocnp").style.display="none";
	$("icnp").style.display="none";
	$("icrt").style.display="none";
	$("ocrt").style.display="none";
	$("occl").style.display="none";
	$("iccl").style.display="none";
}	

	
function cheLoa()
{//��onLoadʱ��
	//che();//����һ����ѡ���Ƿ�ѡ��������ҳ������checkbox����Ӧ��div״̬;
	switchcheckbox('ocrgCheckbox','icrg');
	boxicrg();//���ڴ��յǼ�
	
	checkoctr();//���ջ���
	boxicrj();//�ܸ�
	boxicrt();//�˵�
	checkicac();//�ж�
	checkicpy();//����
	boxiccg();//���ڴ����޸�
	checkocac();//�жҵǼǣ�
	checkocrj();//�ܳ�/����
	boxocrt();//����
	var char=new Array();
		char=onLoadCheck('DCH','DC');
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
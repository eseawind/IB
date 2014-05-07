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
<head>
<link href="/IB/case/case.css" rel="stylesheet" type="text/css">
<script language="javascript" type="text/javascript"
    src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript"
    src="/IB/case/case.js"></script>
</head>
<%--���ʽ��㰸�����ģ�-��Ʊ������ҵ�����--%>
<html:html>
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
	<html:form action="caseDetailCleanDraftCollection.do">
	  <table width="100%" border="0" cellpadding="0" cellspacing="0">
     <tr>
        <td width="11%" align="left" valign="top">&nbsp;&nbsp;<strong>�������ͣ�</strong></td>
        <td width="89%" align="left" valign="top">��Ʊ������ҵ�����</td>
      </tr>
	 
	  <tr>
        <td width="11%" align="left" valign="top">&nbsp;&nbsp;<strong>�������ƣ�</strong></td>
        <td width="89%" align="left" valign="top"><label>
          <html:text styleClass="kuang"  property="detai" size="30" maxlength="30"/>
        </label></td>
      </tr>
      <tr>
        <td align="left" valign="top">&nbsp;&nbsp;<strong>����������</strong></td>
        <td align="left" valign="top"><html:text property="grade" size="3" maxlength="3" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" styleClass="kuang"/>
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
			<input type="checkbox" name="ccrgCheckbox" id="CD0" value="ccrg" onClick="cheinner(this.checked,'ccrg'),che('ccrg')" <%if(map!=null&&map.get("ccrgCheckbox")!=null&&!((String)map.get("ccrgCheckbox")).equals("")) out.print("checked");%>>			</td>
			<td align="left" valign="top">
					   <strong>��Ʊ���գ���Ʊ���յǼ�</strong>
						<div id="ccrg" style="display:none">
						    ί������
						        <html:text styleClass="text_red" maxlength="8" title="ccrg_psdt" property="ccrg_psdt" onclick="openWin('date','ccrg_psdt')" size="8"/>
							���������ڣ�ί�������н��й�Ʊ�����գ��տ��˴���Ϊ
							<html:text styleClass="text_red" maxlength="12" title="ccrg_clno" property="ccrg_clno" onclick="openWin('client',',ccrg_clno,')"/>
							������
							<span class="selectRedBH"><html:select styleClass="selectListRedBH" title="ccrg_bitp" property="ccrg_bitp">
							<html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_BITP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
	                            </html:select>
							</span>��Ʊ�����ͣ�Ʊ�ݣ�
							<html:text styleClass="text_red" maxlength="12" title="ccrg_blcn" property="ccrg_blcn"/>
							�ţ����Ϊ
							 <span class="selectRed"><html:select styleClass="selectListRed" title="ccrg_cyno" property="ccrg_cyno">
							 <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
								</html:select>
						  </span>��Ʊ�ݱ��֣���
						  <html:text styleClass="text_red" maxlength="12" title="ccrg_amts" property="ccrg_amts" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
							��Ʊ�ݽ���<span id="a01">Ʊ�ݺ���Ϊ
							<html:text styleClass="text_blue" maxlength="12" property="ccrg_blno" onclick="addId(this.name,'a01')"/>
							��</span>��������
							<span id="a02">
							 <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ccrg_ccmd" onchange="addId(this.name,'a02')">
							 <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_CCMD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                            </html:select></span></span>
							�����շ�ʽ���ķ�ʽ�������գ�
							�Է���������
							<html:text styleClass="text_red" maxlength="12" title="ccrg_icbk" property="ccrg_icbk" onclick="openWin('bank1','ccrg_icbk')"/>
							 ��<span id="a03">������<html:text styleClass="text_blue" maxlength="12" property="ccrg_pre1" onclick="addId(this.name,'a03')"/>
							 ��</span>��
							 <span class="selectRedCountry"><html:select styleClass="selectListRedCountry" title="ccrg_cncd" property="ccrg_cncd">
							 <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
                           </html:select>
							</span>�������˹��𣩣�
							<span id="a04">
							<html:text styleClass="text_blue" maxlength="12" property="ccrg_cncd2" onclick="addId(this.name,'a04')"/>����������</span>
							����
							<span id="a05">
							 <span class="selectBlue"><html:select styleClass="selectListBlue" property="ccrg_nat" onchange="addId(this.name,'a05')">
							 <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_NAT">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                          </html:select></span>���������ԣ���						  </span>����
						  <span class="selectRedCountry"><html:select styleClass="selectListRedCountry" title="ccrg_natp" property="ccrg_natp">
						  <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_NATP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						  </html:select>
						  </span>���걨ͳ�����ͣ����걨ͳ�ƣ�<span id="a06">����������
							<html:text styleClass="text_blue" maxlength="12" property="ccrg_dtno" onclick="addId(this.name,'a06')"/>��</span>
						 ��������
						 <span class="selectRedMS"><html:select styleClass="selectListRedMS" property="ccrg_chco" onchange="addId(this.name,'a01')">
									 <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
											</logic:iterate>
								</html:select>
                          </span>���շѷ�ʽ���ķ�ʽ��ͻ���ȡ�����ѡ�</span>
					  </div>			</td>
         </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
                 <input type="checkbox" name="cctrCheckbox" id="CD1" value="cctr" disabled="disabled" onClick="cheinner(this.checked,'cctr')"<%if(map!=null&&map.get("cctrCheckbox")!=null&&!((String)map.get("cctrCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td> <strong>��Ʊ���գ�����</strong><br>
                    <div id="cctr" style="display:none">��������
<%--					 <span class="selectRedMS"><html:select styleClass="selectListRedMS" title="cctr_chco" property="cctr_chco" >--%>
					 <span class="selectRedMS"><html:select styleClass="selectListRedMS" title="cctr_chco" property="cctr_chco">
                           <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
                        </span>���շѷ�ʽ���ķ�ʽ��ͻ���ȡ������
						<span id="b99">������
							  <span class="selectBlue"><span id="b01"><html:select styleClass="selectListBlue" property="cctr_tltp" onchange="addId(this.name,'b01')">
                                    <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                            </html:select></span></span>���籨�����ͣ��ʵ�ѣ�</span>
								<span id="b02">
                               <html:text styleClass="text_blue" maxlength="12" property="cctr_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'b02')"/>��ʵ���ʵ�ѽ���</span></div>            </td>
        </tr>
    </table>
	<br>
	<table width="98%">
        <tr>
            <td width="3%" align="center" valign="top">
                <input type="checkbox" name="ccpdCheckbox" id="CD2" value="ccpd" disabled="disabled" onClick="cheinner(this.checked,'ccpd')" <%if(map!=null&&map.get("ccpdCheckbox")!=null&&!((String)map.get("ccpdCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td> <strong>��Ʊ���գ�����Ʊ��</strong><br>
                    <div id="ccpd" style="display:none"><span id="c01"> �տ��ˣ��ͻ��ţ�Ϊ
                        <html:text styleClass="text_blue" maxlength="12" property="ccpd_clno" onclick="openWin('clientNum',',ccpd_clno,'),addId(this.name,'c01')"/>
                        ��</span>����������
                        <html:text styleClass="text_red" maxlength="12" title="ccpd_obrt" onkeypress="regInput(/^\d{1,}\.?\d{0,5}$/)" onblur="addDot(this)"  property="ccpd_obrt"/>
                        ���տ����ʺ���
                        <html:text styleClass="text_red" maxlength="12" title="ccpd_acno" property="ccpd_acno" onclick="openWinNum('accountNum','ccpd_acno','ZH0004')"/>
                        ��<span id="c02">������
                        <html:text styleClass="text_blue" maxlength="12" property="ccpd_exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,5}$/)" onblur="addDot(this)"  onclick="addId(this.name,'c02')"/>
                        ��</span><span id="c03">��������ʽ����
                        <html:text styleClass="text_blue" maxlength="12" property="ccpd_exam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'c03')"/>
                        ��</span></div>            </td>
        </tr>
    </table>
	<br>
            <table width="98%" id="">
				<tr>
					<td width="3%" align="center" valign="top">
					    <input type="checkbox" name="ccpyCheckbox" id="CD3" value="ccpy" disabled="disabled" onClick="cheinner(this.checked,'ccpy')" <%if(map!=null&&map.get("ccpyCheckbox")!=null&&!((String)map.get("ccpyCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
							<strong>��Ʊ���գ��ջ㼰�⸶</strong>
								<div id="ccpy" style="display:none">
								       <span id="d02">�������յ������еĸ�����ĺ͹�Ʊ������ջ㲢�⸶��ί���ˡ�
								        �ý⸶������
								        <html:text styleClass="text_blue" maxlength="8" property="ccpy_crdt" onclick="openWin('date','ccpy_crdt'),addId(this.name,'d02')" size="8"/>
								        ��ƾ֤�������ڣ����к�����</span>
										<span id="d01">������Ϊ
										<html:text styleClass="text_blue" maxlength="12" property="ccpy_ckno" onclick="addId(this.name,'d01')"/>
								        ��</span>
										�������շ�Ϊ
								        <html:text styleClass="text_red" maxlength="12" title="ccpy_caam" property="ccpy_caam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
								        ���ʵ�ѽ��Ϊ
								        <html:text styleClass="text_red" maxlength="12" title="ccpy_tsam" property="ccpy_tsam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" />
								        �����е��ʻ���Ϊ
								        <html:text styleClass="text_red" maxlength="12" title="ccpy_acbk" onclick="openWin('bank1','ccpy_acbk')" property="ccpy_acbk"/>
								        ������Ʊ�ݱ�Ϣ
								        <html:text styleClass="text_red" maxlength="12" title="ccpy_bbam" property="ccpy_bbam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
								        ��<span id="d03">ԭ�����ʽ��Ϊ
                                        <html:text styleClass="text_blue" maxlength="12" property="ccpy_dcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'d03')"/>
                                        ��</span><span id="d04">ԭ�������ʺ�Ϊ
                                        <html:text styleClass="text_blue" maxlength="12" property="ccpy_stac" onclick="addId(this.name,'d04')"/>
                                        ��</span><span id="d05">�������ҽ��Ϊ
                                        <html:text styleClass="text_blue" maxlength="12" property="ccpy_stam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'d05')"/>
                                        ��</span><span id="d06">��������ʺ�Ϊ
                                        <html:text styleClass="text_blue" maxlength="12" property="ccpy_rmac" onclick="addId(this.name,'d06')"/>
                                        ��</span><span id="d07">������Ϊ
                                        <html:text styleClass="text_blue" maxlength="12" property="ccpy_exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'d07')"/>
                                        ��</span><span id="d08">���׻���ҽ��Ϊ
                                        <html:text styleClass="text_blue" maxlength="12" property="ccpy_pdam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'d08')"/>
								        ��</span><span id="d09">�׻������ʺ�Ϊ
                                       <html:text styleClass="text_blue" maxlength="12" property="ccpy_thax" onclick="addId(this.name,'d09')"/>
                                        ��</span><span id="d10">��
										 <span class="selectRedMS"><html:select styleClass="selectListBlueMS" property="ccpy_fxkd" onchange="xunja('ccpy_exrt_Y','ccpy_exrt_N',this.name),addId(this.name,'d10')">
                                            <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_FXKD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                        </html:select>
                                        �����������ʽ������ʽ�����������</span></span>
										<span id="ccpy_exrt_Y" style="display:">
										��<span id="d11">���Ϊ
										<html:text styleClass="text_blue" maxlength="12" property="ccpy_exr2" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'d11')"/>
										</span></span>
										<span id="ccpy_exrt_N" style="display:">
										��<span id="d12">��
										<html:text styleClass="text_blue" maxlength="12" property="ccpy_slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'d12')"/>
										�������ۣ�������</span><span id="d13">��
										<html:text styleClass="text_blue" maxlength="12" property="ccpy_byft" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'d13')"/>
										</span>
										������ۣ����룬</span><span id="d14">�Ƿ�����ͳ��Ϊ
										<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ccpy_strn" onchange="addId(this.name,'d14')">
                                            <html:option value=""></html:option>
                                            <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                        </html:select>
                                        </span> </span>
										������е���
										 <span class="selectRedMS"><html:select styleClass="selectListRedMS" title="ccpy_corp" property="ccpy_corp">
                                            <html:option value=""></html:option>
                                            <logic:iterate id="list" name="OPTION_CMPR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
											</html:select>
                                        </span>
										 ���Թ���˽��ҵ��
										 <span class="selectRed"><html:select styleClass="selectListRed" title="ccpy_shtp" property="ccpy_shtp">
                                            <html:option value=""></html:option>
                                            <logic:iterate id="list" name="OPTION_SHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
	                                        </html:select>
                                        </span>
										���ջ����ͣ������ջ㣬�걨��Ϊ
                                        <html:text styleClass="text_red" maxlength="12" title="ccpy_stno" property="ccpy_stno"/>
										��<span id="d15">���е���
										<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ccpy_tytp" onchange="addId(this.name,'d15')">
							                    <html:option value=""></html:option>
							               <logic:iterate id="list" name="OPTION_TYTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
										  </logic:iterate>
						                   </html:select>
					                    </span>
										�����״��룩���ף�</span><span id="d16">��
										 <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ccpy_natp" onchange="addId(this.name,'d16')">
											<html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_NATP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
										</html:select>
										</span>
										���걨ͳ�����ͣ�</span><span id="d17">�������׸�����
										<html:text styleClass="text_blue" maxlength="12" property="ccpy_trmo" onclick="addId(this.name,'d17')"/>
										��</span></div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%" id="">
                <tr>
                    <td width="3%" align="center" valign="top">
                         <input type="checkbox" name="ccrtCheckbox" id="CD4" value="ccrt" disabled="disabled" onClick="cheinner(this.checked,'ccrt')" <%if(map!=null&&map.get("ccrtCheckbox")!=null&&!((String)map.get("ccrtCheckbox")).equals("")) out.print("checked");%>>                    </td>
                    <td> <strong>��Ʊ���գ��ջ�ǰ��Ʊ</strong>
                            <div id="ccrt" style="display:none"><span id="e01">�տ��˴���Ϊ
                                <html:text styleClass="text_blue" maxlength="12" property="ccrt_clno" onclick="openWin('client',',ccrt_clno,'),addId(this.name,'e01')"/>
                                ��</span><span id="e02">��������
                                <html:text styleClass="text_blue" maxlength="12" property="ccrt_icbk" onclick="openWin('bank1','ccrt_icbk'),addId(this.name,'e02')"/>
                                ��</span><span id="e03">��
<%--                                <span class="selectBlueMS"><html:select styleClass="selectListBlueMS" title="ccrt_chco" property="ccrt_chco" >--%>
							    <span class="selectBlueMS"><html:select styleClass="selectListBlueMS" title="ccrt_chco" property="ccrt_chco" onchange="addId(this.name,'e03')">
                                   <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                </html:select>
                                </span>���շѷ�ʽ���ķ�ʽ��ͻ���ȡ�����ѡ�</span></div>				</td>
			</tr>
		</table>
		<br>
		<table width="98%" id="">
			<tr>
				<td width="3%" align="center" valign="top">
					<input type="checkbox" name="ccclCheckbox" id="CD5" value="cccl" disabled="disabled" onClick="cheinner(this.checked,'cccl')" <%if(map!=null&&map.get("ccclCheckbox")!=null&&!((String)map.get("ccclCheckbox")).equals("")) out.print("checked");%>>				</td>
				<td>
					<strong>��Ʊ���գ�����</strong>
							<div id="cccl" style="display:none">��ҵ���������Ľ��׹��̺�����������Ǽǡ�</div>	</td>
			</tr>
		</table>
            
			
		</div></td>
			<td valign="top" class="innerTable_right_y"> </td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td align="center" valign="middle" class="innerTable_bottom_x"><input type="hidden" name="CDH" id="CDH" value="">
            <input type="hidden" name="LCHVAL" id="LCHVAL" value="">
			<input type="hidden" name="idPS" id="idPS" value="">
            <input type="image" src="/IB/images/submit.gif" onClick="checkType('CDH','CD');return false">
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="image" src="/IB/images/returnInto.gif" onClick="openReplace('cases.do?flag=list');return false" >
			<html:hidden property="aveValue"/>
			<html:hidden property="idM"/>
			<html:hidden value="04" property="type"/>
			<html:hidden value="submit" property="flag"/>
			<html:hidden value="��Ʊ������ҵ�����" property="name"/>
			<html:hidden property="id"/></td>
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
//���������ʽΪ��ѯ��/�Ƽۡ�
function xunja(id1,id2,id3)
{
    var name1=id1;
	var name2=id2
	var operationType=id3;
	var operationType=$(operationType).value;
	switch(operationType)
	{
		case "2":
			$(name1).style.display="";
			$(name2).style.display="none";
			$("ccpy_exr2").disabled=false;
			$("ccpy_slrt").disabled=true;
			$("ccpy_byft").disabled=true;
			break;
		case "3":
			$(name1).style.display="none";
			$(name2).style.display="";
			$("ccpy_exr2").disabled=true;
			$("ccpy_slrt").disabled=false;
			$("ccpy_byft").disabled=false;
			break;
	}
}
</script>

<script>
//��ʼ��
/*function checkChc()
{
	cheId();
	cheLoa("3");
	xunja('ccpy_exrt_Y','ccpy_exrt_N','ccpy_fxkd');
	cheinnerL('CD5','cccl');
}
*/</script>	

<script>
//��ʼ��
function checkChc()
{
	cheId();
	cheinner(fir("CD0"),"ccrg");
	cheLoa();
	xunja('ccpy_exrt_Y','ccpy_exrt_N','ccpy_fxkd');
}

function che(v2)
{
	var flag=fir("CD0");
	var v22=v2;
	if(flag)
	{//�����һ����ѡ��ѡ�����һ����Ӧ��div����ʾ�������checkbox�����û������Ϊ��ѡ״̬��
		$(v22).style.display="";
		$("cctrCheckbox").disabled="";
		$("ccpdCheckbox").disabled="";
		$("ccpyCheckbox").disabled="";
		$("ccrtCheckbox").disabled="";
		$("ccclCheckbox").disabled="";
	}
	else
	{//�����һ����ѡ��û��ѡ��������checkboxΪ����ѡ�����Ӧ��divΪ���أ�
		$("cctrCheckbox").disabled="disabled";
		$("ccpdCheckbox").disabled="disabled";
		$("ccpyCheckbox").disabled="disabled";
		$("ccrtCheckbox").disabled="disabled";
		$("ccclCheckbox").disabled="disabled";
		$("ccrgCheckbox").checked="";
		$("cctrCheckbox").checked="";
		$("ccpdCheckbox").checked="";
		$("ccpyCheckbox").checked="";
		$("ccrtCheckbox").checked="";
		$("ccclCheckbox").checked="";
		$("ccrg").style.display="none";
		$("cctr").style.display="none";
		$("ccpd").style.display="none";
		$("ccpy").style.display="none";
		$("ccrt").style.display="none";
		$("cccl").style.display="none";
		}
}
</script>
<script>
function cheLoa()
{//��onLoadʱ��
	che('ccrg');//����һ����ѡ���Ƿ�ѡ��������ҳ������checkbox����Ӧ��div״̬;
	var char=new Array();
	    char=onLoadCheck('CDH','CD');
	var charDiv="";	
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
	
	
	
	function cheinner(cha1,cha2)
	{
	//�����ǰ��ѡ��ѡ������Ӧ�Ĳ������ʾ��
		var cha11=cha1;
		var cha22=cha2;
		var prid=cha22+"_";
		if(cha11)
		{
			$(cha22).style.display="";
		}
		else
		{//������Ӧ�㲻����ʾ���Ҵ˲��µı��ؼ�ֵΪ�գ�
			$(cha22).style.display="none";
			cheAll(prid);
		}
	}		
</script>
</html:html>

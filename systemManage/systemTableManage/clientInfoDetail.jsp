<%--�ͻ�����(�鿴)--%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ page contentType="text/html; charset=GBK" %>
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName"/></title>
<link href="/IB/common/default.css" rel="stylesheet" type="text/css">
<script language="javascript" type="text/javascript" src="/IB/common/default.js"></script>
</head>

<body>
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
                        <div id="innerTable_div">

                            <!--���ݿ�ʼ-->
                            <html:form action="clientInfoDetail.do" method="post" onsubmit="checkForm(this)">
                      <div id="errMsgDiv"><html:errors /></div>
                             <table width="80%" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
							 <tr>
							   <td colspan="2" align="center" class="innertitle">�ͻ�������д</td>
							 </tr>
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">�ͻ��ţ�</td>
                                                <td valign="top">
                                                    <html:text property="clno" disabled="true"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">��λ���룺</td>
                                                <td valign="top">
                                                    <html:text property="utno"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Ӫ��������</td>
                                                <td valign="top">
                                                    <html:text property="mkno"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�ͻ�����</td>
                                                <td valign="top">
                                                    <html:text property="clmn"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*�ͻ����ͣ�</td>
                                                <td valign="top">
                                                    <%--div class="sele_div">
                                                        <html:select property="cltp">
                                                            <html:option value="">ȫ��������</html:option>
                                                            <html:option value="">����</html:option>
                                                            <html:option value="">����</html:option>
                                                            <html:option value="">����</html:option>
                                                            <html:option value="">�ɷ���</html:option>
                                                            <html:option value="">��������</html:option>
                                                            <html:option value="">���˶���</html:option>
                                                            <html:option value="">�ϻ���ҵ</html:option>
                                                            <html:option value="">����</html:option>
                                                        </html:select>
                                                    </div--%>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�Ƿ���㼴�᣺</td>
                                                <td valign="top">
                                                    <%--div class="sele_div">
                                                        <html:select property="tmfg">
                                                            <html:option value="Y">YES</html:option>
                                                            <html:option value="N">NO</html:option>
                                                        </html:select>
                                                    </div--%>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">���㼴���ʺţ�</td>
                                                <td valign="top">
                                                    <html:text property="jhac" disabled="true"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�շѱ��֣�</td>
                                                <td valign="top">                                                    
                                                    <html:text styleClass="coin" property="chcy"/>    
                                                    <html:button value="..." tabindex="1" property="more_btn" onclick="openWin('coin','chcy')"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�շ��ʺţ�</td>
                                                <td valign="top">
                                                    <html:text property="chac"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*�ͻ��������ƣ�</td>
                                                <td valign="top">
                                                    <html:text property="clnm"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�ͻ��������Ƽ���ַ��</td>
                                                <td valign="top">
                                                    <html:textarea property="adl1"></html:textarea>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*�ͻ��������б�ţ�</td>
                                                <td valign="top">
                                                    <html:text property="utno"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*�ͻ�Ӣ�����ƣ�</td>
                                                <td valign="top">
                                                    <html:text property="egnm" title="egnm"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*�ͻ�Ӣ�����Ƽ���ַ��</td>
                                                <td valign="top">
                                                    <html:textarea property="ega1" title="ega1"></html:textarea>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�Ƿ�Ϊ��ʱ�ͻ���</td>
                                                <td valign="top">
                                                    <%--div class="sele_div">
                                                        <html:select property="mkjh" disabled="true">
                                                            <html:option></html:option>
                                                            <html:option value="">YES</html:option>
                                                            <html:option value="">NO</html:option>
                                                        </html:select>
                                                    </div--%>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�绰��</td>
                                                <td valign="top">
                                                    <html:text property="tlno"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Telex. No.�� </td>
                                                <td valign="top">
                                                    <html:text property="txno"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">���棺</td>
                                                <td valign="top">
                                                    <html:text property="fxno"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">��ʷ���׼�¼��</td>
                                                <td valign="top">                                                    
                                                    <html:textarea property="trhs"></html:textarea>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">���ڿ�֤��ȱ��֣�</td>
                                                <td valign="top">
                                                    <html:text styleClass="coin" property="lcobcyno"/>
                                                    <html:button value="..." tabindex="1" property="more_btn" onclick="openWin('coin','lcobcyno')"/>                                                </td>
                                            </tr>
                                        </table>                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">���ڿ�֤��ȣ�</td>
                                                <td valign="top">
                                                    <html:text property="lcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">���ڿ�֤�����</td>
                                                <td valign="top">
                                                    <html:text property="lcamblan" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">����Ѻ���ȱ��֣�</td>
                                                <td valign="top">
                                                    <html:text styleClass="coin" property="lcmbcyno"/>
                                                    <html:button value="..." tabindex="1" property="more_btn" onclick="openWin('coin','lcmbcyno')"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">����Ѻ���ȣ�</td>
                                                <td valign="top">
                                                    <html:text property="lcob" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">����Ѻ������</td>
                                                <td valign="top">
                                                    <html:text property="lcobblan" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">����ȱ��֣�</td>
                                                <td valign="top">
                                                    <html:text styleClass="coin" property="lcdkcyno"/>
                                                    <html:button value="..." tabindex="1" property="more_btn" onclick="openWin('coin','lcdkcyno')"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">����ȣ�</td>
                                                <td valign="top">
                                                    <html:text property="lcdk" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�������</td>
                                                <td valign="top">
                                                    <html:text property="lcdkblan" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�����鸶Ѻ���ȱ��֣�</td>
                                                <td valign="top">
                                                    <html:text styleClass="coin" property="beobcyno"/>
                                                    <html:button value="..." tabindex="1" property="more_btn" onclick="openWin('coin','beobcyno')"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�����鸶Ѻ���ȣ�</td>
                                                <td valign="top">
                                                    <html:text property="ebob" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�����鸶Ѻ������</td>
                                                <td valign="top">
                                                    <html:text property="ebobblan" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">��������Ѻ���ȱ��֣�</td>
                                                <td valign="top">
                                                    <html:text styleClass="coin" property="ocobcyno"/>
                                                    <html:button value="..." tabindex="1" property="more_btn" onclick="openWin('coin','ocobcyno')"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">��������Ѻ���ȣ�</td>
                                                <td valign="top">
                                                    <html:text property="ocob" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">��������Ѻ������</td>
                                                <td valign="top">
                                                    <html:text property="ocobblan" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">����Ʊ�ݶ�ȱ��֣�</td>
                                                <td valign="top">
                                                    <html:text styleClass="coin" property="ccpdcyno"/>
                                                    <html:button value="..." tabindex="1" property="more_btn" onclick="openWin('coin','ccpdcyno')"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">����Ʊ�ݶ�ȣ�</td>
                                                <td valign="top">
                                                    <html:text property="ccpd" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">����Ʊ�ݶ����</td>
                                                <td valign="top">
                                                    <html:text property="ccdblan" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�����ȱ��֣�</td>
                                                <td valign="top">
                                                    <html:text styleClass="coin" property="eldbcyno"/>
                                                    <html:button value="..." tabindex="1" property="more_btn" onclick="openWin('coin','eldbcyno')"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�����ȣ�</td>
                                                <td valign="top">
                                                    <html:text property="eldb" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">��������</td>
                                                <td valign="top">
                                                    <html:text property="eldbblan" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/>                                                </td>
                                            </tr>
                                        </table>                                    </td>
                                </tr>
                            </table>
                            <hr size="1" noshade="noshade"/>
                            
                            <div class="footer">
                                <html:hidden property="errCode" />
							<input  type="image" src='/IB/images/saveTele.gif' name="save" onClick="submitKind(0,'letter');return false" onclick="submitKind(0,'save')">
								&nbsp;&nbsp;
								
								<html:button property="go" onclick="submitKind(0,'submit')">�ύ</html:button>
                                <html:button property="back_btn" disabled="true"><bean:message key="common.previous"/></html:button>
                                <html:submit><bean:message key="common.next"/></html:submit>
                            </div>
                            </html:form>
                            <!--���ݽ���-->
                        </div>
                    </td>
                    <td class="innerTable_right_y"></td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td class="innerTable_bottom_x"></td>
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
</table>
</body>
</html:html>

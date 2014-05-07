<%--�����б�(�鿴)--%>
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
                            <html:form action="/bankListDetail.do" method="post" onsubmit="checkForm(this)">
                            <script language="javascript" type="text/javascript">showErrorMsg("<html:errors/>")</script>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top" class="attR">*���д��룺</td>
                                                <td valign="top"><html:text property="bkno" title="bkno"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Swift No ��</td>
                                                <td valign="top"><html:text property="swno"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">������ַ��</td>
                                                <td valign="top"><html:textarea property="add1"></html:textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">���棺</td>
                                                <td valign="top"><html:text property="cmfa"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Telex��</td>
                                                <td valign="top"><html:text property="cmtx"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�绰��</td>
                                                <td valign="top"><html:text property="cmtl"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">���ң�</td>
                                                <td valign="top">
                                                    <html:text styleClass="country" property="cmtl"/>
                                                    <html:button value="..." tabindex="1" property="more_btn" onclick="openWin('country','cmtl')"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">���У�</td>
                                                <td valign="top"><html:text property="hono"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�Ƿ�Ϊ�ʻ��У�</td>
                                                <td valign="top">
                                                    <div class="sele_div">
                                                        <html:select property="acmk">
                                                            <html:option value="Y">YES</html:option>
                                                            <html:option value="N">NO</html:option>
                                                        </html:select>
                                                    </div>   
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">&nbsp;</td>
                                </tr>
                            </table>
                            
                            
                            <div class="footer">
                                <html:hidden property="errCode" /><html:button property="save" onclick="submitKind(0,'save')">����</html:button><html:button property="go" onclick="submitKind(0,'submit')">�ύ</html:button>
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

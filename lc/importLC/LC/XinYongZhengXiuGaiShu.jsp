<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<head>
<title>���ʽ���ģ��ϵͳ</title>
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

            <!--�ڱ���ʼ-->
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
                            <html:form action="lcModify.do"	onsubmit="checkForm(this)" method="post">
                            <div id="errMsgDiv"><html:errors /></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" align="center" valign="top">
                                        <table width="350" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
                                            <tr>
                                                <td width="32%" height="20" align="right" bgcolor="#EBEBEB">�޸����ڣ�</td>
                                                <td width="68%"><html:text styleClass="date" property="mddt" maxlength="10" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled"/>
                                              <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn2" onclick="openWin('date','mddt');return false"></html:image> </td>
                                            </tr>
                                            <tr>
                                                <td width="32%" height="20" align="right" bgcolor="#EBEBEB">�޸����ţ�</td>
                                                <td><html:text property="mdno" maxlength="20" onkeypress="regInput(/^[a-zA-Z0-9]*$/)" style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                                <td width="32%" height="20" align="right" bgcolor="#EBEBEB">����֤�������ڣ�</td>
                                                <td><html:text styleClass="date" property="apdt"/>
                                                    <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn2" onclick="openWin('date','apdt');return false"></html:image>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="32%" height="20" align="right" bgcolor="#EBEBEB">����֤��ţ�</td>
                                                <td><html:text property="lcno"/></td>
                                            </tr>
                                            <tr>
                                                <td width="32%" height="20" align="right" bgcolor="#EBEBEB">�޸Ĵ�����</td>
                                                <td><html:text property="aeno"/></td>
                                            </tr>
                                            <tr>
                                                <td width="32%" height="20" align="right" bgcolor="#EBEBEB">���������ƣ�</td>
                                                <td><html:text property="apnm"/></td>
                                            </tr>
                                            <tr>
                                                <td width="32%" height="20" align="right" bgcolor="#EBEBEB">֪ͨ�����ƣ�</td>
                                                <td><html:text styleClass="bank" property="adbknm"/>
                                                    <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn2" onclick="openWin('bank','adbknm');return false"></html:image>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="32%" height="20" align="right" bgcolor="#EBEBEB">���������ƣ�</td>
                                                <td><html:text property="adl1"/></td>
                                            </tr>
                                            <tr>
                                                <td width="32%" height="20" align="right" bgcolor="#EBEBEB">�����˵�ַ��</td>
                                                <td> <html:textarea property="clnonm"></html:textarea></td>
                                            </tr>
                                            <tr>
                                                <td width="32%" height="20" align="right" bgcolor="#EBEBEB">�������ʱࣺ</td>
                                                <td><html:text property="clpscd"/></td>
                                            </tr>
                                            <tr>
                                                <td width="32%" height="20" align="right" bgcolor="#EBEBEB">�޸����ݣ�</td>
                                                <td> <html:textarea property="mdcont"></html:textarea></td>
                                            </tr>
                                            <tr>
                                                <td width="32%" height="20" align="right" bgcolor="#EBEBEB">��֤�е�ַ��</td>
                                                <td> <html:textarea property="isbknm"></html:textarea></td>
                                            </tr>
                                            <tr>
                                                <td width="32%" height="20" align="right" bgcolor="#EBEBEB">��֤���ʱࣺ</td>
                                                <td><html:text property="pscd"/></td>
                                            </tr>
                                            <tr>
                                                <td width="32%" height="20" align="right" bgcolor="#EBEBEB">��֤�е紫��</td>
                                                <td><html:text property="telex"/></td>
                                            </tr>
                                            <tr>
                                                <td width="32%" height="20" align="right" bgcolor="#EBEBEB">��֤�е绰��</td>
                                                <td><html:text property="tel"/></td>
                                            </tr>
                                            <tr>
                                                <td width="32%" height="20" align="right" bgcolor="#EBEBEB">��֤�д��棺</td>
                                                <td><html:text property="fax"/></td>
                                            </tr>
                                            <tr>
                                                <td width="32%" height="20" align="right" bgcolor="#EBEBEB">��Ѻ��</td>
                                                <td><html:text property="neno"/></td>
                                            </tr>

                                      </table>
                                    </td>
                                    <td width="50%" valign="top">&nbsp;</td>
                                </tr>
                            </table>
                            

                            <div class="footer">
                                <html:hidden property="id" />
                                <html:hidden property="errCode" />
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
            <!--�ڱ�����-->

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
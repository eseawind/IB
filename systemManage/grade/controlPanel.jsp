
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>

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
                            <html:form action="person.do" method="post">
                            <div id="errMsgDiv"><html:errors/></div><div class="blankt"></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td align="center" valign="top">                                        
                                        <table width="80%" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
                                          
                                            <tr>
                                              <td height="20" colspan="2" align="center" valign="middle"  class="innertitle">�����趨</td>
                                            </tr>
                                            <tr>
                                                <td width="42%" align="right" valign="middle" bgcolor="#EBEBEB">�û����ƣ�</td>
                                              <td width="58%" valign="middle"><html:text property="usnm" maxlength="10"/></td>
                                            </tr>
                                              <tr>
                                                <td width="42%" align="right" valign="middle" bgcolor="#EBEBEB">�绰���룺</td>
                                                <td valign="middle"><html:text property="tele" maxlength="20"/></td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="middle" bgcolor="#EBEBEB">ԭʼ���룺</td>
                                                <td valign="middle"><html:password property="oldPwd" maxlength="6"/></td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="middle" bgcolor="#EBEBEB">�����룺</td>
                                                <td valign="middle"><html:password property="newPwd" maxlength="6"/></td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="middle" bgcolor="#EBEBEB">�ظ������룺</td>
                                                <td valign="middle"><html:password property="rePwd" maxlength="6"/></td>
                                            </tr>
                                      </table>
                                  </td>
                                    
                                </tr>
                            </table>
                            
                            
                            <div class="footer">
                            <html:hidden property="hidPswd"/>
                             <input type="image"  src="/IB/images/modify.gif">   
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

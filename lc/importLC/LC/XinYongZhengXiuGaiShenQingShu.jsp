<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<head>
<title>���ʽ���ģ��ϵͳ</title>
<link href="/IB/common/default.css" rel="stylesheet" type="text/css">
<SCRIPT lanuange="JavaScript">
//����
function isNull()
{
    var iObj = document.forms[0].elements;
    for (i = 0; i<iObj.length; i++)
    {
        //iObj[i].disabled = false;
        //��������title��Ϊ�գ���ֵΪ��ʱ����errCode��ֵΪǰ�ߵ�title
        if (iObj[i].title.Trim()!=""&&iObj[i].title.Trim()!="undefined"&&iObj[i].value.Trim() =="")
        {
        alert("��Ѻ�ɫ�ı�������д������");
          return false; 
        }         
    }
   document.forms[0].submit();     
   return true; 
}

</SCRIPT>

</head>
<body>
<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td></td>
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
                            <html:form action="lcModifySupplication.do" onsubmit="checkForm(this)" method="post">
                            <div id="errMsgDiv"><html:errors /></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" align="center" valign="top">
                                        <table width="320" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
                                            <tr>
                                                <td width="36%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*�������ڣ�</td>
                                                <td width="64%"><html:text styleClass="date" property="apdt" maxlength="10" size="10" onkeypress="regInput(/^[0-9]*$/)" title="apdt"/>
                                                    <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn2" onclick="openWin('date','apdt');return false"></html:image>
                                              </td>
                                            </tr>
                                            <tr>
                                                <td width="36%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*�������ţ�</td>
                                                <td><html:text property="number" maxlength="20" size="15" onkeypress="regInput(/^[a-zA-Z0-9]*$/)" title="apdt"/></td>
                                            </tr>
                                            <tr>
                                                <td width="36%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*����֤��ţ�</td>
                                                <td><html:text property="lcno" maxlength="16" size="16" onkeypress="regInput(/^[a-zA-Z0-9]*$/)" title="lcno"/></td>
                                            </tr>
                                            <tr>
                                                <td width="36%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*�޸Ĵ�����</td>
                                                <td><html:text property="adno" maxlength="2" size="3" onkeypress="regInput(/^[0-9]*$/)" title="adno"/></td>
                                            </tr>
                                            <tr>
                                                <td width="36%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*֪ͨ��ʽ��</td>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="38%" align="left">
                                                                <html:radio value="0" property="ammd"/>
                                                          �ſ�</td>
                                                            <td width="62%" align="left">
                                                                <html:radio value="1" property="ammd"/>
                                                          �翪</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="36%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*ԭ֤��</td>
                                                <td><html:text property="lcam"  maxlength="8" size="10" onkeypress="regInput(/^[0-9]*$/)" title="lcam"/></td>
                                            </tr>
                                            <tr>
                                                <td width="36%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*ԭ֤�����ˣ�</td>
                                                <td><html:text property="adl1" title="adl1"/></td>
                                            </tr>
                                      </table>
                                  </td>
                                    <td width="50%" align="left" valign="top">
                                        <table width="340" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=left class="innercontent">
                                            <tr>
                                                <td width="42%" height="20" align="right" bgcolor="#EBEBEB">�ҵ�λҵ���ţ�</td>
                                                <td width="58%">
                                                    <html:text property="trno" maxlength="30" size="15" onkeypress="regInput(/^[a-zA-Z0-9]*$/)"/>
                                              </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" bgcolor="#EBEBEB">�ҵ�λ��ͬ�ţ�</td>
                                                <td>
                                                    <html:text property="crno" maxlength="30" size="15" onkeypress="regInput(/^[a-zA-Z0-9]*$/)"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" bgcolor="#EBEBEB" class="attR">*�޸����ݣ�</td>
                                                <td>
                                                    <html:textarea property="mdcont"  title="mdcont"></html:textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" bgcolor="#EBEBEB">��ϵ�ˣ�</td>
                                                <td>
                                                    <html:text property="cont" maxlength="30" size="15"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" bgcolor="#EBEBEB">�绰��</td>
                                                <td>
                                                    <html:text property="tel"  maxlength="30"  size="15" onkeypress="regInput(/^[0-9]*$/)"/>
                                                </td>
                                            </tr>
                                      </table>
                                  </td>
                                </tr>
                            </table>
                            
                            
                            <div class="footer">
                                <html:hidden property="id" />
                                <html:hidden property="usid"/>
                                <html:hidden property="prid" value="LCUP"/>
                                <html:hidden property="brno" value="9995"/>
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
            <!--�ڱ����-->
    
        </td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>
</body>
</html:html>

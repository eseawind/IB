<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
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
        <td>
    
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
                            
                            <html:form action="sendGetCLRegister.do"	onsubmit="checkForm(this)" method="post">
                            <div id="errMsgDiv"><html:errors /></div>
                            <table width="98%" border="0" cellpadding="0" cellspacing="0" class="kuangScroll">
                                <tr>
                                    <td width="100%" align="left" valign="top">
                                        <table width="400" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=left class="innercontent">
                                            <tr>
                                                <td width="41%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*�յ��������ڣ�</td>
                                                <td width="59%">
                                                <html:text styleClass="date" property="psdt"
										         maxlength="10" size="10" onkeypress="regInput(/^[0-9]*$/)"  title="psdt"/> 
										         <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','psdt');return false"></html:image></td>
                                            </tr>
                                            <tr>
                                                <td width="41%" height="20" align="right" bgcolor="#EBEBEB">ƾ֤���ࣺ</td>
                                                <td><html:text property="cety" maxlength="30" size="15"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="41%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*ƾ֤���룺</td>
                                                <td><html:text property="ocno" maxlength="16" onkeypress="regInput(/^[a-zA-Z0-9]*$/)" size="16" title="ocno"/></td>
                                            </tr>
                                            <tr>
                                                <td width="41%" height="20" align="right" bgcolor="#EBEBEB">�տ����ʺţ�</td>
                                                <td><html:text property="icacno" maxlength="16" onkeypress="regInput(/^[a-zA-Z0-9]*$/)" size="16"/></td>
                                            </tr>
                                            <tr>
                                                <td width="41%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*�տ��˿����У�</td>
                                                <td><html:text styleClass="bank" property="icbk"
										             title="icbk" readonly="true" /> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','icbk');return false"></html:image></td>
                                            </tr>
                                            <tr>
                                                <td width="41%" height="20" align="right" bgcolor="#EBEBEB">�������ʺţ�</td>
                                                <td><html:text property="ocacno" maxlength="16" size="16" onkeypress="regInput(/^[a-zA-Z0-9]*$/)"/></td>
                                            </tr>
                                            <tr>
                                                <td width="41%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*�����˿����У�</td>
                                              <td><html:text styleClass="bank" property="ocbk"
										             title="ocbk" readonly="true" /> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','ocbk');return false"></html:image> </td>
                                            </tr>
                                            <tr>
                                                <td width="41%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*���ս�</td>
                                                <td><html:text property="amts" title="amts" maxlength="8" size="10" onkeypress="regInput(/^[0-9]*$/)"/></td>
                                            </tr>
                                            <tr>
                                                <td width="41%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*�и����ڣ�</td>
                                                <td> <html:text styleClass="date" property="acdt" maxlength="10" size="10" onkeypress="regInput(/^[0-9]*$/)" title="acdt"/> 
										             <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn"  onclick="openWin('date','acdt');return false"></html:image></td>
                                            </tr>
											<tr>
                                                <td width="41%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*�������ڣ�</td>
                                                <td> <html:text styleClass="date" property="gtdt" maxlength="10" size="10" onkeypress="regInput(/^[0-9]*$/)" title="gtdt"/> 
										             <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','gtdt');return false"></html:image> </td>
                                            </tr><tr>
                                                <td width="41%" height="20" align="right" bgcolor="#EBEBEB">��λǩ�գ�</td>
                                                <td><html:text property="sign" maxlength="30" size="15"/></td>
                                            </tr><tr>
                                                <td width="41%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*ǩ�����ڣ�</td>
                                                <td> <html:text styleClass="date" property="sgdt" maxlength="10" size="10" onkeypress="regInput(/^[0-9]*$/)" title="sgdt"/> 
										             <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','sgdt');return false"></html:image></td>
                                            </tr><tr>
                                                <td width="41%" height="20" align="right" bgcolor="#EBEBEB">��ע��</td>
                                                <td>
                                                <html:textarea property="remk"></html:textarea>                                                </td>
                                            </tr>
                                      </table>                                    </td>
                                </tr>
                            </table>
                            
                            
                            <div class="footer">
                                <html:hidden property="id" />
                                <html:hidden property="prid" />
                                <html:hidden property="brno" value='9998'/>
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
    </tr>
</table>
</body>
</html>

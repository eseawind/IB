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
<%--function adds(){--%>
<%--var f = document.forms[0];--%>
<%--var blav=parseInt(f.blav.value);//����֤���--%>
<%--var zen = f.aeam.value;//���������--%>
<%----%>
<%--if(f.aeam.value==''||f.aeam.value==null){--%>
<%--var temp =parseInt("0");--%>
<%--}else{--%>
<%--var temp = parseInt(f.aeam.value);//���ӽ��--%>
<%--}--%>
<%----%>
<%--var last= parseInt("0");--%>
<%----%>
<%--if(zen=='+'){--%>
<%--last =blav+ temp;--%>
<%--document.forms[0].bpam.value=last;--%>
<%--}else{--%>
<%--if(blav<temp){--%>
<%--alert("�����Ľ���������֤��");--%>
<%--document.forms[0].aeam.value='';--%>
<%--}else{--%>
<%--last =blav- temp;--%>
<%--document.forms[0].bpam.value=last;--%>
<%-- }--%>
<%--}--%>
<%--}--%>
</SCRIPT>
</head>
<%--<body onLoad="adds()">--%>
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
                            <html:form action="lcInformPayRegister.do"	onsubmit="checkForm(this)" method="post">
                            <div id="errMsgDiv"><html:errors /></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0"> 
                                <tr>
                                    <td width="60%" align="left" valign="top">
                                        <table width="476" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=left class="innercontent">
                                            <tr>
                                              <td width="47%" height="20" align="right" valign="top" bgcolor="#EBEBEB" class="attR">*�յ�����֤������֤�޸������ڣ�</td>
                                                <td width="53%" valign="middle"><html:text styleClass="date" property="glcdt" maxlength="10" size="10" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" title="glcdt" readonly="true"/>
                                              <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn2" onclick="openWin('date','glcdt');return false"></html:image></td>
                                            </tr>
                                            <tr>
                                              <td width="47%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*֪ͨ���鸶����֤���ڣ�</td>
                                                <td valign="top"><html:text styleClass="date" property="lcdt" maxlength="10" size="10" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" title="lcdt" readonly="true"/>
                                                    <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn2" onclick="openWin('date','lcdt');return false"></html:image></td>
                                            </tr>
                                            <tr>
                                              <td width="47%" height="20" align="right" bgcolor="#EBEBEB">֪ͨ���</td>
                                                <td><html:text property="adty" maxlength="30" size="15"/></td>
                                            </tr>
                                            <tr>
                                              <td width="47%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*ҵ���ţ�</td>
                                                <td><html:text property="adno"  maxlength="30" size="15" onkeypress="regInput(/^[a-zA-Z0-9]*$/)" title="adno"/></td>
                                            </tr>
                                            <tr>
                                              <td width="47%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*��Ч���ޣ�</td>
                                                <td><html:text styleClass="date" property="epdt" maxlength="10"  size="10" onkeypress="regInput(/^[a-zA-Z0-9]*$/)" title="epdt" readonly="true"/>
                                                    <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn2" onclick="openWin('date','epdt');return false"></html:image></td>
                                            </tr>
                                            <tr>
                                              <td width="47%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*����֤��</td>
                                                <td><html:text property="blav"  maxlength="15" size="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" title="blav"/></td>
                                            </tr>
                                            <tr>
                                              <td width="47%" height="20" align="right" bgcolor="#EBEBEB">�޸����</td>
<%--                                                <td><html:text property="aeam" maxlength="15" size="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" onchange="adds()" onfocus="javascript:this.value=''"/></td>--%>
                                                <td><html:text property="aeam" maxlength="15" size="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                              <td width="47%" height="20" align="right" bgcolor="#EBEBEB">�鸶��</td>
<%--                                                <td><html:text property="bpam" maxlength="15" size="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" onclick="adds()"/></td>--%>
                                                <td><html:text property="bpam" maxlength="15" size="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                              <td width="47%" height="20" align="right" bgcolor="#EBEBEB">���������ƣ�</td>
                                                <td><html:text property="clnonm" maxlength="30" size="15" style="width:200px"/></td>
                                            </tr>
                                      </table>                                  </td>
                                </tr>
                            </table>
                            

                            <div class="footer">
                                <html:hidden property="id" />
                                <html:hidden property="brno" />
                                <html:hidden property="prid" />
                                <html:hidden property="usid" />
                                <html:hidden property="lcno" />
                                
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
</table>
</body>
</html:html>

<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>ѡ������</title>
<base target="_self">
<script language="javascript" type="text/javascript">
<!--
var rtValue = new Array()
function sendData()
{
	try
	{
	  var mystr = window.dialogArguments;
	  myObj = mystr.split(",");
	  var rt =""
	  for (i=0; i<myObj.length; i++)
	  {
		 rt = rt + "document.getElementById(\"" + myObj[i] +"\").value='" + (rtValue[i] ? rtValue[i] : "") +"';"
	  }
	  window.returnValue = rt
	}catch(e)
	{
	}
	window.close();
}

document.onkeydown = function ()
{
	if (event.keyCode==27)
	{
		window.close();
	}
}
function ck(trObj)
{
	trs = document.getElementById("conTab").firstChild.children;
	for (i=1; i<trs.length; i++)
	{
	  if (i==trObj.rowIndex)
	  {
	    trObj.style.backgroundColor='#FFCC99';
	    trObj.style.cursor = "default";
	    continue;
	  }else
	  {
	    trs[i].style.background = ((trs[i].rowIndex%2==0)?"#ECF4FC":"#ffffff");
	    trs[i].style.cursor = "hand";
	  }
	}
	rtValue[0] = window.event.srcElement.parentNode.firstChild.innerText;
	rtValue[1] = window.event.srcElement.parentNode.childNodes[1].innerText;
	rtValue[2] = window.event.srcElement.parentNode.childNodes[4].innerText;
}
function dc(ttobj)
{
    ck(ttobj);sendData();
}
-->
</script>
<link href="/IB/file/dialog.css" rel="stylesheet" type="text/css">
</head>

<body border="0">
<input type="hidden" id="showBanCode" value="">
<table width="780" height="340" border="0" cellpadding="0" cellspacing="0"
	style="padding-left:4px;">
	<tr>
		<td valign="top">
		    <table width="100%" border="0" cellspacing="0" cellpadding="0">
		    <html:form action="bankAction.do">
                <tr>
                    <td width="258" height="20" align="left" nowrap>
                        <table width="250" height="88"  border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="118" height="20" align="right">�����д��룺</td>
                                <td width="142">
                                <html:text property="bkno" styleId="clientNum"></html:text>
<%--                                <input name="bkno" type="text" style="width:100px; ">--%>
                                </td>
                            </tr>
                            <tr>
                                <td height="20" align="right">������SWIFT NO�� </td>
                                <td>
                                <html:text property="swno" styleId="clientNum"></html:text>
<%--                                <input name="swno" type="text" style="width:100px; ">--%>
                                </td>
                            </tr>
                            <tr>
                                <td height="20" align="right">���������ƣ�</td>
                                <td>
                                <html:text property="add1" styleId="clientNum"></html:text>
<%--                                <input name="add1" type="text" style="width:120px; ">--%>
                                
                                </td>
                            </tr>
                            <tr>
                                <td height="20" align="right">���ڹ��ң�</td>
                                <td>
                                <html:text property="cncd" styleId="clientNum"></html:text>
<%--                                <input name="cncd" type="text" style="width:30px; ">--%>
                                
                                </td>
                            </tr>
                  </table></td>
                    <td width="522" align="left" valign="bottom">
                        <table width="80" height="88"  border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td height="25" align="left" valign="middle">
                              <input type="button" name="Submit"
					value="�� ��" onClick="sendData()" class="btn"></td>
                            </tr>
                            <tr>
                                <td height="25" align="left" valign="middle">
                              <input type="button" name="Submit2" value="�� ��"
					onclick="window.close()" class="btn"></td>
                            </tr>
                            <tr>
                                <td height="25" align="left" valign="middle">
                                    <input type="submit" name="Submit3" value="�� ��" class="btn">
                              </td>
                            </tr>
                  </table></td>
                </tr>
                </html:form>
            </table>
		    <table width="100%" border="0" cellpadding="0"
			cellspacing="0">
			<tr>
				<td align="center" valign="top">
				<div id="innerTable_div" style="width:100%;">
				<table width="100%" border="0" cellpadding="5" cellspacing="1" class="item_list_display"
					id="conTab">
					<tr>
						<th width="15%" align="left">���б��</th>
						<th width="36%" align="left">��������</th>
						<th width="9%" align="left">���Ҵ���</th>
						<th width="12%" align="left">SWIFT���</th>
						<th width="28%" align="left">���е�ַ</th>
					</tr>
					<logic:notEmpty name="list">
						<logic:iterate id="list" name="list" indexId="index" scope="request"> 
							
                             <%if ((index.intValue() % 2) == 1) {
            out.print("<tr height=\"20\" onclick=\"ck(this)\" ondblclick=\"dc(this)\" bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr height=\"20\" onclick=\"ck(this)\" ondblclick=\"dc(this)\" bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>
								<td align="left">
								    <bean:write name="list" property="bkno" /></td>
								<td align="left">
								    <bean:write name="list" property="bknm" /></td>
								<td align="left">
								    <bean:write name="list" property="cncd" /></td>
								<td align="left">
								    <bean:write name="list" property="swno" /></td>
								<td align="left">
								    <bean:write name="list" property="add1" />
								</td>
							</tr>
						</logic:iterate>
					</logic:notEmpty>
				</table>
				</div>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<a id="reload" href="/IB/file/bank.jsp" style="display:none">reload...</a>
</body>
</html>

<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="com.witsoft.common.ConvertOptions"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>

<%--Form of Guarantee for Advance Payment of Exporting Equipment--%>
<html>
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
                            <form method="post" action="AccessDocuments" onSubmit="checkForm(this)">
                            <div id="errMsgDiv"><%if(request.getAttribute("error")!=null){out.print((String)request.getAttribute("error"));}%></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">�����ˣ�</td>
                                                <td valign="top"><textarea name="BFNM" ><%if(map.get("BFNM") != null){out.print(map.get("BFNM"));}%></textarea></td>
                                            </tr>
                                           <tr>
                                                <td height="20" align="right" valign="top">���ڣ�</td>
                                                <td valign="top"><input name="ISDT" type="text" class="date" value="<%if(map.get("ISDT") != null){out.print(map.get("ISDT"));}%>">
                                                   <input name="more_btn" type="image" tabindex="1" onClick="openWin('date','ISDT');return false" src="/IB/images/date.gif">
                                                    </td>
                                            </tr>
                                           <tr>
                                                <td height="20" align="right" valign="top">֪ͨ�У�</td>
                                                <td valign="top"><input type="text" name="ADBKNM" maxlength="35" value="<%if(map.get("ADBKNM") != null){out.print(map.get("ADBKNM"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">������</td>
                                                <td valign="top"><input type="text" name="LCNO" maxlength="16" value="<%if(map.get("LCNO") != null){out.print(map.get("LCNO"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">����ţ�</td>
                                                <td valign="top"><input type="text" name="CRNO" maxlength="16" value="<%if(map.get("CRNO") != null){out.print(map.get("CRNO"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">�ͻ�����</td>
                                                <td valign="top"><input type="text" name="APNM" maxlength="35" value="<%if(map.get("APNM") != null){out.print(map.get("APNM"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">���ң�</td>
                                                <td valign="top"> <div class="sele_div">
                                                <select styleClass="coin" name="LCCY">
                                                <%out.println(ConvertOptions.ConvertCurrencyArrayToString((String [][])request.getAttribute("OPTION_CYNO"), (String)map.get("LCCY")));%>
                                                </select>
                                                </div>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">������</td>
                                                <td valign="top"><input type="text" name="LCAM" maxlength="15" value="<%if(map.get("LCAM") != null){out.print(map.get("LCAM"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">��Ч�ڣ�</td>
                                                <td valign="top">
                                                <input type="text" name="EPDT" class="date" maxlength="16" value="<%if(map.get("EPDT") != null){out.print(map.get("EPDT"));}%>">
                                                <input type="image" name="more_btn" src="/IB/images/date.gif" tabindex="1" onClick="openWin('date','EPDT');return false">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">&nbsp;</td>
                                </tr>
                            </table>
                            
                            
                          
                            <!--���ݽ���-->
                        </div>
                    </td>
                    <td class="innerTable_right_y"></td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td class="innerTable_bottom_x">  <div class="footer">
                                <input name="errCode" type="hidden">
                                <input name="id" type="hidden" value="<%=request.getAttribute("id")%>">
                                <input name="swno" type="hidden" value="<%if(request.getAttribute("swno") != null){out.print(request.getAttribute("swno"));}%>">
                                <input name="tmid" type="hidden" value="<%=request.getAttribute("tmid")%>">
								<input name="prid" type="hidden" value="<%=request.getAttribute("tstp")%>">
								<input name="tstp" type="hidden" value="<%=request.getAttribute("tstp")%>">
								<input name="brno" type="hidden" value="<%=request.getAttribute("brno")%>">
								<input name="rfno" type="hidden" value="<%=request.getAttribute("rfno")%>">
								<input type="image" name="save" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">
                                <input type="image" src="<bean:message key="common.returnLetter"/>"
                                onClick="openReplace('letterManageAction.do?rfno=<%=(String)request.getAttribute("rfno")%>&prid=<%=(String)request.getAttribute("tstp")%>&swno=<%=(String)request.getAttribute("swno")%>');return false">
                                
                            </div>
                            </td>
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
</body></form>
</html>
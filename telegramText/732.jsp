<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>
 
<html>
<head>

<title>���ʽ���ģ��ϵͳ</title>


<link href="/IB/telegramText/telegramTextStyle.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0"><%if(request.getAttribute("error")!=null){out.print((String)request.getAttribute("error"));}%>
    <tr>
        <td class="outerTable_top_left"></td>
        <td class="outerTable_top_x"></td>
        <td class="outerTable_top_right"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_mainContent">
    
            <!--�ڱ��ʼ-->
            <table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0"><%if(request.getAttribute("error")!=null){out.print((String)request.getAttribute("error"));}%>
                <tr>
                    <td class="innerTable_top_left"></td>
                    <td class="innerTable_top_x"></td>
                    <td class="innerTable_top_right"></td>
                </tr>
                <tr>
                    <td class="innerTable_left_y"></td>
                    <td class="innerTable_main">
                        <div id="innerTable_div">

                            <!--���ݿ�ʼ-->
                            <form method="post" action="AccessTelegramText" onSubmit="checkForm(this)"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="406" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top" class="attR">*FM: +Sender&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="fmbk" title="<bean:message key='teles.fmbk.title'/>" maxlength="12" value="<%if(map.get("fmbk") != null){out.print(map.get("fmbk"));}%>" title="fmbk"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*TO: +Receiver&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="tobk"  title="<bean:message key='teles.tobk.title'/>" maxlength="12" value="<%if(map.get("tobk") != null){out.print(map.get("tobk"));}%>"
										         title="tobk" readonly="true" />&nbsp;<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tobk');return false"></html:image></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*20: Transaction Reference Number </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text"  name="_20"  title="<bean:message key='teles._20.title'/>" maxlength="16" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>" title="_20">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*21: RelatedReference</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_21" title="<bean:message key='teles._21.title'/>" value="<%if(map.get("_21") != null){out.print(map.get("_21"));}%>" title="_21"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*30: Date of Issue </td>
                                                <td valign="middle">&nbsp;
												    <input type="text" name="_30"  title="<bean:message key='teles.707._31c.title'/>" maxlength="6"  value="<%if(map.get("_30") != null){out.print(map.get("_30"));}%>" title="_30"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*32B:Currency Code and Amount </td>
                                                <td valign="middle">&nbsp; <input name="_32ba"  maxlength="3"  title="<bean:message key='teles.400._32kd.title'/>"  type="text" class="currency1" value="<%if(map.get("_32ba") != null){out.print(map.get("_32ba"));}%>" title="_32ba">
                                                    <input name="_32bb"  maxlength="15" type="text"  title="<bean:message key='teles.400._32ke.title'/>"  class="amount1" value="<%if(map.get("_32bb") != null){out.print(map.get("_32bb"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">70: Sender to Receiver Infomation </td>
                                                <td valign="middle">&nbsp;
												    <input type="text" name="_70" title="<bean:message key='teles._72.title'/>" value="<%if(map.get("_70") != null){out.print(map.get("_70"));}%>"></td>
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
                       <td class="innerTable_bottom_x"> <div class="footer">
                                <input name="errCode" type="hidden" value="<%if(map.get("errCode") != null){out.print(map.get("errCode"));}%>">
								<input name="swno" type="hidden" value="<%if(map.get("swno") != null){out.print(map.get("swno"));}%>">
								<input name="tstp" type="hidden" value="<%if(map.get("tstp") != null){out.print(map.get("prid"));}%>">
								<input name="swid" type="hidden" value="<%if(map.get("swid") != null){out.print(map.get("swid"));}%>">
								<input name="mgtp" type="hidden" value="<%if(map.get("mgtp") != null){out.print(map.get("mgtp"));}%>">
								<input name="prid" type="hidden"  value="<%if(map.get("prid") != null){out.print(map.get("prid"));}%>">
								<input name="brno" type="hidden"  value="<%if(map.get("brno") != null){out.print(map.get("brno"));}%>">
								<input name="rfno" type="hidden"  value="<%if(map.get("rfno") != null){out.print(map.get("rfno"));}%>">
                                <%=(String)request.getAttribute("button")%>
                            </div></td>
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
</form></body>
</html>
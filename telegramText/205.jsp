<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="com.witsoft.common.ConvertOptions"%>
<%@ page import="com.witsoft.bean.common.StaticManageBean"%>
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
                                        <table width="400" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top" class="attR">*FM: +Sender&nbsp;</td>
                                                <td width="46%" align="left" valign="middle">&nbsp;
                                                    <input type="text" name="fmbk" maxlength="12" value="<%if(map.get("fmbk") != null){out.print(map.get("fmbk"));}%>" title="fmbk"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*TO: +Receiver&nbsp;</td>
                                                <td align="left" valign="middle">&nbsp;
                                                    <input type="text" name="tobk"  maxlength="12" value="<%if(map.get("tobk") != null){out.print(map.get("tobk"));}%>"
										         title="tobk" readonly="true" />&nbsp;<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tobk');return false"></html:image></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*20:Transaction
                                                    Reference Number</td>
                                                <td align="left" valign="middle">
                                                    &nbsp;
<input name="_20" title="_20" type="text"  size="16" maxlength="16" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*21:Related
                                                    Reference</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div_122">
                                                                    <select name="_21" title="_21" class="select_122">
                                                                        <option>NEW</option>
                                                                        <option>NONREF</option>
                                                                        <option>SEE72</option>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*32A:Value
                                                    Date,Currency Code,Amount</td>
                                                <td align="left" valign="middle">
                                                    &nbsp;
<input name="_32aa" title="_32aa" type="text"  size="6" maxlength="6" value="<%if(map.get("_32aa") != null){out.print(map.get("_32aa"));}%>">
                                                    <input name="_32ab" title="_32ab" type="text"  size="3" maxlength="3" value="<%if(map.get("_32ab") != null){out.print(map.get("_32ab"));}%>">
                                                    <input name="_32ac" title="_32ac" type="text"  size="15" maxlength="15" value="<%if(map.get("_32ac") != null){out.print(map.get("_32ac"));}%>">
</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">52A:
                                                    Ordering Institution</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_52aa" class="select1">
                                                                        <%
                                                                        	StaticManageBean bean=new StaticManageBean();
                                                                        	out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_52aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">&nbsp;</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <input name="_52ab" type="text" maxlength="34" value="<%if(map.get("_52ab") != null){out.print(map.get("_52ab"));}%>">
                                                        <br>
    &nbsp;
    <input name="_52ac" type="text" size="11" maxlength="11"  value="<%if(map.get("_52ac") != null){out.print(map.get("_52ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">52D:
                                                    Ordering Institution</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_52da" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_52da")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">&nbsp;</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <input name="_52db" type="text" maxlength="34" value="<%if(map.get("_52db") != null){out.print(map.get("_52db"));}%>">
                                                        <br>
    &nbsp;
    <textarea name="_52dc"></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">53A:Sendre's
                                                    Correspondent</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_53aa" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_53aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <input name="_53ab" type="text" maxlength="34" value="<%if(map.get("_53ab") != null){out.print(map.get("_53ab"));}%>">
                                                        <br>
    &nbsp;
    <input name="_53ac" type="text" size="11" maxlength="11"  value="<%if(map.get("_53ac") != null){out.print(map.get("_53ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">53D:Sendre's
                                                    Correspondent</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_53da" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_53da")));%>
                                                                    </select>
                                                                    </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <input name="_53db" type="text" maxlength="34" value="<%if(map.get("_53db") != null){out.print(map.get("_53db"));}%>">
                                                        <br>
    &nbsp;
    <textarea name="_53dc"><%if(map.get("_53dc") != null){out.print(map.get("_53dc"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">56A:intermediary</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_56aa" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_56aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <input name="_56ab" type="text" maxlength="34" value="<%if(map.get("_56ab") != null){out.print(map.get("_56ab"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <input name="_56ac" type="text" size="11" maxlength="11" value="<%if(map.get("_56ac") != null){out.print(map.get("_56ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">56D:intermediary</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_56da" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_56da")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <input name="_56db" type="text" maxlength="34" value="<%if(map.get("_56db") != null){out.print(map.get("_56db"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <textarea name="_56dc"><%if(map.get("_56dc") != null){out.print(map.get("_56dc"));}%></textarea>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="400" border="0" cellpadding="0" cellspacing="0">

                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">57A:Account
                                                    With Insttution</td>
                                                <td width="46%" align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_57aa" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_57aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <input name="_57ab" type="text" maxlength="34" value="<%if(map.get("_57ab") != null){out.print(map.get("_57ab"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <input name="_54ac" type="text" size="11" maxlength="11"  value="<%if(map.get("_54ac") != null){out.print(map.get("_54ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">57B:Account
                                                    With Insttution</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_57ba" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_57ba")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <input name="_57bb" type="text" maxlength="34" value="<%if(map.get("_57bb") != null){out.print(map.get("_57bb"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <input name="_57bc" type="text" maxlength="35" value="<%if(map.get("_57bc") != null){out.print(map.get("_57bc"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">57D:Account
                                                    With Insttution</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_57da" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_57da")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <input name="_57ab" type="text" maxlength="34" value="<%if(map.get("_57ab") != null){out.print(map.get("_57ab"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <textarea name="_57ac"><%if(map.get("_57ac") != null){out.print(map.get("_57ac"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*58A:Beneficiary
                                                    Institution</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_58aa" title="_58aa" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_58aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <input name="_58ab"  title="_58ab" type="text" maxlength="34" value="<%if(map.get("_58ab") != null){out.print(map.get("_58ab"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <input name="_58ac" title="_58ac" type="text" size="11" maxlength="11"  value="<%if(map.get("_58ac") != null){out.print(map.get("_58ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"  class="attR">*58D:Beneficiary
                                                    Institution</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_58da"  title="_58da" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_58da")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <input name="_58db" title="_58db" type="text" maxlength="34" value="<%if(map.get("_58db") != null){out.print(map.get("_58db"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <textarea name="_58dc" title="_58dc"><%if(map.get("_58dc") != null){out.print(map.get("_58dc"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">72:Sender
                                                    to Recieiver Information</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <textarea  name="_72" rows="7"><%if(map.get("_72") != null){out.print(map.get("_72"));}%></textarea>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
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
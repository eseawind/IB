 <%--撤证--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<head>
<title><bean:message key="common.systemName"/></title>

<script>
function switchchco()
{
	switch ($("chco").value)
	{
		case "MS":
		case "":
			$("chcy").selectedIndex = 0;
			$("chcy").disabled = true;
			$("caam").disabled=true;
			$("tltp").disabled=true;
			break;
		default:
			$("chcy").disabled = false;
			$("caam").disabled=false;
			$("tltp").disabled=false;
	}
}

function switchchco(flag)
{
	switch ($("chco").value)
	{
		case "MS":
		case "":
			$("chcy").selectedIndex = 0;
            $("caam").value = "";
			$("caam").disabled=true;
			$("tltp").disabled=true;
			break;
		default:
			$("chcy").selectedIndex = 1;
			$("caam").disabled=false;
			$("tltp").disabled=false;
			if(flag)//在页面导入的时候不加载ajax
            getCharge("caam","01","100",$("prid").value);
	}
}
</script>
</head>

<body onLoad="switchchco(false);readOnlyForm(<%=(String)request.getAttribute("tabID")%>)">
<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td class="outerTable_top_left"></td>
        <td class="outerTable_top_x"></td>
        <td class="outerTable_top_right"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_mainContent">
    
            <!--内表格开始-->
            <table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="innerTable_top_left"></td>
                    <td class="innerTable_top_x"></td>
                    <td class="innerTable_top_right"></td>
                </tr>
                <tr>
                    <td class="innerTable_left_y"></td>
                    <td align="center" class="innerTable_main">
                        <div id="innerTable_div" class="kuangScroll">

                            <!--内容开始-->
                          <html:form action="LCCN.do" onsubmit="checkForm(this)" method="post">
                            <div id="errMsgDiv"><html:errors/></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                            
                             <%--操作码 --%>
                             <html:hidden  property="prid" /> 
                            <%--机构号 --%>
                             <html:hidden property="brno" />
                            <%--流水号 --%>
                             <html:hidden property="rfno" />
                            
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">信用证号码：</td>
                                                <td valign="top"><html:text property="lcno" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">开证申请人代码：</td>
                                                <td valign="top"><html:text property="apno" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">开证申请人名称：</td>
                                                <td valign="top"><html:text property="apnm" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">开证申请人名址：</td>
                                                <td valign="top"><html:textarea property="apad" readonly="true"></html:textarea></td>
                                            </tr>
                                            <tr>
									<td height="20" align="right" valign="top" class="attR">*收费方式：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="chco" title="chco" onchange="switchchco(true)">
										<%out.println(request.getAttribute("OPTION_CHCO"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收费币别：</td>
									<td valign="top">
									<div class="sele_div" id="2"><html:select styleClass="coin"
										property="chcy" disabled="true">
										<option></option>
										<option value="01">CNY 人民币</option>
									</html:select></div>
									</td>
								</tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">撤证实际费用：</td>
                                                <td valign="top"><div id="3"><html:text property="caam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></div></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">邮电费类型：</td>
                                                <td valign="top">
                                                    <div class="sele_div"><html:select
                                        property="tltp">
                                        <%out.println(request.getAttribute("OPTION_TLTP"));%>
                                    </html:select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">实收邮电费金额：</td>
                                                <td valign="top"><html:text property="taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">&nbsp;</td>
                                </tr>
                            </table>
                           
                            <!--内容结束-->
                        </div>
                    
					    
                    </td>
                    <td class="innerTable_right_y"></td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td class="innerTable_bottom_x">  <html:hidden property="errCode" /> 
					  <table width="100%"  border="0" cellspacing="0" cellpadding="0"  class="Scrollbg">
                                   <tr>
                    <td height="15" class="space"></td>
                  </tr>

				  <tr>
                    <td width="100%" height="30" align="center" valign="middle">
        <%
		String tabID=(String)request.getAttribute("tabID");
		boolean draftFlag=((Boolean)request.getAttribute("draftFlag")).booleanValue();//电文
		boolean letterFlag=((Boolean)request.getAttribute("letterFlag")).booleanValue();//面函
		
		if(tabID!=null&&Integer.parseInt(tabID)<4){//在电文、经办、暂存、待修改目录
		if(letterFlag){
		%>
		<input type="image" src='<bean:message key="common.addLett" />' name="letter" onClick="submitKind(0,'letter');return false">&nbsp;&nbsp;
       <%}
      if(draftFlag){%>
	    <input type="image" src='<bean:message key="common.addTele" />'>&nbsp;&nbsp;
        <%}%>
		<input type="image" name="save" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">&nbsp;&nbsp;
		<%}else{//复核、授权、已生效目录
	   if(letterFlag){
	    %>
		<input type="image" name="letter" src='<bean:message key="common.viewLett" />' onClick="submitKind(0,'letter');return false">&nbsp;&nbsp;
        <%}
      if(draftFlag){%>
	    <input type="image" src='<bean:message key="common.viewTele" />'>&nbsp;&nbsp;
	    <%}
	    }
		
		if(tabID!=null&&(Integer.parseInt(tabID)>3)){//报表列表。在经办(经办角色)里面看不到
		String step=null;
		if(tabID.equals("6")){
		step="3";//已生效的报表
		}else{
		step="2";//过了经办但是没有到已生效的报表
		}
		%>
		<input	type="image" src="<bean:message key="common.report" />"
		onClick="openReplace('/IB/voucher.do?prid=<bean:write name="takeAwayLCDetailForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="takeAwayLCDetailForm" property="rfno"/>&no=<bean:write name="takeAwayLCDetailForm" property="lcno"/>');return false">&nbsp;&nbsp;
		
		<%if(tabID!=null&&tabID.equals("6")){//流程图，只能在以生效里面看到%>
		<input	type="image" src="<bean:message key="common.svg" />"
		onClick="window.open('/IB/flowchart.do?id=<bean:write name="takeAwayLCDetailForm" property="lcno"/>&prid=<bean:write name="takeAwayLCDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//在复核、授权显示返回经办按钮%>
		
		<input	type="image" src='<bean:message key="common.returnUpdate" />' property="back" onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>

		<input	type="image" src="<bean:message key="common.returnList" />"
		onClick="openReplace('lcManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="takeAwayLCDetailForm" property="prid"/>');return false">		</td>
                  </tr>
                  <tr>
                    <td height="30" align="center" valign="top"><%if(tabID!=null&&!tabID.equals("6")){//非已生效提交按钮显示%>
		<input	type="image" name="go" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">
		<%}%>		
		&nbsp;</td>
                  </tr>
                  </table></td>
                    <td class="innerTable_bottom_right"></td>
                </tr>
            </table>
            <!--内表结束-->
    
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
        </html:form>
</html:html>

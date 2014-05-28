<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%@ page
    import="com.witsoft.struts.form.systemManage.popedomManage.UserManageBindForm"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName" /></title>
    <script src="resources/vendor/jquery/jquery-2.1.1.min.js"></script>
<link href="resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="resources/font-awesome-4.0.3/css/font-awesome.min.css">
<style>
div.sele_div{border:1px solid #000000; width:185px; height:18px; clip:rect(0px,175px,17px,0px);overflow:hidden;}
select {position:relative; margin:-2px;width:187px;border:0px;behavior:url('/IB/common/select.htc'); }
div.list_div{border:1px solid #000000; width:185px; height:352px; clip:rect(0px,175px,17px,0px);overflow:hidden;}
    #save{
        width:160px;
        margin-top:20px;
    }
</style>

    <!--    -->
    <script src="resources/js/util.js"  type="text/javascript" charset="GB2312"></script>

<script>
function smtUsrBlnd()
{
    /**
  var sobj = document.getElementById("titalUsers");
  sobj.multiple = true;
  for (i=0; i<sobj.options.length; i++)
    sobj.options[i].selected = true;
  var sobj2 = document.getElementById("leaveUsers");
  sobj2.multiple = true;
  for (i=0; i<sobj2.options.length; i++)
    sobj2.options[i].selected = true; **/
  document.getElementById("main-form").submit();
}

</script>

</head>

<body>
<table width="100%" height="100%" border="0" align="center"
    cellpadding="0" cellspacing="0">
    <tr>
        <td class="outerTable_top_left"></td>
        <td class="outerTable_top_x"></td>
        <td class="outerTable_top_right"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_mainContent"><!--内表格开始-->
        <table width="100%" height="100%" border="0" align="center"
            cellpadding="0" cellspacing="0">
            <tr>
                <td class="innerTable_top_left"></td>
                <td class="innerTable_top_x"></td>
                <td class="innerTable_top_right"></td>
            </tr>
            <tr>
                <td class="innerTable_left_y"></td>
                <td align="center" class="innerTable_main">
                <div id="innerTable_div" class="container"><!--内容开始-->
                    <html:form   styleId="main-form" method="post" action="userManageBind.do">
                    <%String mode = ((UserManageBindForm) request
                .getAttribute("userManageBindForm")).getMode();
        String change = "";
                String sub ="";
        if (mode != null) {
     
                mode = mode.trim();
                mode = mode.substring(mode.length()-4, mode.length());
           
            change = "<select name=\"ugid\" onchange=\"submitKind(0,'onChange"
                    + mode.trim()
                    + "')\">"
                    + request.getAttribute("OPTION_UGID") + "</select>";
        }
%>

                    <table width="450" border="0" cellspacing="0"
                        cellpadding="0">
                        <tr>
                            <th width="20%" height="20" align="center">
                            <logic:equal name="userManageBindForm" property="mode" value="onChangerole">
                            班级
                            </logic:equal>
                             <logic:equal name="userManageBindForm" property="mode" value="role">
                            班级
                            </logic:equal>
                             <logic:equal name="userManageBindForm" property="mode" value="onChangeuser">
                            <bean:message
                                key="systemManage.popedomManage.user" />
                            </logic:equal>
                             <logic:equal name="userManageBindForm" property="mode" value="user">
                            <bean:message
                                key="systemManage.popedomManage.user" />
                          </logic:equal></th>
                            <th width="30%">&nbsp;</th>
                            <th width="20%" align="center">
                              <div class="sele_div"><%out.println(change);%></div>
                          </th>
                        </tr>
                        <tr>
                            <td width="182">
                            <div class="list_div">
                                <html:select  property="titalUsers" styleId="titalUsers" size="25"  ondblclick="moveOption(this, leaveUsers)"  multiple="false">
                                    <%out.println(request.getAttribute("OPTION_TITAL"));%>
                                </html:select>
                            </div>
                            </td>
                            <td width="30%" align="center" valign="middle">
                            <p>
                                <a href="#" class="btn btn-primary" onClick="moveOptionAll(titalUsers, leaveUsers)">
                                    <bean:message key="common.all"/><i class="fa fa-angle-double-right fa-2x"></i>
                                </a>
                            </p>
                            <p>
                                <a href="#" class="btn btn-primary" onClick="moveOption(titalUsers, leaveUsers)">
                                    <bean:message key="common.add"/><i class="fa fa-angle-right fa-2x"></i>
                                </a>
                            </p>
                            <p>
                                <a href="#" class="btn btn-primary" onClick="moveOption(leaveUsers, titalUsers)">
                                    <bean:message key="common.delete"/><i class="fa fa-angle-left fa-2x"></i>
                                </a>
                            </p>
                            <p>
                                <a href="#" class="btn btn-primary" onClick="moveOptionAll(leaveUsers, titalUsers)">
                                    <bean:message key="common.all"/><i class="fa fa-angle-double-left fa-2x"></i>
                                </a>
                            </p>
                          </td>
                            <td width="182">
                            <div class="list_div">
                                <html:select  property="leaveUsers" styleId="leaveUsers" size="25"
                                ondblclick="moveOption(this, titalUsers)"
                                multiple="false">
                                <%out.println(request.getAttribute("OPTION_LEAVE"));%>
                            </html:select></div>
                            </td>
                        </tr>
                  </table>

                    

                    <div class="footer">
                        <html:hidden property="errCode" />
                        <html:hidden property="mode" />
                    </div>

                        <a  id="save" href="/IB/userManageBind.do?mode=user"  onClick="smtUsrBlnd();submitKind(0,'submit')" class="btn btn-primary btn-lg active" role="button">
                            保 存 <i class="fa fa-save fa-2x"></i>
                        </a>
                </html:form> <!--内容结束-->
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
        <!--内表结束--></td>
        <td class="outerTable_right_y"></td>
    </tr>
    <tr>
        <td class="outerTable_bottom_left"></td>
        <td class="outerTable_bottom_x"></td>
        <td class="outerTable_bottom_right"></td>
    </tr>
</table>
</body>
</html>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName" /></title>
    <link href="resources/css/app.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/vendor/alertify.js/themes/alertify.core.css" />
    <link rel="stylesheet" href="resources/vendor/alertify.js/themes/alertify.bootstrap.css" />
    <link rel="stylesheet" href="resources/font-awesome-4.0.3/css/font-awesome.min.css">
<link href="/IB/common/default.css" rel="stylesheet" type="text/css">
<link href="resources/css/app.css" rel="stylesheet">
<link href="resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
<script language="javascript" type="text/javascript"  src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript"  src="/IB/common/list.js"></script>
<script src="resources/vendor/jquery/jquery-2.1.1.min.js"></script>
<link href="resources/vendor/iCheck/skins/square/blue.css" rel="stylesheet">
<script src="resources/vendor/iCheck/icheck.min.js"></script>
    <script src="resources/bootstrap-3.1.1/js/bootstrap.min.js"></script>
    <script src="resources/vendor/alertify.js/lib/alertify.min.js"></script>
    <script src="resources/js/app.js"  type="text/javascript" charset="UTF-8"></script>
<script>
    $(document).ready(function(){
        create_toolbar("/IB/systemManage/popedomManage/userGroupManageNew.jsp?prid=UGMT");
        $('#toolbar').append("<a  href=\"/IB/userManageBind.do?mode=user\" data-toggle=\"tooltip\"  title=\"用户绑定\" onClick=\"return openReplace(this.href)\" class=\"btn btn-primary active\" role=\"button\"><i class=\"fa fa-users\"></i></a>");
        $("a").tooltip();
    });
</script>
</head>

<body>
<html:form action="userUg.do">
    <html:hidden property="tabID" />
</html:form>
<table width="100%" height="100%" border="0" align="center"
    cellpadding="0" cellspacing="0">
    <tr>
        <td class="outerTable_top_left"></td>
        <td class="outerTable_top_x"></td>
        <td class="outerTable_top_right"></td>
    </tr>
    <tr>
        <td height="22" class="outerTable_left_y"></td>
        <td class="outerTable_head">
            <table border="0" cellpadding="0" cellspacing="0" align="center"  valign="bottom" class="tab_blank">
                <tr>
                    <td class="tab_unactive_btn" id="tab_btn"><h2><strong>班级管理</strong></h2></td>
                </tr>
            </table>
        </td>
        <td class="outerTable_right_y"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_main"><!--内表格开始-->
        <form method="post" action="deleteUserInfo.do?sign=2">
            <div class="form-with-toolbar"></div>
        <table width="100%" height="100%" border="0" align="center"  cellpadding="0" cellspacing="0">
            <tr>
                <td class="innerTable_top_left"></td>
                <td class="innerTable_top_x"></td>
                <td class="innerTable_top_right"></td>
            </tr>
            <%com.witsoft.common.UserBean user = (com.witsoft.common.UserBean)session.getAttribute("user");
                     String usid = user.getUsid();%>
            <tr>
                <td class="innerTable_left_y"></td>
                <td align="center" class="innerTable_main">
                <div id="innerTable_divLis" style="width:96%"><!--内容开始-->
                <table width="100%" border="0" cellpadding="0"  cellspacing="1" id="item_list" class="table">
                    <thead>
                        <th><input type="checkbox" id="selectAll"></th>
                        <th class="table_title">班级编号</th>
                        <th class="table_title">班级名称</th>
                        <th class="table_title">银行编号</th>
                        <th class="table_title">备注</th>
                        <th class="table_title">班级教师</th>
                    </thead>
                    <logic:notEmpty name="list">
                        <logic:iterate id="list" name="list" indexId="index" scope="request">
										 <%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>
                                <td>
                                 <logic:equal name="list" property="mkus" value='<%=usid%>'>      
                                <input name="id" type="checkbox"  value="<bean:write name="list"  property="ugid" />">
                                </logic:equal> 
                                <logic:notEqual name="list" property="mkus" value='<%=usid%>'>     
                                  <input name="id" type="checkbox"  value="<bean:write
                                        name="list"
                                        property="ugid" />" disabled>
                                         </logic:notEqual>    
                                        </td>
                                <span  onclick="openReplace('/IB/systemManage/popedomManage/userGroupManageDetail.jsp?userUg=<bean:write
                                        name="list"
                                        property="ugnm" />&userUg=<bean:write
                                        name="list"
                                        property="ugds" />&userUg=<bean:write
                                        name="list"
                                        property="ugid" />&userUg=<bean:write
                                        name="list"
                                        property="mkus" />')">
                                <td><bean:write name="list"
                                    property="ugid" /></td>
                                <td><bean:write name="list"
                                    property="ugnm" /></td>
                                <td><bean:write name="list"
                                    property="brno" /></td>
                                <td><bean:write name="list"
                                    property="ugds" /></td>
                                     <td><bean:write name="list"
                                    property="mkus" /></td>
                                </span>
                            </tr>
                        </logic:iterate>
                    </logic:notEmpty>
                </table>
                <!--内容结束--></div>
                </td>
                <td class="innerTable_right_y"></td>
            </tr>
            <tr>
                <td class="innerTable_bottom_left"></td>
                <td class="innerTable_bottom_x"></td>
                <td class="innerTable_bottom_right"></td>
            </tr>
        </table>
        <!--内表结束--></form>

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
</html>

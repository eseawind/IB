<%@ include file="/common/header.jsp"%>
<script language="javascript" type="text/javascript"
    src="/IB/common/list.js"></script>
<style type="text/css">@import url(/IB/file/date/calendar-system.css);</style>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="/IB/resources/font-awesome-4.0.3/css/font-awesome.min.css">
<body>
<%com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) session
                .getAttribute("user");

        com.witsoft.struts.action.systemManage.grade.LogWhere log = new com.witsoft.struts.action.systemManage.grade.LogWhere();
      
        String usid = request.getParameter("usid");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String isShow = "0"; //0 - ��ʾ 1������ʾ
        if (user.getRole() != null
                && (user.getRole().equals("9998") || user.getRole().equals(
                        "9999"))) {
            if (usid == null && startDate == null
                    && endDate == null) {
                isShow = "1";

            }

            if (request.getParameter("usid") != null
                    && !request.getParameter("usid").equals("")) {
                log.setUsid("%" + request.getParameter("usid") + "%");
            } else if(request.getParameter("usid") == null&& !user.getRole().equals("9998") && !user.getRole().equals(
                        "9999")){
                log.setUsid(user.getUsid());
            }else{
                log.setUsid("%");
                }

            if (request.getParameter("startDate") != null
                    && !request.getParameter("startDate").equals("")) {
                log.setStartDate(request.getParameter("startDate"));
            } else {
                log.setStartDate("1900-01-01");
            }
            if (request.getParameter("endDate") != null
                    && !request.getParameter("endDate").equals("")) {
                log.setEndDate(request.getParameter("endDate"));
            } else {
                log.setEndDate("3000-01-01");
            }
        } else {
            if (startDate == null && endDate == null) {
                isShow = "1";
            }

            log.setUsid(user.getUsid());
            if (request.getParameter("startDate") != null
                    && !request.getParameter("startDate").equals("")) {
                log.setStartDate(request.getParameter("startDate"));
            } else {
                log.setStartDate("1900-01-01");
            }
            if (request.getParameter("endDate") != null
                    && !request.getParameter("endDate").equals("")) {
                log.setEndDate(request.getParameter("endDate"));
            } else {
                log.setEndDate("3000-01-01");
            }

        }
        log.setIsShow(isShow);

        java.util.Map list = new java.util.HashMap();

        list = new com.witsoft.struts.action.systemManage.grade.ShowLogging()
                .getLogging(log, "");
        request.setAttribute("list", list);

        %>
<table width="100%" height="100%" border="0" align="center"
    cellpadding="0" cellspacing="0">
    <tr>
        <td  class="outerTable_top_left"></td>
        <td class="outerTable_top_x"></td>
        <td class="outerTable_top_right"></td>
    </tr>
    <tr>
        <td height="22" class="outerTable_left_y"></td>
        <td align="right" valign="bottom" class="outerTable_head">
        <table border="0" cellpadding="0" cellspacing="0" align="left"
            valign="bottom" class="tab_blank">
            <tr>
                <td class="tab_active_left" id="tab_left"></td>
                <td class="tab_active_btn" id="tab_btn"><nobr>ѧ���������</nobr></td>
                <td class="tab_active_right" id="tab_right"></td>
            </tr>
        </table>      <div>  <table>
                    <form action="showFlowChart.jsp">
                    <tr>
                        <%if (user.getRole() != null
                && (user.getRole().equals("9998") || user.getRole().equals(
                        "9999"))) {%>
                        <td>
                            <input type="text" name="usid" class="form-control" placeholder="�û����">
                        </td>
                        <%}%>
                        <td>&nbsp;��ʼʱ�䣺</td>
                        <td><input type="date" name="startDate"  class="form-control"></td>
                        <td>&nbsp;����ʱ�䣺</td>
                        <td><input type="date" name="endDate" class="form-control"></td>
                        <td align="right">
                            <button name="submit" type="submit" class="btn btn-primary">
                                <i class="fa fa-search"></i> �鿴
                            </button>
                        &nbsp;&nbsp;</td></tr>
                    </form>
        </table></div></td>
        <td class="outerTable_right_y"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_main"><!--�ڱ���ʼ-->
        <form method="post" action="showFlowChart.jsp">
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
                
                
<div id="innerTable_divLis" style="width:96%"><!--���ݿ�ʼ-->
                <table width="100%" border="0" cellpadding="0"
                    cellspacing="1" id="item_list" style="cursor:auto;">
                    <tr>
                        <th width="13%">ѧ������</th>
                        <th width="12%">�û���</th>
                        <th width="32%">��������</th>
                        <th width="15%">ҵ����</th>
                        <th width="28%">����ʱ��</th>
                    </tr>




                    <%
        java.util.Map list1 = (java.util.HashMap) request.getAttribute("list");
        if (list != null) {
            int j = 0;
            for (int i = 0; i < list1.size(); i++) {
                Object[] obj = (Object[]) list1.get((i + "").trim());
if(i%2==1){
out.println("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\"");

}else{
out.println("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\'; \"");

}
                    out.print("onClick=\"window.open('/IB/flowchart.do?id="
                                    + obj[3]
                                    + "&prid="
                                    + obj[5]
                                    + "','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no')\">");
               
                for (j = 0; j < 5; j++) {
                    %>
                    <td><%=obj[j]%></td>
                    <%}%>
                    </tr>
                    <%}
        }%>
                </table>
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
        <!--�ڱ�����--></form>        </td>
        <td class="outerTable_right_y"></td>
    </tr>
    <tr>
        <td class="outerTable_bottom_left"></td>
        <td class="outerTable_bottom_x"></td>
        <td class="outerTable_bottom_right"></td>
    </tr>
</table>
</body>
</html:html>
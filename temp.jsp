<%@ page contentType="text/html; charset=GB2312"%>
<script language="javascript">

<%
    com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) request
                .getSession().getAttribute("user");
    if(user==null){
    %>
    parent.location.href='index.jsp?overtime=true'
    <%
    }else
    if(user!=null&&user.getRole().equals("9998")||user.getRole().equals("9999")){//����Ȩ�޴���ֱ���˵���ҳ(9999)ϵͳά��(9998)��ʦ
  //  System.out.println(user.getRole());
  //  com.witsoft.bean.systemManage.popedomManage.PopedomManage manage=new com.witsoft.bean.systemManage.popedomManage.PopedomManage();
  //  manage.loginOut("****",user.getUsid());
   session.removeAttribute("user");
    %>
    parent.location.href='index.jsp'
    <%}
   // System.out.println("����loginnews�ɹ�");
    request.getSession().setAttribute("loginnews","true");
    //request.setAttribute("loginnews","true");
    %>
parent.location.href="/IB/index.jsp"

</script>
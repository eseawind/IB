<%@ page contentType="text/html; charset=GB2312" %>
<%

String brno = request.getParameter("brno");
String rlid = request.getParameter("rlid");
com.witsoft.common.UserBean user = (com.witsoft.common.UserBean)request.getSession().getAttribute("user");

if(user == null||brno==null){

%>
    <jsp:forward page="index.jsp" />
<%
}

if(brno!=null&&brno.equals("null")){

%>
    <jsp:forward page="index.jsp" />
<%
}
if(user!=null&&user.getUsid()!=null&&brno!=null){
//user = new com.witsoft.common.UserBean();
if(brno.equals("****")&&rlid!=null&&rlid.equals("9998")){
user.setBrno(brno);
user.setRole(rlid);
String rildArray[][]={{"��ʦ","9998"}};

session.setAttribute("rildArray",com.witsoft.common.ConvertOptions.ConvertArrayToString(rildArray).replace("<option></option>",""));
session.setAttribute("user",user);

%>
<jsp:forward page="main.jsp?id=00" />
<%
}//��ʦ��ɫ

if(brno.equals("****")&&rlid!=null&&rlid.equals("9999")){
user.setBrno(brno);
user.setRole(rlid);
String rildArray[][]={{"ϵͳ����Ա","9999"}};

session.setAttribute("rildArray",com.witsoft.common.ConvertOptions.ConvertArrayToString(rildArray).replace("<option></option>",""));
session.setAttribute("user",user);

%>
<jsp:forward page="main.jsp?id=00" />
<%

}//ϵͳ����Ա��ɫ
user.setBrno(brno);

 rlid = ((String[])new com.witsoft.bean.systemManage.popedomManage.EmrlctpBean().findPartOnlyUsid(user.getUsid(),user.getBrno()).get(0))[1];
 if(rlid==""||rlid.equals("")) {//û�м�����Ȩ��
 request.setAttribute("msg","common.noPower");
 %>
<jsp:forward page="inc/error.jsp" />
<%
 }
user.setRole(rlid);

request.getSession().setAttribute("user",user);
request.getSession().setAttribute("rildArray",com.witsoft.common.ConvertOptions.ConvertArrayToString(new com.witsoft.bean.systemManage.popedomManage.EmrlctpBean().findPartOnlyUsid(user.getUsid(),user.getBrno())).replace("<option></option>",""));
}
org.apache.log4j.Logger log = org.apache.log4j.Logger.getLogger("log.txt");

String id=request.getParameter("id");//����idֵ

%>
  <jsp:forward page="main.jsp?id=<%id%>" />
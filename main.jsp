<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<html>
<head>
<%@ page contentType="text/html; charset=gb2312"%>
<title>���ʽ���ģ��ϵͳ</title>
<script>
function Trim(strValue){ return strValue.replace(/^\s*|\s*$/g,"");}
function GetCookie(sName){
	var aCookie = document.cookie.split(";"); //�õ��ָ��cookie��ֵ��
	for (var i=0; i < aCookie.length; i++){
		var aCrumb = aCookie[i].split("=");//������ֵ�ֿ�
		if (sName == Trim(aCrumb[0])){//�����ָ����cookie���򷵻�����ֵ
			return unescape(aCrumb[1]);
		}
	}
	return null;
}
var framecols = "222,9,*";
if (GetCookie("datacols")!=null){ 
	framecols = GetCookie("datacols");
}
</script>
<script>
function document.oncontextmenu() {event.returnValue = false;} //��������Ҽ�
function document.ondragstart() {event.returnValue = false;} //
function window.onhelp() {return false;} //����F1����
function document.onkeydown()
{
  if ((window.event.altKey) && ((window.event.keyCode==37) || (window.event.keyCode==39))) {
    //���� Alt+������� �� Alt+�������
    event.returnValue = false;
  }

  if (event.keyCode==8) {
    //�����˸�ɾ����
    if (event.srcElement.type != "text" && event.srcElement.type != "textarea" && event.srcElement.type != "password") {
      event.keyCode = 0;
      event.returnValue = false;
    }
  }

  if ((event.keyCode==116) || (event.ctrlKey && event.keyCode==82)) {
    //���� F5 ˢ�¼�  Ctrl+R
    event.keyCode = 0;
    event.returnValue = false;
  }

  if (event.keyCode == 122) {event.keyCode = 0; event.returnValue = false;} //����F11
  if (event.ctrlKey && event.keyCode == 78) event.returnValue = false; //����Ctrl+n
  if (event.shiftKey && event.keyCode == 121) event.returnValue = false; //����shift+F10
  if (window.event.srcElement.tagName == "A" && window.event.shiftKey)
    window.event.returnValue = false; //����shift���������¿�һ��ҳ
  if ((window.event.altKey) && (window.event.keyCode == 115)) {
    //����Alt+F4
    window.showModelessDialog("about:blank","","dialogWidth:1px;dialogheight:1px");
    return false;
  }
}
</script>
<%String id=request.getParameter("id");
//if(!id.equals("00")){//���ް�����ʽ����
com.witsoft.common.UserBean user = (com.witsoft.common.UserBean)request.getSession().getAttribute("user");
com.witsoft.bean.common.SessionManageBean bean=new com.witsoft.bean.common.SessionManageBean();
bean.saveOrUpdate(user.getUsid(),"caseId",id);
//session.setAttribute("caseId",id);
//}
%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script>
frstr =  '<frameset rows="88,*" cols="*" frameborder="NO" border="0" framespacing="0">';
frstr += '    <frame src="top.jsp?id=<%=id%>" name="topFrame" scrolling="NO" noresize>';
frstr += '    <frameset cols="222,9,*" frameborder="no" border="0" framespacing="0" id="myFrame">';

frstr += '        <frameset rows="38,*" id="tree-left" cols="*" frameborder="no" framespacing="0">';
frstr += '                <frame src="treeCase.jsp?id=<%=id%>" name="caseFrame" scrolling="no" noresize>';
frstr += '                <frame src="menu.jsp?id=<%=id%>" name="leftFrame" scrolling="no" noresize>';
frstr += '         </frameset>';

frstr += '        <frame src="control.jsp" name="control" scrolling="no" noresize>';
frstr += '        <frameset rows="*,54" id="frame_bottom" cols="*" frameborder="no" framespacing="0">';
frstr += '            <frame src="announcement.do?sign=stu" name="mainFrame" scrolling="no" noresize>';
frstr += '            <frame src="help.jsp" name="helpFrame">';
frstr += '         </frameset>';
frstr += '    </frameset>';
frstr += '</frameset>';
frstr += '</frameset>';
frstr += '<noframes><body>';
frstr += '</body></noframes>';
document.write(frstr);
</script>
<noscript>
<frameset rows="88,*" cols="*" frameborder="NO" border="0" framespacing="0">
    <frame src='top.jsp' name="topFrame" scrolling="NO" noresize>
    <frameset cols="222,9,*" frameborder="no" border="0" framespacing="0" id="myFrame">

frstr += '        <frameset rows="38,*" id="tree-left" cols="*" frameborder="no" framespacing="0">';
frstr += '                <frame src="treeCase.jsp?id=<%=id%>" name="caseFrame" scrolling="no" noresize>';
frstr += '                <frame src="menu.jsp?id=<%=id%>" name="leftFrame" scrolling="no" noresize>';
frstr += '         </frameset>';

		<frame src="control.jsp" name="control" scrolling="no" noresize>
		<frameset rows="*,54" id="frame_bottom" cols="*" frameborder="no" framespacing="0">
			<frame src="announcement.do?sign=stu" name="mainFrame" scrolling="yes" noresize>
			<frame src="help.jsp" name="helpFrame">				
		</frameset>
    </frameset>
</frameset>
</frameset>
<noframes><body></body></noframes>
</noscript>
</html>

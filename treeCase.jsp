<%@ page contentType="text/html; charset=GB2312"%>
<%@ page import="com.witsoft.bean.common.SessionManageBean" %>
<%@ page import="com.witsoft.common.UserBean" %>
<html>
<head>
<title>Menu</title>
<meta name="Description" content="���ʽ���ģ��ϵͳ5.0��" />
<meta name="Copyright" content="��ҳ��Ȩ��������ʵ���Ƽ����޹�˾���С�All Rights Reserved" />
<base onmouseover="window.status='���ʽ���ģ��ϵͳ V5.0 ';return true" />
    <link href="resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/font-awesome-4.0.3/css/font-awesome.min.css">
<style type="text/css">
    .navbar-default {
        background-color: #428bca;
        border-color: #428bca;
    }

    i {
        width:108px;
        border: 0;
    }

    .menu:hover
    {
        background-color:#FFCC99;
    }

</style>
<%
 com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) session
                    .getAttribute("user");

String id=new SessionManageBean().findByUsidAndSessionId(user.getUsid(),"caseId");
%>
<script>
 var oPopup=window.createPopup();   
 function rdl_doClick(cont)   
  {   
      var  str=cont;  
		    oPopup.document.body.innerHTML=str;
      var   x=window.event.clientX+window.screenLeft;   
      var   y=window.event.clientY+window.screenTop;   
      oPopup.show(x,y,140,30);   
  }   	

function caseRes(){
var ids;
    ids="<%=id%>";
	if(ids!="00"){//�ܲ鿴�������
		var url ="/IB/cases.do?flag=load&id=<%=id%>";
		window.open(url,"leftFrame");
		document.getElementById("Image1").src="/IB/images/tree.gif";
		document.getElementById("Image2").src="/IB/images/case_o.gif";
	} 
}
function caseTree(){
		document.getElementById("Image1").src="/IB/images/tree_o.gif";
		document.getElementById("Image2").src="/IB/images/case.gif";
}

function tipTree(){
	rdl_doClick("<table id='mypopup' style='width:140px;height:30px;font-size:12px;text-align:center;vertical-align:middle;background-color:lightyellow;border:solid black 1px'><tr><td>�������ϵͳ����</td></tr></table>");	

}

function tipCase()
{
	var ids;
		ids="<%=id%>";
	if(ids=="00"){
			rdl_doClick("<table id='mypopup'  style='width:140px;height:30px;font-size:12px;text-align:center;vertical-align:middle;background-color:lightyellow;border:solid black 1px'><tr><td>�Բ��𣬲��ܲ鿴����</td></tr></table>");	
	}else{
			rdl_doClick("<table id='mypopup'  style='width:140px;height:30px;font-size:12px;text-align:center;vertical-align:middle;background-color:lightyellow;border:solid black 1px'><tr><td>����鿴����</td></tr></table>");	
	}	
}

</script>
</head>
<input type="hidden" id="clickstate">
<body>

<div class="navbar-default" role="navigation">
<nav >
    <a onClick="caseTree()"  href="/IB/menu.jsp?id=<%=id%>"  target="leftFrame">
        <i class="fa fa-sitemap menu" style="color:white;padding: 10px;text-align: center">����</i>
    </a>
    <a href="#" onFocus="this.blur()" onClick="caseRes()">
        <i class="fa fa-briefcase menu" style="color:white;padding: 10px;text-align: center">����</i>
    </a>
</nav>
</div>
</body>
</html>

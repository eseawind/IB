<%@ page contentType="text/html; charset=GB2312"%>
<html>
<head>
<title>��ѡ������</title>


<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="imagetoolbar" content="no" />
<style>
body, table {font-size:12px;}
</style>
<%
        String userid = request.getParameter("usid");
        String pswd = request.getParameter("pswd");

        com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) request
                .getSession().getAttribute("user");
        if (user == null && userid == null) {
        %>
<jsp:forward page="index.jsp" />
<%}//��ʱ
        String buf = new com.witsoft.bean.systemManage.popedomManage.EmrlctpBean()
                .findPart(user.getUsid().toUpperCase());

        %>
</head>
<body bgcolor="#FFFFFF">
<table width="783" border="0" align="center" cellpadding="0"
	cellspacing="0" id="__01">
	<tr>
		<td><%if (buf.indexOf("-tzh-") != -1) {
        %><img src="images/load_01.gif" alt="" width="224" height="255"
			border="0" usemap="#load_01Map" id="load_01" /><%} else {%><img
			src="images/load_01_dis.gif" alt="" width="224" height="255"
			border="0" usemap="#load_01Map" id="load_01" /><%}%></td>
		<td><%
        if (buf.indexOf("-kzh-") != -1) {
        %><img src="images/load_02.gif" alt="" width="343" height="255"
			border="0" usemap="#load_02Map" id="load_02" /><%} else {%> <img
			src="images/load_02_dis.gif" alt="" width="343" height="255"
			border="0" usemap="#load_02Map" id="load_02" /><%}%></td>
		<td><%
        if (buf.indexOf("-yfh-") != -1) {

        %><img src="images/load_03.gif" alt="" width="216" height="255"
			border="0" usemap="#load_03Map" id="load_03" /><%} else {%><img
			src="images/load_03_dis.gif" alt="" width="216" height="255"
			border="0" usemap="#load_03Map" id="load_03" /><%}%></td>
	</tr>
	<tr>
		<td><%
        if (buf.indexOf("-tsh-") != -1) {

        %><img src="images/load_04.gif" alt="" width="224" height="257"
			border="0" usemap="#load_04Map" id="load_04" /><%} else {%> <img
			src="images/load_04_dis.gif" alt="" width="224" height="257"
			border="0" usemap="#load_04Map" id="load_04" /><%}%></td>
		<td><%
        if (buf.indexOf("-dsh-") != -1) {

        %><img src="images/load_05.gif" alt="" width="343" height="257"
			border="0" usemap="#load_05Map" id="load_05" /><%} else {%> <img
			src="images/load_05_dis.gif" alt="" width="343" height="257"
			border="0" usemap="#load_05Map" id="load_05" /><%}%></td>
		<td style="position:relative"><%
        if (buf.indexOf("-gpts-") != -1) {

        %><img src="images/load_06.gif" alt="" width="216" height="257"
			border="0" usemap="#load_06Map" id="load_06"><%} else {%><img
			src="images/load_06_dis.gif" alt="" width="216" height="257"
			border="0" usemap="#load_06Map" id="load_06"><%}%><div style="position:absolute; top:222px; left:25px;"><select
			name="select" onChange="if(this.selectedIndex && this.selectedIndex != 0){ window.open(this.value); } this.selectedIndex=0;">
			<option>����ĵ�</option>
			<option value="guide/index.htm">ʵ��ָ��</option>
			<option value="help/lex/index.htm">���ɷ���</option>
		</select></div>
		<div style="position:absolute; top:222px; left:105px;"><select
			name="select1" onChange="if(this.selectedIndex && this.selectedIndex != 0){ location.replace(this.value); } this.selectedIndex=0;">
		    <option>��������</option>
		    <option value="cases.do?flag=list&brno=PCBCCNBJBJX"��selected>��֤��</option>
		    <option value="cases.do?flag=list&brno=MRMDUS33ADR"��selected>֪ͨ��</option>
		    <option value="cases.do?flag=list&brno=DGBOFACALI"��selected>�鸶��</option>
		    <option value="cases.do?flag=list&brno=CMBCCNBS131"��selected>������</option>
		    <option value="cases.do?flag=list&brno=SANWJPJTXXX"��selected>������</option>
		    <option value="cases.do?flag=list&brno=ZH0004"��selected>��Ʊ������</option>
		    <option value="cases.do?flag=list&brno=FS000000025"��selected>�����</option>
		    <option value="cases.do?flag=list&brno=JMXH0011"��selected>������</option>
		</select></div>
		</td>
	</tr>
</table>
<br>
<hr>
<div align="center">&copy;2006�������������Ȩ����</div>
<%

        if (buf.indexOf("-tzh-") != -1) {
        %>
<map name="load_01Map" id="load_01Map">
	<area shape="circle" coords="132,142,68" href="cases.do?flag=list&brno=MRMDUS33ADR" />
</map>
<%}
        if (buf.indexOf("-kzh-") != -1) {
        %>
<map name="load_02Map" id="load_02Map">
	<area shape="circle" coords="179,83,65" href="cases.do?flag=list&brno=PCBCCNBJBJX" />
</map>
<%}%>
<map name="load_03Map" id="load_03Map">
	<%
        if (buf.indexOf("-yfh-") != -1) {
        %>
	<area shape="circle" coords="102,147,73" href="cases.do?flag=list&brno=DGBOFACALI" />
	<%}%>
	<area shape="rect" title="�˳�ϵͳ" coords="144,21,197,39"
		href="loginout.jsp" />
</map>
<%
        if (buf.indexOf("-tsh-") != -1) {
        %>
<map name="load_04Map" id="load_04Map">
	<area shape="circle" coords="130,121,77" href="cases.do?flag=list&brno=CMBCCNBS131" />
</map>
<%}
        if (buf.indexOf("-dsh-") != -1) {
        %>
<map name="load_05Map" id="load_05Map">
	<area shape="circle" coords="171,164,78" href="cases.do?flag=list&brno=SANWJPJTXXX" />
</map>
<%}
        if (buf.indexOf("-gpts-") != -1) {
        %>
<map name="load_06Map" id="load_06Map">
	<area shape="circle" coords="97,143,68" href="cases.do?flag=list&brno=ZH0004" />
</map>
<%}%>
</body>
</html>

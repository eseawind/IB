<%--����--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%@ page import="com.witsoft.bean.cases.CasesManage" %>
<html>
<head>
<script language="javascript" type="text/javascript" src="/IB/common/list.js"> </script>
<title>����</title>
<style>
div.sele_div_cl{border:1px solid #000000; width:122px; height:18px; clip:rect(0px,112px,17px,0px);overflow:hidden;}
select {position:relative; margin:-2px;width:124px;border:0px;behavior:url('/IB/common/select.htc'); }
</style>
<script language="javascript">
function setHref(){
 var link01 = document.getElementById('link01');
   window.open("/IB/gradeexcel.jsp?ugid="+document.getElementById('ugid').value);
   return true;
}
</script>
</head>
<body>
<%
com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) session
                    .getAttribute("user");
request.setAttribute("OPTION_UGID", com.witsoft.common.ConvertOptions
                        .ConvertArrayToString(new com.witsoft.bean.systemManage.popedomManage.QueryUserGroup()
                                .getUserGroup(user.getBrno(), user.getUsid())).replace("<option></option>", ""));
CasesManage manage=new CasesManage();
String casesId=manage.getCaseId(null,null);
                                %>
<table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td align="center" valign="middle" class="outerTable_mainContent">
		<!--�ڱ��ʼ-->
		<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td class="innerTable_top_left"></td>
				<td class="innerTable_top_x"></td>
				<td class="innerTable_top_right"></td>
			</tr>
			<tr>
				<td class="innerTable_left_y"></td>
				<td align="center" valign="top" class="innerTable_main">
				
				<!--���ݿ�ʼ-->
				 <form>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
						  <td width="100%" align="center" valign="top">
							 <div class="blankt" style="height:20px"></div><table width="90%" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
								<tr>
								  <td height="25" colspan="2" align="center" valign="middle"  class="innertitle">��&nbsp;&nbsp;&nbsp;&nbsp;��</td>
							  </tr>
								<tr>
								  <td align="right" valign="top" bgcolor="#EBEBEB">������Ҫ�����İ�����ţ�</td>
								  <td width="76%" align="left" valign="top">
								    <input name="casesId" id="casesId" value="<%=casesId%>" size="80" maxlength="80" readonly="readonly">
							      &nbsp;
							      <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('test','casesId');return false"></html:image>
						      </td>
							  </tr>
								<tr>
									<td width="24%" align="right" valign="middle" bgcolor="#EBEBEB">�������û���ţ�</td>
								  <td align="left" valign="middle">
									    <input name="usid" type="text" class="sele_div_cl">��Ĭ��Ϊȫ��ѧ���� </td>
							    </tr>
								
								<tr>
								    <td align="right" valign="middle" bgcolor="#EBEBEB">��ѡ��༶��</td>
								    <td align="left" valign="middle">
                                    <table width="100%" height="20" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1"></td>
  </tr>
  <tr>
    <td><div class="sele_div_cl">
                                        <select id='ugid' name="ugid">
                                            <%out.println(request.getAttribute("OPTION_UGID"));%>
                                        </select>
                                  </div></td>
  </tr>
</table>
       							  </td>
							    </tr>
							</table>
							<table width="90%" border="0" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="80%" height="60" align="center" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;<br>
					              <input type="button" name="submit" value="����" onClick="init()" class="btn">	
                                   &nbsp;&nbsp;
								  <input type="button" id="tes1" name="tes1" value="�鿴�ɼ�ͼ" onClick="jFreeChart()" class="btn">
								   &nbsp;&nbsp;
							    <input type="button" id ="link01"  onClick="setHref()" value="����ѧ���ɼ��б�" class="btn"></td>
                              </tr>
                            </table></td>
							
						</tr>
					</table><div id="innerTable_divLis" style="width:90%;height:220px" >
				   <div id="grade">
					<table width="100%" border="0" cellspacing="1" cellpadding="1" id="item_list" style="cursor:auto;">
                <tr>
                <th width="12%">�û����</th>
                <th width="16%">����</th>
                <th width="13%">�༶</th>
                <th width="11%">�����ܷ�</th>
                <th width="18%">ѧ���������������ܷ�</th>
                <th width="12%">�۳�����</th>
                <th width="18%">ʵ�ʵ÷�&#8249;�ٷ���&#8250;</th>
                </tr>
</table></div>
</div>
<SCRIPT LANGUAGE="JavaScript">
/**
�ɼ���״ͼ
**/
function jFreeChart()
{
var ugid="";
ugid=document.getElementById("ugid").value;
window.open('/IB/jFreeChart.do?ugid='+ugid);
}
</SCRIPT>

				 </form>
                 <SCRIPT LANGUAGE="JavaScript">
<!--

var http_request = false;
function init()
{
  var ugid = document.forms[0].ugid.value;
  var usid = document.forms[0].usid.value;
  var casesId=document.forms[0].casesId.value;
  
  var url = "/IB/GetGradeServlet?ugid=" + ugid+"&usid="+usid+"&casesId="+casesId;
  http_request = false;
  if (window.XMLHttpRequest)
  {
    http_request = new XMLHttpRequest();
    if (http_request.overrideMimeType)
    {
      http_request.overrideMimeType('text/html');
    }
  }
  else if (window.ActiveXObject)
  {
    try
    {
      http_request = new ActiveXObject("Msxml2.XMLHTTP");
    }
    catch (e)
    {
      try
      {
        http_request = new ActiveXObject("Microsoft.XMLHTTP");
      }
      catch (e)
      {
      }
    }
  }
  if (!http_request)
  {
    return false;
  }
  http_request.onreadystatechange = show;
  http_request.open('GET', url, true);
  http_request.send(); 
}
function show()
{

  if (http_request.readyState == 4)
  {
    if(http_request.status == 200)
    {
      try
      {
        document.getElementById("grade").innerHTML= http_request.responseText
      }
      catch(e)
      {
      }
    }
    else
    {
      document.getElementById("grade").innerHTML="<strong><color=\"#FF0000\">�Բ����޷������ص���ʾ��Ϣ��</color></strong>";
    }
  }
  else
  {
    try
    {
      document.getElementById("grade").innerText = "���ڻ�ȡѧ���ɼ���";
    }
    catch (e)
    {
    }
  }
}
//-->
</SCRIPT>

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
		<!--�ڱ����--></td>
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

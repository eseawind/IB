<head>
<link href="/IB/common/default.css" rel="stylesheet"
	type="text/css">
<script language="javascript">	
function JHshNumberText()
{
if ( !(((window.event.keyCode >= 48) && (window.event.keyCode <= 57))
|| (window.event.keyCode == 13) || (window.event.keyCode == 46)
|| (window.event.keyCode == 45)))
{
window.event.keyCode = 0 ;
}
}
</script>
<style>
 .redtext{
 FONT-FAMILY:Arial,"����", System,;
 color:red;
 }
</style>	
</head>
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
		</td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td valign="middle" class="outerTable_main"><!--�ڱ��ʼ-->
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
		    <div id="innerTable_div">
		        <!--���ݿ�ʼ-->
                <table width="100%" height="240" border="0" cellpadding="0"
					cellspacing="1" >
                    <tr>
                        <th width="100%" align="center" valign="middle">
                            <%@ page contentType="text/html; charset=GB2312"%>
                            <%
String ugid = request.getParameter("ugid");
if(ugid !=null&&!ugid.equals("")){
 if(new com.witsoft.common.Tools().setPopedom(ugid)){
 %>
                            <table>
                                <tr>
                                    <th> ��ȫ��Ȩ�ɹ���</th>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td> 
                                        <form name="form1" method="post" action="/IB/system/ugidPopedom.jsp">
                                            <input type="submit" name="Submit" value="������Ȩ" />
                                        </form>
                                        </td>
                                </tr>
                            </table>
                            <%
 }else{
 
 %>
                            <table>
                                <tr>
                                    <th> ��ȫ��Ȩʧ�ܣ�</th>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><form name="form2" method="post" action="/IB/system/ugidPopedom.jsp">
                                            <input type="submit" name="Submit2" value="������Ȩ" />
                                        </form>
                                        </td>
                                </tr>
                            </table>
                            <%
 
 }

}else{
%>
                            <form action="ugidPopedom.jsp">
                                <table width="80%" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
                                    <TR>
                                      <TD colspan="2" align="center" class="innertitle">�û�����Ȩ</TD>
                                    </TR>
                                    <TR>
                                        <TD width="43%" align="right" valign="middle"> �û���ID��                                                                                      </TD>
                                        <TD width="57%" align="left" valign="middle">
                                           
                                      &nbsp;
                                      <INPUT type="text" name="ugid" value="" onkeypress="JHshNumberText()"><span class="redtext">&nbsp;&nbsp;(�û���ID��ֻ����0-9֮�������)</span> </TD>
                                    </TR>
                              </TABLE><input type="submit" name="submit" value="��ȫ��Ȩ"> <div class="blankb"></div>
                            </form>
                            <p>
                                <%}%>
                            </p>
                        </th>
                    </tr>
                </table>
		        <!--���ݽ���-->
            </div>
           <TABLE>
				<TR>
				<TD>
				
				
				<div class="footer">
				
				</div>	</TD></TR>
				</TABLE>
				</td>
				<td class="innerTable_right_y"></td>
			</tr>
		    <tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"></td>
				<td class="innerTable_bottom_right"></td>
			</tr>			</table>
		    <!--�ڱ����-->
		</td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_bottom_left"></td>
		<td class="outerTable_bottom_x"></td>
		<td class="outerTable_bottom_right"></td>
	</tr>
</table>
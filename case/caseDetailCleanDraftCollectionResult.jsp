<%--���ʽ��㰸�����ģ�-��Ʊ������ҵ�����--%>
<%@ page contentType="text/html; charset=GB2312"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>
<%@ page import="com.witsoft.bean.common.SessionManageBean" %>
<%@ page import="com.witsoft.common.UserBean" %>
<html>
<head>
<link href="/IB/case/case.css" rel="stylesheet" type="text/css">
<title></title>
<script language="javascript" type="text/javascript"    src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript"    src="/IB/case/case.js"></script>
<script language="javascript" type="text/javascript" src="/IB/case/xmlCase.js"></script>
	<script>
	function displayIdResult(showId)
	{
	//����¼��ҳ���и�ѡ��ѡ�е�״̬,�õ����ҳ������Ӧ�����ʾ������;
		var showIdResult=showId;//¼��ҳ����checkbox��ѡ��״̬;
		var idName=new Array();
			idName=showIdResult.split(",")
		var len=idName.length-1;
		for(var numR=0;numR<len;numR++)
			  { 
				idObject=idName[numR];
				document.getElementById(idObject).style.display="";
				
			  }
	}

	function idSP(spanIds)
	{
	//����¼��ҳ���зǱ�ѡ���ֵ,�õ����ҳ������Ӧ�����ʾ������;
		var spanIdR=spanIds;//¼��ҳ���зǱ�ѡ��������ֵ����������;
		var lenSpan=spanIdR.length;
		var spanName=new String();
		for(var numR=0;numR<lenSpan;numR+=3)
			  { 
				spanName=spanIdR.substr(numR,3);
				document.getElementById(spanName).style.display="";
			  }
	}
	<%
	 com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) session
						.getAttribute("user");
	
	String id=new SessionManageBean().findByUsidAndSessionId(user.getUsid(),"caseId");
%>

	function flash()
	{
		var xmlhttp   =   new   ActiveXObject("MSXML2.XMLHTTP");  
		var url="/IB/guide/lc_flash/"+<%=id%>+".swf";
			 xmlhttp.open("get","/IB/guide/lc_flash/"+<%=id%>+".swf",false);   
		     xmlhttp.send();   
			  if(xmlhttp.readyState==4&&xmlhttp.status==200)   
			  {   
				  window.open("/IB/guide/lc_flash/"+<%=id%>+".htm");
				  return   true;   
			  }   
			  else   
			  {  
			      alert("�Բ���û���ҵ������ʾ"); 
				  return   false;   
			  }
}	
	</script>	
	</head>
<form>
		<%String names=(String)map.get("CDH");%>
		<%String spanNames=(String)map.get("idPS");%>
		<input type="hidden" id="showDiv" value="<%=names%>">
		<input type="hidden" id="showSpan" value="<%=spanNames%>">
<table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_mainContent"><!--�ڱ��ʼ-->
		<table width="100%" height="100%" border="0" align="center"	cellpadding="0" cellspacing="0">
			<tr>
				<td class="innerTable_top_left"></td>
				<td class="innerTable_top_x"></td>
				<td class="innerTable_top_right"></td>
			</tr>
			<tr>
			  <td colspan="3" > <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                  <td height="20" align="left" valign="middle"><strong>���ͣ�</strong>��Ʊ������ҵ�����</td>
                </tr>
                <tr>
                  <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
                </tr>
                <tr>
                  <td height="20" align="left" valign="middle"><strong>���ƣ�</strong>
                      <%if(map.get("detai")!=null){out.print(map.get("detai"));}%></td>
                </tr>
                <tr>
                  <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
                </tr>
                <tr>
                  <td height="20" align="left" valign="middle"><strong>������</strong>
                      <%if(map.get("grade")!=null){out.print(map.get("grade"));}%>
                    ��</td>
                </tr>
                <tr>
                  <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
                </tr>
                <tr>
                  <td height="20" align="left" valign="middle"><span onClick="flash()"><strong>��ʾ��</strong><img src="/IB/images/demo.gif" alt="������ʾ" width="16" height="16"></span></td>
                </tr>
                <tr>
                  <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
                </tr>
                <tr>
                  <td align="left" height="20"><strong>��ѯ��</strong>
                      <input class="search" type="text" name="lable" id="lable" size="15">
                      <img src="/IB/images/search.gif" alt="��ѯ" onClick="searchCase()" style="cursor:hand"></td>
                </tr>
                <tr>
                  <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
                </tr>
                <tr>
                  <td height="20" align="left" valign="middle"><strong>���ݣ�</strong><span id="tips" style="display:none;width:120px;height:20px;color:#000;text-align:center;vertical-align:middle;background-color:lightyellow;border:solid black 1px"></span></td>
                </tr>
              </table>			    <!--���ݽ���--></td>
		  </tr>
               <tr><td height="100%" colspan="3"><div id="innerTable_div">
						<div id="CD0" style="display:none">
						    ί������
<span class="R1" id="ccrg_psdt"><%if(map.get("ccrg_psdt")!=null){out.print(map.get("ccrg_psdt"));}%></span>
							���������ڣ�ί�������н��й�Ʊ�����գ��տ��˴���Ϊ
<span class="R1" id="ccrg_clno"><%if(map.get("ccrg_clno")!=null){out.print(map.get("ccrg_clno"));}%></span>
							��Ʊ��������
<span class="R1" id="ccrg_bitp"><%if(map.get("ccrg_bitp")!=null){out.print(map.get("ccrg_bitp"));}%></span>
					��Ʊ������ 
<span class="R1" id="ccrg_blcn"><%if(map.get("ccrg_blcn")!=null){out.print(map.get("ccrg_blcn"));}%></span>
					��<span id="a01" style="display:none">Ʊ�ݺ���Ϊ
<span class="R1" id="ccrg_blno"><%if(map.get("ccrg_blno")!=null){out.print(map.get("ccrg_blno"));}%></span>
					��</span>Ʊ�ݱ��� 
<span class="R1" id="ccrg_cyno"><%if(map.get("ccrg_cyno")!=null){out.print(map.get("ccrg_cyno"));}%></span>
					��Ʊ�ݽ��
<span class="R1" id="ccrg_amts"><%if(map.get("ccrg_amts")!=null){out.print(map.get("ccrg_amts"));}%></span>
					��<span id="a02" style="display:none">���շ�ʽ 
<span class="R1" id="ccrg_ccmd"><%if(map.get("ccrg_ccmd")!=null){out.print(map.get("ccrg_ccmd"));}%></span>
					��</span>��������
<span class="R1" id="ccrg_icbk"><%if(map.get("ccrg_icbk")!=null){out.print(map.get("ccrg_icbk"));}%></span>
				   ��<span id="a03" style="display:none">����������Ϊ
<span class="R1" id="ccrg_pre1"><%if(map.get("ccrg_pre1")!=null){out.print(map.get("ccrg_pre1"));}%></span>
				   ��</span>�����˹��𼰵���Ϊ
<span class="R1" id="ccrg_cncd"><%if(map.get("ccrg_cncd")!=null){out.print(map.get("ccrg_cncd"));}%></span>
					��<span id="a04" style="display:none">���� 
<span class="R1" id="ccrg_cncd2"><%if(map.get("ccrg_cncd2")!=null){out.print(map.get("ccrg_cncd2"));}%></span>
					��</span><span id="a05" style="display:none">��������
<span class="R1" id="ccrg_nat"><%if(map.get("ccrg_nat")!=null){out.print(map.get("ccrg_nat"));}%></span>��
					</span>�걨ͳ������
<span class="R1" id="ccrg_natp"><%if(map.get("ccrg_natp")!=null){out.print(map.get("ccrg_natp"));}%></span>
                   ��<span id="a06" style="display:none">����������
<span class="R1" id="ccrg_dtno"><%if(map.get("ccrg_dtno")!=null){out.print(map.get("ccrg_dtno"));}%></span>
					</span>�������շѷ�ʽΪ
<span class="R1" id="ccrg_chco"><%if(map.get("ccrg_chco")!=null){out.print(map.get("ccrg_chco"));}%></span>
					��</span><span id="a07" style="display:none">������Ϊ
<span class="R1" id="ccrg_cham"><%if(map.get("ccrg_cham")!=null){out.print(map.get("ccrg_cham"));}%></span>
					 ��</span><span id="a08" style="display:none"></span><span id="a09" style="display:none">����
<span class="R1" id="ccrg_tltp"><%if(map.get("ccrg_tltp")!=null){out.print(map.get("ccrg_tltp"));}%></span>
					�ķ�ʽ�����ʼ���</span><span id="a10" style="display:none">ʵ�յ籨��
<span class="R1" id="ccrg_taam"><%if(map.get("ccrg_taam")!=null){out.print(map.get("ccrg_taam"));}%></span>
					��</span></div>			
	
                    <div id="CD1" style="display:none">�������շѷ�ʽΪ
<span class="R1" id="cctr_chco"><%if(map.get("cctr_chco")!=null){out.print(map.get("cctr_chco"));}%></span>
                    <span id="b99" style="display:none">������Ϊ
<span class="R1" id="cctr_cham"><%if(map.get("cctr_cham")!=null){out.print(map.get("cctr_cham"));}%></span>
					��</span><span id="b01" style="display:none">�ʵ������Ϊ
<span class="R1" id="cctr_tltp"><%if(map.get("cctr_tltp")!=null){out.print(map.get("cctr_tltp"));}%></span>
                     ��</span><span id="b02" style="display:none">���Ϊ
<span class="R1" id="cctr_taam"><%if(map.get("cctr_taam")!=null){out.print(map.get("cctr_taam"));}%></span>
                    ��</span></div>
                  
                    <div id="CD2" style="display:none"> �տ���<span id="c01" style="display:none">���ͻ��ţ�Ϊ
<span class="R1" id="ccpd_clno"><%if(map.get("ccpd_clno")!=null){out.print(map.get("ccpd_clno"));}%></span>
                        ��</span>����������
<span class="R1" id="ccpd_obrt"><%if(map.get("ccpd_obrt")!=null){out.print(map.get("ccpd_obrt"));}%></span>
                        ���տ����ʺ���
<span class="R1" id="ccpd_acno"><%if(map.get("ccpd_acno")!=null){out.print(map.get("ccpd_acno"));}%></span>
                        ��<span id="c02" style="display:none">������
<span class="R1" id="ccpd_exrt"><%if(map.get("ccpd_exrt")!=null){out.print(map.get("ccpd_exrt"));}%></span>
                        ��</span><span id="c03" style="display:none">��������ʽ����
<span class="R1" id="ccpd_exam"><%if(map.get("ccpd_exam")!=null){out.print(map.get("ccpd_exam"));}%></span>
                        ��</span></div>
           
					<div id="CD3" style="display:none">
					 �������յ������еĸ�����ĺ͹�Ʊ������ջ㲢�⸶��ί���ˡ�<span id="d01" style="display:none">�ý⸶���������Ϊ
<span class="R1" id="ccpy_ckno"><%if(map.get("ccpy_ckno")!=null){out.print(map.get("ccpy_ckno"));}%></span>
								        ��</span><span id="d02" style="display:none">ƾ֤����������
<span class="R1" id="ccpy_crdt"><%if(map.get("ccpy_crdt")!=null){out.print(map.get("ccpy_crdt"));}%></span>
								        ��</span>���շѽ����
<span class="R1" id="ccpy_caam"><%if(map.get("ccpy_caam")!=null){out.print(map.get("ccpy_caam"));}%></span>
								        ���ʵ�ѽ����
<span class="R1" id="ccpy_tsam"><%if(map.get("ccpy_tsam")!=null){out.print(map.get("ccpy_tsam"));}%></span>
								        �����е��ʻ���Ϊ
<span class="R1" id="ccpy_acbk"><%if(map.get("ccpy_acbk")!=null){out.print(map.get("ccpy_acbk"));}%></span>
								        ������Ʊ�ݱ�Ϣ
<span class="R1" id="ccpy_bbam"><%if(map.get("ccpy_bbam")!=null){out.print(map.get("ccpy_bbam"));}%></span>
								        ��<span id="d03" style="display:none">ԭ�����ʽ��Ϊ
<span class="R1" id="ccpy_dcam"><%if(map.get("ccpy_dcam")!=null){out.print(map.get("ccpy_dcam"));}%></span>
                                        ��</span><span id="d04" style="display:none">ԭ�������ʺ�Ϊ
<span class="R1" id="ccpy_thac"><%if(map.get("ccpy_stac")!=null){out.print(map.get("ccpy_stac"));}%></span>
                                        ��</span><span id="d05" style="display:none">�������ҽ��Ϊ
<span class="R1" id="ccpy_stam"><%if(map.get("ccpy_stam")!=null){out.print(map.get("ccpy_stam"));}%></span>
                                        ��</span><span id="d06" style="display:none">��������˺�Ϊ
<span class="R1" id="ccpy_rmac"><%if(map.get("ccpy_rmac")!=null){out.print(map.get("ccpy_rmac"));}%></span>
                                        ��</span><span id="d07" style="display:none">������Ϊ
<span class="R1" id="ccpy_exrt"><%if(map.get("ccpy_exrt")!=null){out.print(map.get("ccpy_exrt"));}%></span>
                                        ��</span><span id="d08" style="display:none">���׻���ҽ��Ϊ
<span class="R1" id="ccpy_pdam"><%if(map.get("ccpy_pdam")!=null){out.print(map.get("ccpy_pdam"));}%></span>
								        ��</span><span id="d09" style="display:none">�׻������ʺ�Ϊ
<span class="R1" id="ccpy_thax"><%if(map.get("ccpy_thax")!=null){out.print(map.get("ccpy_thax"));}%></span>
                                        ��</span><span id="d10" style="display:none">���������ʽΪ
<span class="R1" id="ccpy_fxkd"><%if(map.get("ccpy_fxkd")!=null){out.print(map.get("ccpy_fxkd"));}%></span>
										��</span><span id="d11" style="display:none">���Ϊ
<span class="R1" id="ccpy_exr2"><%if(map.get("ccpy_exr2")!=null){out.print(map.get("ccpy_exr2"));}%></span>
										��</span><span id="d12" style="display:none">������Ϊ
<span class="R1" id="ccpy_slrt"><%if(map.get("ccpy_slrt")!=null){out.print(map.get("ccpy_slrt"));}%></span>
										��</span><span id="d13" style="display:none">�����Ϊ
<span class="R1" id="ccpy_byft"><%if(map.get("ccpy_byft")!=null){out.print(map.get("ccpy_byft"));}%></span>
										��</span><span id="d14" style="display:none">�Ƿ�����ͳ��Ϊ 
<span class="R1" id="ccpy_strn"><%if(map.get("ccpy_strn")!=null){out.print(map.get("ccpy_strn"));}%></span>
										��</span>�Թ���˽Ϊ
<span class="R1" id="ccpy_corp"><%if(map.get("ccpy_corp")!=null){out.print(map.get("ccpy_corp"));}%></span>
										 ���ջ�����Ϊ 
<span class="R1" id="ccpy_shtp"><%if(map.get("ccpy_shtp")!=null){out.print(map.get("ccpy_shtp"));}%></span>
										 ���걨��Ϊ
<span class="R1" id="ccpy_stno"><%if(map.get("ccpy_stno")!=null){out.print(map.get("ccpy_stno"));}%></span>
										��<span id="d15" style="display:none">���״���Ϊ
<span class="R1" id="ccpy_tytp"><%if(map.get("ccpy_tytp")!=null){out.print(map.get("ccpy_tytp"));}%></span>
										</span><span id="d16" style="display:none">���걨ͳ������Ϊ
<span class="R1" id="ccpy_natp"><%if(map.get("ccpy_natp")!=null){out.print(map.get("ccpy_natp"));}%></span>
										��</span><span id="d17" style="display:none">���׸���Ϊ
<span class="R1" id="ccpy_trmo"><%if(map.get("ccpy_trmo")!=null){out.print(map.get("ccpy_trmo"));}%></span>��</span></div>

                            <div id="CD4" style="display:none"><span id="e01" style="display:none">�տ��˴���Ϊ
<span class="R1" id="ccrt_clno"><%if(map.get("ccrt_clno")!=null){out.print(map.get("ccrt_clno"));}%></span>
                                ��</span><span id="e02" style="display:none">��������
<span class="R1" id="ccrt_icbk"><%if(map.get("ccrt_icbk")!=null){out.print(map.get("ccrt_icbk"));}%></span>
                                ��</span><span id="e03" style="display:none">�շѷ�ʽΪ
<span class="R1" id="ccrt_chco"><%if(map.get("ccrt_chco")!=null){out.print(map.get("ccrt_chco"));}%></span>
							    ��</span><span id="e04" style="display:none"></span><span id="e05" style="display:none">�����ѽ��Ϊ
<span class="R1" id="ccrt_cham"><%if(map.get("ccrt_cham")!=null){out.print(map.get("ccrt_cham"));}%></span>��</span>							</div>							
							<div id="CD5" style="display:none">��ҵ���������Ľ��׹��̺�����������Ǽǡ�</div>
               </div></td>
			   </tr> 
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="center" valign="middle"><div class="footer">
<input type="image" src="/IB/images/print.gif" onClick="self.print();return false"></div></td>
                  </tr>
                  </table></td>
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
</table><script>
var ids=new String();var spans=new String();ids=document.getElementById("showDiv").value;//��ѡ����ѡ�е�id����
		displayIdResult(ids);
		spans=document.getElementById("showSpan").value;//�Ǳ�ѡ����ѡ�е�id����
		idSP(spans);
		</script>
</form>
</body>
</html>

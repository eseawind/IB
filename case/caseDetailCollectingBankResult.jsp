<%--���ʽ��㰸�����壩--�����������ҵ�����--%>
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
<script language="javascript" type="text/javascript" src="/IB/case/xmlCase.js"></script>
<script language="javascript" type="text/javascript" src="/IB/common/default.js"></script>
<script>
	function displayIdResult(showId)
	{
	//����¼��ҳ���и�ѡ��ѡ�е�״̬,�õ����ҳ������Ӧ�����ʾ������;
		var showIdResult=showId;//¼��ҳ����checkbox��ѡ��״̬;
		var idName=new Array();
			idName=showIdResult.split(",");
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
<body>
<form>
	    <%String names=(String)map.get("DCH");%>
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
                  <td height="20" align="left" valign="middle"><strong>���ͣ�</strong>�������������ҵ��</td>
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
						<div id="DC0" style="display:none">
						    ������
<span class="R1" id="ocrg_clno"><%if(map.get("ocrg_clno")!=null){out.print(map.get("ocrg_clno"));}%></span> 
							������������յ��ݺ���
<span class="R1" id="ocrg_psdt"><%if(map.get("ocrg_psdt")!=null){out.print(map.get("ocrg_psdt"));}%></span> 
						      ���������
<span class="R1" id="ocrg_icbk"><%if(map.get("ocrg_icbk")!=null){out.print(map.get("ocrg_icbk"));}%></span> 
						      �������������ҵ�񣬲��ṩ��Ʊ��Ϊ 
<span class="R1" id="ocrg_ivno"><%if(map.get("ocrg_ivno")!=null){out.print(map.get("ocrg_ivno"));}%></span>
						        �Ļ��﷢Ʊ�����ձ���Ϊ
<span class="R1" id="ocrg_cyno"><%if(map.get("ocrg_cyno")!=null){out.print(map.get("ocrg_cyno"));}%></span>
							   �����ս��Ϊ
<span class="R1" id="ocrg_amts"><%if(map.get("ocrg_amts")!=null){out.print(map.get("ocrg_amts"));}%></span>
						        ����������Ϊ
<span class="R1" id="ocrg_pstp"><%if(map.get("ocrg_pstp")!=null){out.print(map.get("ocrg_pstp"));}%></span>
							  <span id="a99" style="display:none">������Ϊ
<span class="R1" id="ocrg_tenr_r"><%if(map.get("ocrg_tenr_r")!=null){out.print(map.get("ocrg_tenr_r"));}%></span>						      </span><span id="a01" style="display:none">������Ϊ
<span class="R1" id="ocrg_tenr_b"><%if(map.get("ocrg_tenr_b")!=null){out.print(map.get("ocrg_tenr_b"));}%></span>				          </span>�죬����������Ϊ
<span class="R1" id="ocrg_blpy"><%if(map.get("ocrg_blpy")!=null){out.print(map.get("ocrg_blpy"));}%></span>
						       �������ַΪ
<span class="R1" id="ocrg_ime1"><%if(map.get("ocrg_ime1")!=null){out.print(map.get("ocrg_ime1"));}%></span>
<span class="R1" id="ocrg_ocbknm"><%if(map.get("ocrg_ocbknm")!=null){out.print(map.get("ocrg_ocbknm"));}%></span>���и�������<span class="R1"><%if(map.get("ocrg_acdt")!=null){out.print(map.get("ocrg_acdt"));}%></span>������������
<span class="R1" id="ocrg_gtdt"><%if(map.get("ocrg_gtdt")!=null){out.print(map.get("ocrg_gtdt"));}%></span>��ǩ��������
<span class="R1" id="ocrg_sgdt"><%if(map.get("ocrg_sgdt")!=null){out.print(map.get("ocrg_sgdt"));}%></span>����������<span class="R1"><%if(map.get("ocrg_chco")!=null){out.print(map.get("ocrg_chco"));}%></span>
							     �ķ�ʽ��ȡ������
						       ��<span id="a03" style="display:none">����
<span class="R1" id="ocrg_tltp"><%if(map.get("ocrg_tltp")!=null){out.print(map.get("ocrg_tltp"));}%></span>
								�ķ�ʽ�����ʼ���</span><span id="a04" style="display:none">��ȡ�ʵ��
<span class="R1" id="ocrg_taam"><%if(map.get("ocrg_taam")!=null){out.print(map.get("ocrg_taam"));}%></span>
						       ��</span><span id="a05" style="display:none">
								��ݹ���Ϊ
<span class="R1" id="ocrg_cncd"><%if(map.get("ocrg_cncd")!=null){out.print(map.get("ocrg_cncd"));}%></span>
								��</span>���ҵ�������&lt;&lt;��������ָʾ��&gt;&gt;��ͬ����һ��ĸ������С�						</div>
		
						<div id="DC1" style="display:none">�������յ������м����Ľ��ڴ��յ��ݺ󣬽��н��ڴ���ҵ��¼�룬�����˿ͻ�
<span class="R1" id="icrg_clno"><%if(map.get("icrg_clno")!=null){out.print(map.get("icrg_clno"));}%></span>
						����
<span class="R1" id="icrg_ardp"><%if(map.get("icrg_ardp")!=null){out.print(map.get("icrg_ardp"));}%></span>
						 ���յ�������
<span class="R1" id="icrg_ocbk"><%if(map.get("icrg_ocbk")!=null){out.print(map.get("icrg_ocbk"));}%></span>
                         ����
<span class="R1" id="icrg_dpdt"><%if(map.get("icrg_dpdt")!=null){out.print(map.get("icrg_dpdt"));}%></span>
						 �ĳ��ĵ��ݣ�ί�д�����
<span class="R1" id="icrg_icbk"><%if(map.get("icrg_icbk")!=null){out.print(map.get("icrg_icbk"));}%></span>
                         �����ڴ��յǼ�ҵ��<span id="b01" style="display:none">��Ʊ��/�տ�������Ϊ
<span class="R1" id="icrg_drnm"><%if(map.get("icrg_drnm")!=null){out.print(map.get("icrg_drnm"));}%></span>
						 ��</span><span id="b03" style="display:none">��Ҫ�����շ���Ϊ
<span class="R1" id="icrg_cgam"><%if(map.get("icrg_cgam")!=null){out.print(map.get("icrg_cgam"));}%></span>
						 ��</span><span id="b04" style="display:none">��
<span class="R1" id="icrg_dudt"><%if(map.get("icrg_dudt")!=null){out.print(map.get("icrg_dudt"));}%></span>
						 �������գ����ڣ�</span><span id="b05" style="display:none">�տ������ڵ���
<span class="R1" id="icrg_gdtp"><%if(map.get("icrg_gdtp")!=null){out.print(map.get("icrg_gdtp"));}%></span>
						��</span><span id="b06" style="display:none">��������
<span class="R1" id="icrg_chco"><%if(map.get("icrg_chco")!=null){out.print(map.get("icrg_chco"));}%></span>
                      ���շѷ�ʽ���ķ�ʽ��ͻ���ȡ�����ѣ�</span><span id="b09" style="display:none">����
<span class="R1" id="icrg_tltp"><%if(map.get("icrg_tltp")!=null){out.print(map.get("icrg_tltp"));}%></span>
						 �ķ�ʽ�����ʼ���</span><span id="b10" style="display:none">��ȡ�ʵ��
<span class="R1" id="icrg_taam"><%if(map.get("icrg_taam")!=null){out.print(map.get("icrg_taam"));}%></span>
						  ��</span><span id="b11" style="display:none"></span>ҵ����ɺ�����ȷ��SWIFT���ĸ������м��溯&lt;&lt;����֪ͨ��&gt;&gt;�������ˡ�			  </div>
				
								<div id="DC2" style="display:none">�����н��������յ��ݼĳ���ί���������������ύ�޸ĵĵ��ݣ�����������ָʾ������Ҫ�޸ĳ����������ݡ�<br>
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����Ϊ���޸ĺ�Ŀͻ�����Ϊ
<span class="R1" id="ocup_clno"><%if(map.get("ocup_clno")!=null){out.print(map.get("ocup_clno"));}%></span>
                                ����������Ϊ
<span class="R1" id="ocup_psdt"><%if(map.get("ocup_psdt")!=null){out.print(map.get("ocup_psdt"));}%></span>��<span id="c01" style="display:none">������׼Ϊ
<span class="R1" id="ocup_adsn"><%if(map.get("ocup_adsn")!=null){out.print(map.get("ocup_adsn"));}%></span>
                                ��</span><span id="c02" style="display:none">�������Ϊ
<span class="R1" id="ocup_adam"><%if(map.get("ocup_adam")!=null){out.print(map.get("ocup_adam"));}%></span>
                               ��</span>��������Ϊ
<span class="R1" id="ocup_pstp"><%if(map.get("ocup_pstp")!=null){out.print(map.get("ocup_pstp"));}%></span>
								 ��<span id="c99" style="display:none">����Ϊ
<span class="R1" id="ocup_tenr_r"><%if(map.get("ocup_tenr_r")!=null){out.print(map.get("ocup_tenr_r"));}%></span>
								 �죬</span><span id="c03" style="display:none">����Ϊ
<span class="R1" id="ocup_tenr_b"><%if(map.get("ocup_tenr_b")!=null){out.print(map.get("ocup_tenr_b"));}%></span>
								  �죬</span>����������Ϊ
<span class="R1" id="ocup_blpy"><%if(map.get("ocup_blpy")!=null){out.print(map.get("ocup_blpy"));}%></span>
                                 ��<span id="c04" style="display:none">�����ַΪ
<span class="R1" id="ocup_ime1"><%if(map.get("ocup_ime1")!=null){out.print(map.get("ocup_ime1"));}%></span>
                                 ��</span>��
<span class="R1" id="ocup_chco"><%if(map.get("ocup_chco")!=null){out.print(map.get("ocup_chco"));}%></span>
								 �ķ�ʽ��ȡ�����ѣ�<span id="c07" style="display:none">����
<span class="R1" id="ocup_tltp"><%if(map.get("ocup_tltp")!=null){out.print(map.get("ocup_tltp"));}%></span></span><span id="c08" style="display:none">����ȡ�ʵ��<span class="R1" id="ocup_taam"><%if(map.get("ocup_taam")!=null){out.print(map.get("ocup_taam"));}%></span>��</span><span id="c09" style="display:none">��ݹ���Ϊ<span class="R1" id="ocup_cncd"><%if(map.get("ocup_cncd")!=null){out.print(map.get("ocup_cncd"));}%></span>��</span>ҵ��¼������ɵ��ķ��͸������У������溯��ͬ�޸ĵĵ���һ��ĸ������С�</div>
					
					
								<div id="DC3" style="display:none">�����и��������з��͵ĵ��ĺͼ������޸ĵ��ݺ������ڴ����޸Ĳ������޸��յ���Ϊ
<span class="R1" id="iccg_ardp"><%if(map.get("iccg_ardp")!=null){out.print(map.get("iccg_ardp"));}%></span>
                                 ���ĵ���Ϊ
<span class="R1" id="iccg_dpdt"><%if(map.get("iccg_dpdt")!=null){out.print(map.get("iccg_dpdt"));}%></span>
                                 ��<span id="d01">�����˿ͻ�����Ϊ
<span class="R1" id="iccg_clno"><%if(map.get("iccg_clno")!=null){out.print(map.get("iccg_clno"));}%></span>
								��</span><span id="d02">��Ʊ��/�տ�������Ϊ
<span class="R1" id="iccg_drnm"><%if(map.get("iccg_drnm")!=null){out.print(map.get("iccg_drnm"));}%></span>
								��</span>��������
<span class="R1" id="iccg_pstp"><%if(map.get("iccg_pstp")!=null){out.print(map.get("iccg_pstp"));}%></span>
<span class="R1" id="iccg_tenr_r"><%if(map.get("iccg_tenr_r")!=null){out.print(map.get("iccg_tenr_r"));}%></span>�죬</span>
								<span id="d03" style="display:none">����
<span class="R1" id="iccg_tenr_b"><%if(map.get("iccg_tenr_b")!=null){out.print(map.get("iccg_tenr_b"));}%></span>�죬</span>���ձ���Ϊ<span class="R1"><%if(map.get("iccg_cyno")!=null){out.print(map.get("iccg_cyno"));}%></span>
<span class="R1" id="iccg_amts"><%if(map.get("iccg_amts")!=null){out.print(map.get("iccg_amts"));}%></span><span id="d04" style="display:none">�������з���Ϊ<span class="R1" id="iccg_cgam"><%if(map.get("iccg_cgam")!=null){out.print(map.get("iccg_cgam"));}%></span></span><span id="d05" style="display:none">��������Ϊ
<span class="R1" id="iccg_dudt"><%if(map.get("iccg_dudt")!=null){out.print(map.get("iccg_dudt"));}%></span>
                                ��</span>��Ʊ��Ϊ
<span class="R1" id="iccg_ivno"><%if(map.get("iccg_ivno")!=null){out.print(map.get("iccg_ivno"));}%></span>��</div>
								
				
								<div id="DC4" style="display:none">								�����н��������յ��ݼĳ��󣬳���Ԥ��ʱ����δ�ջ㣬������������д��յ��ݿ������ҵ����Ҫ����д�������ݣ�
								<span id="e01" style="display:none">������Ϊ
<span class="R1" id="octr_icbk"><%if(map.get("octr_icbk")!=null){out.print(map.get("octr_icbk"));}%></span>
								��</span>��
<span class="R1" id="octr_chco"><%if(map.get("octr_chco")!=null){out.print(map.get("octr_chco"));}%></span>
						 �ķ�ʽ��ȡ�����ѣ�<span id="e04" style="display:none">����
<span class="R1" id="octr_tltp"><%if(map.get("octr_tltp")!=null){out.print(map.get("octr_tltp"));}%></span>
<span class="R1" id="octr_taam"><%if(map.get("octr_taam")!=null){out.print(map.get("octr_taam"));}%></span>��</span>
						 <span id="e06" style="display:none">��ݹ���Ϊ
<span class="R1" id="octr_cncd"><%if(map.get("octr_cncd")!=null){out.print(map.get("octr_cncd"));}%></span>
						  ��</span>ҵ��¼������ɵ��ķ��͸������С�</div>
					
								<div id="DC5" style="display:none">����Ǽ��ڽ��ڴ��յ��ݣ�������ͬ�⸶��󣬼������ݷŸ������������и��<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����Զ�ڽ��ڴ��յ��ݣ������˳жҵ����պ󣬼������ݷŸ������ڳжҵ����ո��� ��<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�������յ�������ݵ���ص��ݺ���и��
								<span id="f01" style="display:none">���������Ϊ
<span class="R1" id="icpy_ckno"><%if(map.get("icpy_ckno")!=null){out.print(map.get("icpy_ckno"));}%></span>
								��</span><span id="f02" style="display:none">ƾ֤��������Ϊ
<span class="R1" id="icpy_crdt"><%if(map.get("icpy_crdt")!=null){out.print(map.get("icpy_crdt"));}%></span>
								��</span>���ѽ��Ϊ
<span class="R1" id="icpy_dlam"><%if(map.get("icpy_dlam")!=null){out.print(map.get("icpy_dlam"));}%></span>
								��<span id="f03" style="display:none">�����з���Ϊ
<span class="R1" id="icpy_cgam"><%if(map.get("icpy_cgam")!=null){out.print(map.get("icpy_cgam"));}%></span>
								��</span>�ʻ���Ϊ
<span class="R1" id="icpy_acbk"><%if(map.get("icpy_acbk")!=null){out.print(map.get("icpy_acbk"));}%></span>
								��<span id="f04" style="display:none">�м���Ϊ
<span class="R1" id="icpy_mdbk"><%if(map.get("icpy_mdbk")!=null){out.print(map.get("icpy_mdbk"));}%></span>
<span class="R1" id="icpy_dudt"><%if(map.get("icpy_dudt")!=null){out.print(map.get("icpy_dudt"));}%></span>��<span id="f05" style="display:none">�ֻ�֧�������
<span class="R1" id="icpy_amc1"><%if(map.get("icpy_amc1")!=null){out.print(map.get("icpy_amc1"));}%></span>��</span>
								<span id="f06" style="display:none">ԭ���˺���
<span class="R1" id="icpy_acc1"><%if(map.get("icpy_acc1")!=null){out.print(map.get("icpy_acc1"));}%></span>
								��</span><span id="f07" style="display:none">�۳��������
<span class="R1" id="icpy_sdam"><%if(map.get("icpy_sdam")!=null){out.print(map.get("icpy_sdam"));}%></span>
								��</span><span id="f08" style="display:none">����Ϊ
<span class="R1" id="icpy_exrt"><%if(map.get("icpy_exrt")!=null){out.print(map.get("icpy_exrt"));}%></span>
								��</span><span id="f09" style="display:none">������˺�Ϊ
<span class="R1" id="icpy_acc2"><%if(map.get("icpy_acc2")!=null){out.print(map.get("icpy_acc2"));}%></span>
								��</span><span id="f10" style="display:none">���Ϊ
<span class="R1" id="icpy_amc2"><%if(map.get("icpy_amc2")!=null){out.print(map.get("icpy_amc2"));}%></span>
								��</span><span id="f11" style="display:none">�׻�֧�����Ϊ
<span class="R1" id="icpy_amc7"><%if(map.get("icpy_amc7")!=null){out.print(map.get("icpy_amc7"));}%></span>��<span id="f12" style="display:none">����ʺ���<span class="R1" id="icpy_acc3"><%if(map.get("icpy_acc3")!=null){out.print(map.get("icpy_acc3"));}%></span>��</span><span id="f99" style="display:none">���������ʽΪ
<span class="R1" id="icpy_fxkd"><%if(map.get("icpy_fxkd")!=null){out.print(map.get("icpy_fxkd"));}%></span>
								</span><span id="f13" style="display:none">��������
<span class="R1" id="icpy_slrt"><%if(map.get("icpy_slrt")!=null){out.print(map.get("icpy_slrt"));}%></span>		
							��</span><span id="f14" style="display:none">�������
<span class="R1" id="icpy_byft"><%if(map.get("icpy_byft")!=null){out.print(map.get("icpy_byft"));}%></span>		
								��</span><span id="f15" style="display:none">�׻������
<span class="R1" id="icpy_dram"><%if(map.get("icpy_dram")!=null){out.print(map.get("icpy_dram"));}%></span>	
								��</span><span id="f16" style="display:none">�ۻ�������
<span class="R1" id="icpy_shxz"><%if(map.get("icpy_shxz")!=null){out.print(map.get("icpy_shxz"));}%></span>	
								��</span>�Թ���˽��
<span class="R1" id="icpy_cmpr"><%if(map.get("icpy_cmpr")!=null){out.print(map.get("icpy_cmpr"));}%></span>
								��<span id="f17" style="display:none">�Ƿ�ƾ��������Ϊ
<span class="R1" id="icpy_mepy"><%if(map.get("icpy_mepy")!=null){out.print(map.get("icpy_mepy"));}%></span>
								��</span><span id="f18" style="display:none">�Ƿ���ظ���
<span class="R1" id="icpy_ctpy"><%if(map.get("icpy_ctpy")!=null){out.print(map.get("icpy_ctpy"));}%></span>��</span>��������<span class="R1"><%if(map.get("icpy_chco")!=null){out.print(map.get("icpy_chco"));}%></span>
						 �ķ�ʽ��ȡ�����ѣ�<span id="f20" style="display:none"></span><span id="f21" style="display:none">
<span class="R1" id="icpy_tltp"><%if(map.get("icpy_tltp")!=null){out.print(map.get("icpy_tltp"));}%></span>
						 �ķ�ʽ�����ʼ���</span><span id="f22" style="display:none">ʵ�յ籨��
<span class="R1" id="icpy_taam"><%if(map.get("icpy_taam")!=null){out.print(map.get("icpy_taam"));}%></span> ��</span>
						�걨��Ϊ
<span class="R1" id="icpy_sbno"><%if(map.get("icpy_sbno")!=null){out.print(map.get("icpy_sbno"));}%></span>��</div>
				  
                            <div id="DC6" style="display:none">�����˲�����Զ�ڽ��ڴ��յ��ݣ������˳жҵ����պ󣬴����н����ݷŸ������ˣ������˽��гжң��ж�������Ϊ
<span class="R1" id="icac_ocbk"><%if(map.get("icac_ocbk")!=null){out.print(map.get("icac_ocbk"));}%></span>
							���жұ���Ϊ
<span class="R1" id="icac_dlcy"><%if(map.get("icac_dlcy")!=null){out.print(map.get("icac_dlcy"));}%></span>
							���жҽ��Ϊ
<span class="R1" id="icac_dlam"><%if(map.get("icac_dlam")!=null){out.print(map.get("icac_dlam"));}%></span>
                            �����ĸ��������
<span class="R1" id="icac_dudt"><%if(map.get("icac_dudt")!=null){out.print(map.get("icac_dudt"));}%></span>
<span class="R1" id="icac_chco"><%if(map.get("icac_chco")!=null){out.print(map.get("icac_chco"));}%></span>�ķ�ʽ��ȡ�����ѣ�<span id="g03" style="display:none">���� 
<span class="R1" id="icac_tltp"><%if(map.get("icac_tltp")!=null){out.print(map.get("icac_tltp"));}%></span> 
							�ķ�ʽ�����ʼ���</span><span id="g04" style="display:none">ʵ�յ籨��
<span class="R1" id="icac_taam"><%if(map.get("icac_taam")!=null){out.print(map.get("icac_taam"));}%></span>
						��</span><span id="g05" style="display:none">��ݹ���Ϊ
<span class="R1" id="icac_cncd"><%if(map.get("icac_cncd")!=null){out.print(map.get("icac_cncd"));}%></span></span>��</div>
			
							<div id="DC7" style="display:none">��������
<span class="R1" id="icrj_chco"><%if(map.get("icrj_chco")!=null){out.print(map.get("icrj_chco"));}%></span> 
							�ķ�ʽ��ȡ�����ѣ�<span id="h03" style="display:none">���� 
<span class="R1" id="icrj_tltp"><%if(map.get("icrj_tltp")!=null){out.print(map.get("icrj_tltp"));}%></span> 
							�ķ�ʽ�����ʼ���</span><span id="h04" style="display:none">ʵ�յ籨��
<span class="R1" id="icrj_taam"><%if(map.get("icrj_taam")!=null){out.print(map.get("icrj_taam"));}%></span> 
							��</span><span id="h05" style="display:none">��ݹ���Ϊ 
<span class="R1" id="icrj_cncd"><%if(map.get("icrj_cncd")!=null){out.print(map.get("icrj_cncd"));}%></span>
							��</span></div>						
				
						<div id="DC8" style="display:none">�������յ������еĸ�����ĺͳ��ڵ��ݿ���������н�����⸶��ί���ˡ�<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����п۳��˹����շѽ��
<span class="R1" id="ocpy_fnam"><%if(map.get("ocpy_fnam")!=null){out.print(map.get("ocpy_fnam"));}%></span>
						 �������˻���Ϊ
<span class="R1" id="ocpy_acbk"><%if(map.get("ocpy_acbk")!=null){out.print(map.get("ocpy_acbk"));}%></span>
						 ��Ӧ��������
<span class="R1" id="ocpy_fnch"><%if(map.get("ocpy_fnch")!=null){out.print(map.get("ocpy_fnch"));}%></span>
						  ��Ӧ���ʵ��
<span class="R1" id="ocpy_fntl"><%if(map.get("ocpy_fntl")!=null){out.print(map.get("ocpy_fntl"));}%></span>
						 ��<span id="i01" style="display:none">�⸶��ʽ�ķ�ʽΪ
<span class="R1" id="ocpy_jffs"><%if(map.get("ocpy_jffs")!=null){out.print(map.get("ocpy_jffs"));}%></span>
						</span><span id="i02" style="display:none"> ��ԭ������/���ʽ��Ϊ 
<span class="R1" id="ocpy_dcam"><%if(map.get("ocpy_dcam")!=null){out.print(map.get("ocpy_dcam"));}%></span>
						</span><span id="i03" style="display:none"> ��ԭ������/�����ʺ�Ϊ
<span class="R1" id="ocpy_stac"><%if(map.get("ocpy_stac")!=null){out.print(map.get("ocpy_stac"));}%></span>
						</span><span id="i04" style="display:none">������/�ۻ���ҽ��Ϊ 
<span class="R1" id="ocpy_stam"><%if(map.get("ocpy_stam")!=null){out.print(map.get("ocpy_stam"));}%></span>
						</span><span id="i05" style="display:none"> �����ۻ���/�����˺�Ϊ 
<span class="R1" id="ocpy_rmac"><%if(map.get("ocpy_rmac")!=null){out.print(map.get("ocpy_rmac"));}%></span>
						  </span><span id="i06" style="display:none">��������Ϊ 
<span class="R1" id="ocpy_exrt"><%if(map.get("ocpy_exrt")!=null){out.print(map.get("ocpy_exrt"));}%></span>
						  </span><span id="i07" style="display:none">���ۻ�ͳ������(����)Ϊ 
<span class="R1" id="ocpy_shxz"><%if(map.get("ocpy_shxz")!=null){out.print(map.get("ocpy_shxz"));}%></span>
						   </span><span id="i08" style="display:none">�����ۻ����Ϊ
<span class="R1" id="ocpy_exam"><%if(map.get("ocpy_exam")!=null){out.print(map.get("ocpy_exam"));}%></span>
						 </span><span id="i09" style="display:none"> �����׻���ҽ��Ϊ
<span class="R1" id="ocpy_pdam"><%if(map.get("ocpy_pdam")!=null){out.print(map.get("ocpy_pdam"));}%></span>
						 </span><span id="i10" style="display:none"> ���׻����Ϊ
<span class="R1" id="ocpy_thcy"><%if(map.get("ocpy_thcy")!=null){out.print(map.get("ocpy_thcy"));}%></span>
						</span><span id="i11" style="display:none"> ���׻���/�����ʺ�Ϊ
<span class="R1" id="ocpy_thac"><%if(map.get("ocpy_thac")!=null){out.print(map.get("ocpy_thac"));}%></span>
						</span><span id="i12" style="display:none">�����������ʽΪ
<span class="R1" id="ocpy_fxkd"><%if(map.get("ocpy_fxkd")!=null){out.print(map.get("ocpy_fxkd"));}%></span>
						  </span><span id="i13" style="display:none">�����Ϊ
<span class="R1" id="ocpy_exr2"><%if(map.get("ocpy_exr2")!=null){out.print(map.get("ocpy_exr2"));}%></span>
						</span><span id="i14" style="display:none"> ��������Ϊ
<span class="R1" id="ocpy_slrt"><%if(map.get("ocpy_slrt")!=null){out.print(map.get("ocpy_slrt"));}%></span>
						 </span><span id="i15" style="display:none">�������Ϊ
<span class="R1" id="ocpy_byft"><%if(map.get("ocpy_byft")!=null){out.print(map.get("ocpy_byft"));}%></span>
						</span><span id="i16" style="display:none"></span><span id="i17" style="display:none"> �������Ƿ�����ͳ��Ϊ
<span class="R1" id="ocpy_strn"><%if(map.get("ocpy_strn")!=null){out.print(map.get("ocpy_strn"));}%></span>
						 </span><span id="i18" style="display:none"> ���Թ���˽Ϊ 
<span class="R1" id="ocpy_corp"><%if(map.get("ocpy_corp")!=null){out.print(map.get("ocpy_corp"));}%></span>
						  ���걨ͳ������Ϊ
<span class="R1" id="ocpy_natp"><%if(map.get("ocpy_natp")!=null){out.print(map.get("ocpy_natp"));}%></span>
						  ���ջ�����Ϊ
<span class="R1" id="ocpy_shtp"><%if(map.get("ocpy_shtp")!=null){out.print(map.get("ocpy_shtp"));}%></span>
						  </span>���걨��Ϊ
<span class="R1" id="ocpy_stno"><%if(map.get("ocpy_stno")!=null){out.print(map.get("ocpy_stno"));}%></span>
						 <span id="i19" style="display:none"> �����״���Ϊ
<span class="R1" id="ocpy_tytp"><%if(map.get("ocpy_tytp")!=null){out.print(map.get("ocpy_tytp"));}%></span>						</span><span id="i20" style="display:none"> ����������Ϊ
<span class="R1" id="ocpy_nat"><%if(map.get("ocpy_nat")!=null){out.print(map.get("ocpy_nat"));}%></span>
						  ��</span></div>
					
						<div id="DC9" style="display:none">�ڳ�����Զ�����µĳ�������ҵ���У��������յ������з����Ľ����̳жҵ��ģ����жҵǼǣ������ĳжҽ��Ϊ
<span class="R1" id="ocac_dlam"><%if(map.get("ocac_dlam")!=null){out.print(map.get("ocac_dlam"));}%></span>
						��������Ϊ
<span class="R1" id="ocac_dudt"><%if(map.get("ocac_dudt")!=null){out.print(map.get("ocac_dudt"));}%></span>
						��</div>
					
							<div id="DC10" style="display:none">�������յ������еľܾ��жһ�ܾ�����ĵ��ģ����ܳж�/����Ǽ�ҵ��</div>
				
							<div id="DC11" style="display:none">�������յ������оܳ�/������ĺ������������󣬳�����ָʾ�����н����̿����޳�ȡ�����յ��ݵ�ҵ�������ҵ��¼������ɵ��ķ��͸������С�</div>
				
							<div id="DC12" style="display:none">���ڴ������޳�������������
<span class="R1" id="icnp_chco"><%if(map.get("icnp_chco")!=null){out.print(map.get("icnp_chco"));}%></span>
							�ķ�ʽ��ȡ������<span id="j03" style="display:none">���� 
<span class="R1" id="icnp_tltp"><%if(map.get("icnp_tltp")!=null){out.print(map.get("icnp_tltp"));}%></span>
							�ķ�ʽ�����ʼ���</span><span id="j04" style="display:none">ʵ�յ籨��
<span class="R1" id="icnp_taam"><%if(map.get("icnp_taam")!=null){out.print(map.get("icnp_taam"));}%></span></span><span id="j05">��ݹ���Ϊ<span class="R1" id="icnp_cncd"><%if(map.get("icnp_cncd")!=null){out.print(map.get("icnp_cncd"));}%></span></span>��</div>							
				
							<div id="DC13" style="display:none">���ڴ������˵��������� 
<span class="R1" id="icrt_chco"><%if(map.get("icrt_chco")!=null){out.print(map.get("icrt_chco"));}%></span>
							�ķ�ʽ��ȡ������<span id="k03" style="display:none">���� 
<span class="R1" id="icrt_tltp"><%if(map.get("icrt_tltp")!=null){out.print(map.get("icrt_tltp"));}%></span>
							�ķ�ʽ�����ʼ���</span><span id="k04" style="display:none">ʵ�յ籨��
<span class="R1" id="icrt_taam"><%if(map.get("icrt_taam")!=null){out.print(map.get("icrt_taam"));}%></span>
							��</span><span id="k05" style="display:none">��ݹ���Ϊ
<span class="R1" id="icrt_cncd"><%if(map.get("icrt_cncd")!=null){out.print(map.get("icrt_cncd"));}%></span>
							</span>��</div>
				
							<div id="DC14" style="display:none">������(��������)�ܸ����յ��ݣ�����ָʾ�����н������˻������У��������յ��˵�����еǼǲ������������ɵ��ķ��͸������С�</div>
				
							<div id="DC15" style="display:none">�Գ������յ�����ȫ���ջ�򱻴����оܸ����˵��ĵǼǲ�����ֻ���������ڲ��ĵǼǲ�����</div>
				
                            <div id="DC16" style="display:none">���ڴ���������</div>
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

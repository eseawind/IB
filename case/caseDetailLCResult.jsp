<%--���ʽ��㰸����һ��--��֤�С�֪ͨ��ҵ��������ҳ��--%>
<%@ page contentType="text/html; charset=GB2312"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>
<%@ page import="com.witsoft.bean.common.SessionManageBean" %>
<%@ page import="com.witsoft.common.UserBean" %>
<html>
<head>
<title></title>
    <link href="/IB/case/case.css" rel="stylesheet" type="text/css">
    <link href="/IB/resources/css/app.css" rel="stylesheet" type="text/css">
    <link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/IB/resources/font-awesome-4.0.3/css/font-awesome.min.css">
<script language="javascript" type="text/javascript"    src="/IB/common/default.js"></script>

<script language="javascript" type="text/javascript"    src="/IB/case/case.js"></script>
	<script language="javascript" type="text/javascript" src="/IB/case/xmlCase.js"></script>
	<script>
	function displayIdResult(showId)
	{
	//����¼��ҳ���и�ѡ��ѡ�е�״̬,�õ����ҳ������Ӧ�����ʾ������;
		var showIdResult=showId;//¼��ҳ����checkbox��ѡ��״̬;
		var idObject;
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
<%String names=(String)map.get("LCH");%>
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
			  <td colspan="3" > <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                  <tr>
                    <td height="20" align="left" valign="middle"><strong>���ͣ�</strong>��֤����֪ͨ��ҵ�����</td>
                  </tr>
                  <tr>
                    <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
                  </tr>
                  <tr>
                    <td height="20" align="left" valign="middle"><strong>���ƣ�</strong><%if(map.get("detai")!=null){out.print(map.get("detai"));}%></td>
                  </tr>
                  <tr>
                    <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
                  </tr>
                  <tr>
                    <td height="20" align="left" valign="middle"><strong>������</strong><%if(map.get("grade")!=null){out.print(map.get("grade"));}%>��</td>
                  </tr>
                  <tr>
                    <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
                  </tr>
                  <tr>
                    <td height="20" align="left" valign="middle">
                        <span onClick="flash()"><strong>��ʾ��</strong>
                            <i class="fa fa-play-circle-o fa-2x"></i>
                        </span>
                    </td>
                  </tr>
                  <tr>
                    <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
                  </tr>
                  <tr>
                    <td align="left" height="20"><strong>��ѯ��</strong>
                        <input class="search input-case-search" type="search" name="lable" id="lable" size="15">
                        <button class="btn btn-primary" onclick="searchCase()" type="button">
                            <i class="fa fa-search"></i>
                        </button>
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
			<div id="LC0" style="display:none">
<span class="R1" id="lcop_apno"><%if(map.get("lcop_apno")!=null){out.print(map.get("lcop_apno"));}%></span> 
			��
<span class="R1" id="lcop_isdt"><%if(map.get("lcop_isdt")!=null){out.print(map.get("lcop_isdt"));}%></span>
			<span id="a01" style="display:none">��������
<span class="R1" id="lcop_utno"><%if(map.get("lcop_utno")!=null){out.print(map.get("lcop_utno"));}%></span></span>�����������֤���룬<span id="a97" style="display:none">��������Ϊ<span class="R1"><%if(map.get("lcop_gstp")!=null){out.print(map.get("lcop_gstp"));}%></span>��</span>�������ʱ�<span class="R1"><%if(map.get("lcop_appscd")!=null){out.print(map.get("lcop_appscd"));}%></span>	������ʾ�˵�λ֤������֤�����˺�������
<span class="R1" id="lcop_adl1"><%if(map.get("lcop_adl1")!=null){out.print(map.get("lcop_adl1"));}%></span>
<span class="R1" id="lcop_clpscd"><%if(map.get("lcop_clpscd")!=null){out.print(map.get("lcop_clpscd"));}%></span><span id="a02" style="display:none">����ͬ��Ϊ
<span class="R1" id="lcop_crno"><%if(map.get("lcop_crno")!=null){out.print(map.get("lcop_crno"));}%></span>
			</span>������ͬ���ݣ�������֤
<span class="R1" id="lcop_lgfg"><%if(map.get("lcop_lgfg")!=null){out.print(map.get("lcop_lgfg"));}%></span>
			����������
			<span id="a99" style="display:none">������������Ϊ
<span class="R1" id="lcop_bhtp"><%if(map.get("lcop_bhtp")!=null){out.print(map.get("lcop_bhtp"));}%></span>��</span>
				<span style="display:" id="lcop_sutpY">
			������֤Ϊ����/Զ�ڣ�
<span class="R1" id="lcop_sutp"><%if(map.get("lcop_sutp")!=null){out.print(map.get("lcop_sutp"));}%></span>
			&nbsp;����֤��
				<span id="a30" style="display:none">
			Զ������Ϊ
<span class="R1" id="lcop_uutp"><%if(map.get("lcop_uutp")!=null){out.print(map.get("lcop_uutp"));}%></span>
			<span id="a03" style="display:none">������Ϊ
<span class="R1" id="lcop_tenr"><%if(map.get("lcop_tenr")!=null){out.print(map.get("lcop_tenr"));}%></span>
					��</span>��</span>			</span>
			
			
			����֤����Ϊ
<span class="R1" id="lcop_lctp"><%if(map.get("lcop_lctp")!=null){out.print(map.get("lcop_lctp"));}%></span>��
			֧����ʽΪ
<span class="R1" id="lcop_ustp"><%if(map.get("lcop_ustp")!=null){out.print(map.get("lcop_ustp"));}%></span>��          
			<span id="a04" style="display:none">ָ���鸶�����д���
<span class="R1" id="lcop_avbk"><%if(map.get("lcop_avbk")!=null){out.print(map.get("lcop_avbk"));}%></span>��			</span>
			<span id="a05" style="display:none">ת����Ϊ
<span class="R1" id="lcop_tlbk"><%if(map.get("lcop_tlbk")!=null){out.print(map.get("lcop_tlbk"));}%></span>��</span>
			<span id="a06" style="display:none">�˴�����֤
<span class="R1" id="lcop_tris"><%if(map.get("lcop_tris")!=null){out.print(map.get("lcop_tris"));}%></span>
				Ϊת����</span>
				<span id="a07" style="display:none">
				ѭ������Ϊ
<span class="R1" id="lcop_rlit"><%if(map.get("lcop_rlit")!=null){out.print(map.get("lcop_rlit"));}%></span>��</span>
			֪ͨ��Ϊ
<span class="R1" id="lcop_adbk"><%if(map.get("lcop_adbk")!=null){out.print(map.get("lcop_adbk"));}%></span>
			���У�����Ϊ
<span class="R1" id="lcop_lccy"><%if(map.get("lcop_lccy")!=null){out.print(map.get("lcop_lccy"));}%></span>
			������֤/�������Ϊ
<span class="R1" id="lcop_lcam"><%if(map.get("lcop_lcam")!=null){out.print(map.get("lcop_lcam"));}%></span>
			��<span id="a08" style="display:none">����֤
<span class="R1" id="lcop_mksb"><%if(map.get("lcop_mksb")!=null){out.print(map.get("lcop_mksb"));}%></span>
			 ���ң�</span>��֤��ʽΪ
<span class="R1" id="lcop_ammd"><%if(map.get("lcop_ammd")!=null){out.print(map.get("lcop_ammd"));}%></span>
			��<span id="a09" style="display:none">������
<span class="R1" id="lcop_epdt"><%if(map.get("lcop_epdt")!=null){out.print(map.get("lcop_epdt"));}%></span>
			��</span>���ڵص���
<span class="R1" id="lcop_pcep"><%if(map.get("lcop_pcep")!=null){out.print(map.get("lcop_pcep"));}%></span>
			��<span id="a10" style="display:none">���װ����Ϊ
<span class="R1" id="lcop_shdt"><%if(map.get("lcop_shdt")!=null){out.print(map.get("lcop_shdt"));}%></span>
			��</span>������
<span class="R1" id="lcop_psbl"><%if(map.get("lcop_psbl")!=null){out.print(map.get("lcop_psbl"));}%></span>
			�죻<span id="a11" style="display:none">����֤���µĻ���
<span class="R1" id="lcop_part"><%if(map.get("lcop_part")!=null){out.print(map.get("lcop_part"));}%></span>
			����װ�ˣ�</span><span id="a12" style="display:none">
<span class="R1" id="lcop_tras"><%if(map.get("lcop_tras")!=null){out.print(map.get("lcop_tras"));}%></span>ת�ˣ�</span>
<span id="a13" style="display:none"><span class="R1" id="lcop_mkis"><%if(map.get("lcop_mkis")!=null){out.print(map.get("lcop_mkis"));}%></span>��װ�����ޣ�</span>����ش�<span class="R1"><%if(map.get("lcop_shfm")!=null){out.print(map.get("lcop_shfm"));}%></span>��<span class="R1" id="lcop_shto"><%if(map.get("lcop_shto")!=null){out.print(map.get("lcop_shto"));}%></span>
			<span id="a14" style="display:none">������֤�ĸ�����Ϊ
<span class="R1" id="lcop_dwbk"><%if(map.get("lcop_dwbk")!=null){out.print(map.get("lcop_dwbk"));}%></span>
			��</span><span id="a15" style="display:none">������Ϊ
<span class="R1" id="lcop_rmbk"><%if(map.get("lcop_rmbk")!=null){out.print(map.get("lcop_rmbk"));}%></span>
			��</span>����֤Ϊ��/��Ϊ��ȿ�֤
<span class="R1" id="lcop_qlfg"><%if(map.get("lcop_qlfg")!=null){out.print(map.get("lcop_qlfg"));}%></span>
			��<span id="a16" style="display:none">�ͻ��ʻ�һΪ
<span class="R1" id="lcop_mgcltact"><%if(map.get("lcop_mgcltact")!=null){out.print(map.get("lcop_mgcltact"));}%></span>
			��</span><span id="a17" style="display:none">����
<span class="R1" id="lcop_mgclcur"><%if(map.get("lcop_mgclcur")!=null){out.print(map.get("lcop_mgclcur"));}%></span>
			��</span><span id="a18" style="display:none">���
<span class="R1" id="lcop_mgcltamt"><%if(map.get("lcop_mgcltamt")!=null){out.print(map.get("lcop_mgcltamt"));}%></span>
			��</span><span id="a19" style="display:none">��֤���˺�һΪ
<span class="R1" id="lcop_mgac"><%if(map.get("lcop_mgac")!=null){out.print(map.get("lcop_mgac"));}%></span>
			��</span><span id="a20" style="display:none">����
<span class="R1" id="lcop_accy"><%if(map.get("lcop_accy")!=null){out.print(map.get("lcop_accy"));}%></span>
			��</span><span id="a21" style="display:none">���
<span class="R1" id="lcop_mgam"><%if(map.get("lcop_mgam")!=null){out.print(map.get("lcop_mgam"));}%></span>
			��</span><span id="a22" style="display:none">�ͻ��ʻ���Ϊ
<span class="R1" id="lcop_mgcltact2"><%if(map.get("lcop_mgcltact2")!=null){out.print(map.get("lcop_mgcltact2"));}%></span>
			��</span><span id="a23" style="display:none">����
<span class="R1" id="lcop_mgclcur2"><%if(map.get("lcop_mgclcur2")!=null){out.print(map.get("lcop_mgclcur2"));}%></span>
			��</span><span id="a24" style="display:none">���
<span class="R1" id="lcop_mgcltamt2"><%if(map.get("lcop_mgcltamt2")!=null){out.print(map.get("lcop_mgcltamt2"));}%></span>
			��</span><span id="a25" style="display:none">��֤���˺Ŷ�Ϊ
<span class="R1" id="lcop_mgc2"><%if(map.get("lcop_mgc2")!=null){out.print(map.get("lcop_mgc2"));}%></span>
			��</span><span id="a26" style="display:none">����
<span class="R1" id="lcop_acy2"><%if(map.get("lcop_acy2")!=null){out.print(map.get("lcop_acy2"));}%></span>
			��</span><span id="a27" style="display:none">���
<span class="R1" id="lcop_mam2"><%if(map.get("lcop_mam2")!=null){out.print(map.get("lcop_mam2"));}%></span>
			��</span>
<span class="R1" id="lcop_gdtp"><%if(map.get("lcop_gdtp")!=null){out.print(map.get("lcop_gdtp"));}%></span>
<span class="R1" id="lcop_chco"><%if(map.get("lcop_chco")!=null){out.print(map.get("lcop_chco"));}%></span>
			��<span id="a28" style="display:none">
			<span id="lcop_tltpY" style="display:">
			�ʵ������Ϊ
<span class="R1" id="lcop_tltp"><%if(map.get("lcop_tltp")!=null){out.print(map.get("lcop_tltp"));}%></span>
			��</span></span><span id="a29" style="display:none">ʵ�տ�֤�ʵ�ѽ��
<span class="R1" id="lcop_taam"><%if(map.get("lcop_taam")!=null){out.print(map.get("lcop_taam"));}%></span>
			��</span>��֤�����ղ�������֤�͵��ķ���֪ͨ�С�		</div>
		
		<div id="LC1" style="display:none">
		  ��������֤���������ݣ�֪ͨ���ڱ�����ҵ��Ǽǣ��������£�<br>
			 <span id="b02" style="display:none">������֤
<span class="R1" id="elad_mksb"><%if(map.get("elad_mksb")!=null){out.print(map.get("elad_mksb"));}%></span>
			Ϊ��������֤��</span><span id="b03" style="display:none">
<span class="R1" id="elad_mkan"><%if(map.get("elad_mkan")!=null){out.print(map.get("elad_mkan"));}%></span>
			Ϊ����������֤��</span>
			    <span id="b04" style="display:none">
<span class="R1" id="elad_mkrv"><%if(map.get("elad_mkrv")!=null){out.print(map.get("elad_mkrv"));}%></span>
			ѭ������֤��</span>
			֪ͨ����֤֪ͨ�Ǽǲ����շѷ�ʽΪ
<span class="R1" id="elad_chco"><%if(map.get("elad_chco")!=null){out.print(map.get("elad_chco"));}%></span>
			��<span id="b99" style="display:none">��ݹ���
<span class="R1" id="elad_cncd"><%if(map.get("elad_cncd")!=null){out.print(map.get("elad_cncd"));}%></span>
					��</span><span id="elad_tltpY" style="display:"><span id="b07"  style="display:none">�ʵ������Ϊ
<span class="R1" id="elad_tltp"><%if(map.get("elad_tltp")!=null){out.print(map.get("elad_tltp"));}%></span>
			��</span></span>
			<span id="b08" style="display:none">ʵ�տ�֤�ʵ�ѽ��
<span class="R1" id="elad_taam"><%if(map.get("elad_taam")!=null){out.print(map.get("elad_taam"));}%></span>��
			�Ǽ����</span>ϵͳ�����溯������֤֪ͨ�����ˡ�</div>
			
<div id="LC2" style="display:none">��֤�п�������֤�󣬿�֤��������Ϊ�����˷�ʽ�ȱ䶯��֤������޸����룬��д����֤�޸������飬����֪ͨ��ʽΪ		
<span class="R1" id="lcup_ammd"><%if(map.get("lcup_ammd")!=null){out.print(map.get("lcup_ammd"));}%></span><span id="c97" style="display:none">���ҵ�λҵ����Ϊ<span class="R1" id="lcup_trno"><%if(map.get("lcup_trno")!=null){out.print(map.get("lcup_trno"));}%></span></span><span id="c98" style="display:none">���ҵ�λ��ͬ��Ϊ
<span class="R1" id="lcup_crno"><%if(map.get("lcup_crno")!=null){out.print(map.get("lcup_crno"));}%></span>
					</span><span id="c99" style="display:none">���޸�����Ϊ
						<span class="R1" id="lcup_mdcont"><%if(map.get("lcup_mdcont")!=null){out.print(map.get("lcup_mdcont"));}%></span>��</span>�ͻ���(��������)<span class="R1" id="lcup_apdt"><%if(map.get("lcup_apdt")!=null){out.print(map.get("lcup_apdt"));}%></span>��������֤�޸����룬��������Ϊ<span class="R1"><%if(map.get("lcup_applnno")!=null){out.print(map.get("lcup_applnno"));}%></span>��<span id="c01" style="display:none">����֤����<span class="R1" id="lcup_adsn"><%if(map.get("lcup_adsn")!=null){out.print(map.get("lcup_adsn"));}%></span></span>
					���<span id="c02" style="display:none">
<span class="R1" id="lcup_adam"><%if(map.get("lcup_adam")!=null){out.print(map.get("lcup_adam"));}%></span>��
					</span>�޸�Ϊ[����/Զ��]
<span class="R1" id="lcup_sutp"><%if(map.get("lcup_sutp")!=null){out.print(map.get("lcup_sutp"));}%></span>
					����֤��<span id="c03" style="display:none">����Ϊ
<span class="R1" id="lcup_tenr"><%if(map.get("lcup_tenr")!=null){out.print(map.get("lcup_tenr"));}%></span></span>
<span id="c04" style="display:none" id="lcup_adl1"><span class="R1" id="lcup_adl1"><%if(map.get("lcup_adl1")!=null){out.print(map.get("lcup_adl1"));}%></span>��</span>
					
					<span id="c06" style="display:none">����֤���µĻ���<span class="R1" id="lcup_part"><%if(map.get("lcup_part")!=null){out.print(map.get("lcup_part"));}%></span>
                    ����װ��</span><span id="c07" style="display:none"><span class="R1" id="lcup_tras"><%if(map.get("lcup_tras")!=null){out.print(map.get("lcup_tras"));}%></span>
					ת�ˣ�</span><span id="c08" style="display:none">װ������Ϊ<span class="R1"  id="lcup_mkis"><%if(map.get("lcup_mkis")!=null){out.print(map.get("lcup_mkis"));}%></span>�죬
					</span><span id="c09" style="display:none">���װ��<span class="R1" id="lcup_shdt"><%if(map.get("lcup_shdt")!=null){out.print(map.get("lcup_shdt"));}%></span>
					��</span><span id="c10" style="display:none">����֤������<span class="R1" id="lcup_epdt"><%if(map.get("lcup_epdt")!=null){out.print(map.get("lcup_epdt"));}%></span>��</span><span id="c11" style="display:none">���ڵص�
<span class="R1" id="lcup_pcep"><%if(map.get("lcup_pcep")!=null){out.print(map.get("lcup_pcep"));}%></span>
					��</span><span id="c12" style="display:none">�ͻ��ʻ�һΪ
<span class="R1" id="lcup_mgcltact"><%if(map.get("lcup_mgcltact")!=null){out.print(map.get("lcup_mgcltact"));}%></span>
					��</span><span id="c13" style="display:none">����
<span class="R1" id="lcup_mgclcur"><%if(map.get("lcup_mgclcur")!=null){out.print(map.get("lcup_mgclcur"));}%></span>
					��</span><span id="c14" style="display:none">���
<span class="R1" id="lcup_mgcltamt"><%if(map.get("lcup_mgcltamt")!=null){out.print(map.get("lcup_mgcltamt"));}%></span>
					��</span><span id="c15" style="display:none">��֤���˺�һΪ
<span class="R1" id="lcup_mgac"><%if(map.get("lcup_mgac")!=null){out.print(map.get("lcup_mgac"));}%></span>
					��</span><span id="c16" style="display:none">����
<span class="R1" id="lcup_accy"><%if(map.get("lcup_accy")!=null){out.print(map.get("lcup_accy"));}%></span>��</span>
<span id="c17" style="display:none">���<span class="R1" id="lcup_mgam"><%if(map.get("lcup_mgam")!=null){out.print(map.get("lcup_mgam"));}%></span>��</span><span id="c18" style="display:none">�ͻ��ʻ���Ϊ<span class="R1" id="lcup_mbcltact2"><%if(map.get("lcup_mbcltact2")!=null){out.print(map.get("lcup_mbcltact2"));}%></span>
					��</span><span id="c19" style="display:none">����<span class="R1"  id="lcup_mgclcur2"><%if(map.get("lcup_mgclcur2")!=null){out.print(map.get("lcup_mgclcur2"));}%></span>
					��</span><span id="c20" style="display:none">���<span class="R1" id="lcup_mgcltamt2"><%if(map.get("lcup_mgcltamt2")!=null){out.print(map.get("lcup_mgcltamt2"));}%></span>
					��</span><span id="c21" style="display:none">��֤���˺Ŷ�Ϊ<span class="R1" id="lcup_mgac2"><%if(map.get("lcup_mgac2")!=null){out.print(map.get("lcup_mgac2"));}%></span>
					��</span><span id="c22" style="display:none">����<span class="R1" id="lcup_acy2"><%if(map.get("lcup_acy2")!=null){out.print(map.get("lcup_acy2"));}%></span>
					��</span><span id="c23" style="display:none">���<span class="R1"  id="lcup_mam2"><%if(map.get("lcup_mam2")!=null){out.print(map.get("lcup_mam2"));}%></span>
					��</span>����֤���������շѷ�ʽΪ
					<span class="R1" id="lcup_chco"><%if(map.get("lcup_chco")!=null){out.print(map.get("lcup_chco"));}%></span>
					��<span id="c24" style="display:none">�ʵ������Ϊ<span class="R1" id="lcup_tltp"><%if(map.get("lcup_tltp")!=null){out.print(map.get("lcup_tltp"));}%></span>��
					</span><span id="c26" style="display:none">ʵ�տ�֤�ʵ�ѽ��<span class="R1" id="lcup_taam"><%if(map.get("lcup_taam")!=null){out.print(map.get("lcup_taam"));}%></span>��</span>��֤�����ղ���707���ķ���֪ͨ�С�</div>
					
<div id="LC3" style="display:none">
				֪ͨ���յ���֤�е��޸ĵ��ĺ󣬸����޸����ݲ����溯֪ͨ�����ˣ�<span id="d01" style="display:none">ת����ҵ����Ϊ<span class="R1" id="elup_tlrf"><%if(map.get("elup_tlrf")!=null){out.print(map.get("elup_tlrf"));}%></span>��</span>�˴��޸ķ�ʽΪ
					<span class="R1" id="elup_aemd"><%if(map.get("elup_aemd")!=null){out.print(map.get("elup_aemd"));}%></span>
				���޸�����
					<span class="R1" id="elup_aedt"><%if(map.get("elup_aedt")!=null){out.print(map.get("elup_aedt"));}%></span>
				���ò����շѷ�ʽΪ
					<span class="R1" id="elup_chco"><%if(map.get("elup_chco")!=null){out.print(map.get("elup_chco"));}%></span>
			     ��<span id="d01" style="display:none"></span>
				<span id="d02" style="display:none">
				ʵ��������<span class="R1" id="elup_cham"><%if(map.get("elup_cham")!=null){out.print(map.get("elup_cham"));}%></span>��				 </span></div>
				 
				<div id="LC4" style="display:none" >�����˽ӵ���֤�е��޸��溯��ѡ��
<span class="R1" id="eluk_rvst"><%if(map.get("eluk_rvst")!=null){out.print(map.get("eluk_rvst"));}%></span>
				�޸�����֤���ò����շѷ�ʽΪ
<span class="R1" id="eluk_chco"><%if(map.get("eluk_chco")!=null){out.print(map.get("eluk_chco"));}%></span>
				��<span id="e01" style="display:none"></span><span id="e02" style="display:none">
					 ʵ��������
					<span id="eluk_chamY">
<span class="R1" id="eluk_cham"><%if(map.get("eluk_cham")!=null){out.print(map.get("eluk_cham"));}%></span>
					��</span></span><span id="e03" style="display:none">��ݹ���
<span class="R1" id="eluk_cncd"><%if(map.get("eluk_cncd")!=null){out.print(map.get("eluk_cncd"));}%></span>
					��</span><span id="e04" style="display:none">��������Ϊ
<span class="R1" id="eluk_tltp"><%if(map.get("eluk_tltp")!=null){out.print(map.get("eluk_tltp"));}%></span>
					��</span><span id="e06" style="display:none">�ʵ�ѱ���
<span class="R1" id="eluk_tlcy"><%if(map.get("eluk_tlcy")!=null){out.print(map.get("eluk_tlcy"));}%></span>��</span><span id="e05" style="display:none">ʵ���ʵ��
<span class="R1" id="eluk_taam"><%if(map.get("eluk_taam")!=null){out.print(map.get("eluk_taam"));}%></span>
					��</span>������ɺ����ɵ��ķ�����֤�С�				</div>
	
				<div id="LC5" style="display:none">��֤���յ�֪ͨ�оܾ���������֤�޸ĵĵ��ĺ󣬵ǼǾܾ����ݡ�
				<span id="f01" style="display:none">�˲����ı�֤���˺�һΪ
<span class="R1" id="lcuk_mgac"><%if(map.get("lcuk_mgac")!=null){out.print(map.get("lcuk_mgac"));}%></span>
					��</span><span id="f02" style="display:none">����
<span class="R1" id="lcuk_accy"><%if(map.get("lcuk_accy")!=null){out.print(map.get("lcuk_accy"));}%></span>
					��</span><span id="f03" style="display:none">���
<span class="R1" id="lcuk_mgam"><%if(map.get("lcuk_mgam")!=null){out.print(map.get("lcuk_mgam"));}%></span>
					��</span><span id="f04" style="display:none">��֤���˺Ŷ�Ϊ
<span class="R1" id="lcuk_mgc2"><%if(map.get("lcuk_mgc2")!=null){out.print(map.get("lcuk_mgc2"));}%></span>
					��</span><span id="f05" style="display:none">����
<span class="R1" id="lcuk_acy2"><%if(map.get("lcuk_acy2")!=null){out.print(map.get("lcuk_acy2"));}%></span>
					��</span><span id="f06" style="display:none">���
<span class="R1" id="lcuk_mam2"><%if(map.get("lcuk_mam2")!=null){out.print(map.get("lcuk_mam2"));}%></span>
					��</span></div>
					
				<div id="LC6" style="display:none">��֤������֤����������֤�鸶ǰ����֤��������֤�������֤���룬����������֤���ò����շѷ�ʽΪ
<span class="R1" id="lccn_chco"><%if(map.get("lccn_chco")!=null){out.print(map.get("lccn_chco"));}%></span>��				������ɺ����ɵ��ķ���֪ͨ�У�������֤���ϡ�</div>
	
			<div id="LC7" style="display:none">�յ���֤�еĳ�֤���ģ�֪ͨ������֤�Ǽǲ������Ļؿ�֤�С�</div>
			
			<div id="LC8" style="display:none">������(��֤������)��δ�յ������ᵥ�������ѵ�����֤������������������Ǽǵ������ݣ����������������
<span class="R1" id="sgrg_apdt"><%if(map.get("sgrg_apdt")!=null){out.print(map.get("sgrg_apdt"));}%></span>
					��<span id="h01" style="display:none">��Ʊ��
<span class="R1" id="sgrg_ivno"><%if(map.get("sgrg_ivno")!=null){out.print(map.get("sgrg_ivno"));}%></span>
					��</span>�����������
<span class="R1" id="sgrg_gucy"><%if(map.get("sgrg_gucy")!=null){out.print(map.get("sgrg_gucy"));}%></span>
					������������
<span class="R1" id="sgrg_guam"><%if(map.get("sgrg_guam")!=null){out.print(map.get("sgrg_guam"));}%></span>
					��<span id="h02" style="display:none">װ������
<span class="R1" id="sgrg_shdt"><%if(map.get("sgrg_shdt")!=null){out.print(map.get("sgrg_shdt"));}%></span>
					��</span>�ᵥ����
<span class="R1" id="sgrg_blno"><%if(map.get("sgrg_blno")!=null){out.print(map.get("sgrg_blno"));}%></span>
					����������
<span class="R1" id="sgrg_gsds"><%if(map.get("sgrg_gsds")!=null){out.print(map.get("sgrg_gsds"));}%></span>
					��<span id="h03" style="display:none">������
<span class="R1" id="sgrg_gubk"><%if(map.get("sgrg_gubk")!=null){out.print(map.get("sgrg_gubk"));}%></span>
					��</span>
					<span id="h04" style="display:none">�ò����շѷ�ʽΪ
<span class="R1" id="sgrg_chco"><%if(map.get("sgrg_chco")!=null){out.print(map.get("sgrg_chco"));}%></span>
                     ��</span>
					<span id="h05" style="display:none">ʵ�յ�����������ѽ��
<span class="R1" id="sgrg_cham"><%if(map.get("sgrg_cham")!=null){out.print(map.get("sgrg_cham"));}%></span>
					��</span><span id="h06" style="display:none">�ʵ������Ϊ
<span class="R1" id="sgrg_tltp"><%if(map.get("sgrg_tltp")!=null){out.print(map.get("sgrg_tltp"));}%></span>
					</span><span id="h07" style="display:none">
					��ʵ���ʵ�ѽ��
<span class="R1" id="sgrg_taam"><%if(map.get("sgrg_taam")!=null){out.print(map.get("sgrg_taam"));}%></span>
					��</span>�Ǽ���ɺ���������˾����һ��&lt;&lt;�������ᵥ���������&gt;&gt;��Ϊ�����̵������������ᵥ������������ͬʱ��֤��������Ȩ��֤��������֧��������</div>
		
		<div id="LC9" style="display:none">���������������л����������������޶Կ�֤�����˽��д߱�������&lt;&lt;���������溯&gt;&gt;����֤�����ˡ� </div>
		<div id="LC10" style="display:none">��֤���յ������ᵥ��֪ͨ��֤�ˣ��������ᵥ�������溯&lt;&lt;���ᵥ�����溯&gt;&gt;һ���ĸ�����˾����&lt;&lt;�������ᵥ����溯&gt;&gt;��</div></div></td>
			   </tr> 
			<tr>
				<td colspan="3"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="center" valign="middle">
                        <div class="footer">
                            <button class="btn btn-primary" onclick="self.print();return false">
                                <i class="fa fa-print fa-2x"></i> ��ӡ
                            </button>
                        </div>
                    </td>
                  </tr>
                </table></td>
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
<script>
var ids=new String();
var spans=new String();
ids=document.getElementById("showDiv").value;//��ѡ����ѡ�е�id����
displayIdResult(ids);
spans=document.getElementById("showSpan").value;//�Ǳ�ѡ����ѡ�е�id����
idSP(spans);
</script>
</form>
</body>
</html>

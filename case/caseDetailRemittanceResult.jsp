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
<%String names=(String)map.get("REH");%>
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
                  <td height="20" align="left" valign="middle"><strong>���ͣ�</strong>������������ҵ�����</td>
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
                  <td height="20" align="left" valign="middle"><span onClick="flash()"><strong>��ʾ��</strong>
                        <i class="fa fa-play-circle-o fa-2x"></i>
                  </span></td>
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
                  <td height="20" align="left" valign="middle"><strong>���ݣ�</strong><span id="tips" style="display:none;width:120px;height:20px;color:#000;text-align:center;vertical-align:middle;background-color:lightyellow;border:solid black 1px"></span>					</td>
						</tr>
                <tr>
                  <td height="100%" align="left" valign="middle"></td>
                </tr>
			  </table>			    <!--���ݽ���--></td>
			  </tr>
               <tr><td height="100%" colspan="3"><div id="innerTable_div">
						<div id="RE0" style="display:none">
						    ��ҵ����Ҫ��(�����)
<span class="R1" id="orrg_clno"><%if(map.get("orrg_clno")!=null){out.print(map.get("orrg_clno"));}%></span>
						        ��
<span class="R1" id="orrg_apdt"><%if(map.get("orrg_apdt")!=null){out.print(map.get("orrg_apdt"));}%></span>
						        ��������ڣ�����
<span class="R1" id="orrg_rve1"><%if(map.get("orrg_rve1")!=null){out.print(map.get("orrg_rve1"));}%></span>
						        ���տ�������������
								<span id="a01" style="display:none">�û������������Ϊ
<span class="R1" id="orrg_ckno"><%if(map.get("orrg_ckno")!=null){out.print(map.get("orrg_ckno"));}%></span>
						        ��</span><span id="a02" style="display:none">ƾ֤��������Ϊ
<span class="R1" id="orrg_crdt"><%if(map.get("orrg_crdt")!=null){out.print(map.get("orrg_crdt"));}%></span>
						        ��</span>���������
<span class="R1" id="orrg_ortp"><%if(map.get("orrg_ortp")!=null){out.print(map.get("orrg_ortp"));}%></span>
								��<span id="a03" style="display:none">�տ����˺���
<span class="R1" id="orrg_rvac"><%if(map.get("orrg_rvac")!=null){out.print(map.get("orrg_rvac"));}%></span>
						        ��</span>
						        �տ������ڹ�����
<span class="R1" id="orrg_cncd"><%if(map.get("orrg_cncd")!=null){out.print(map.get("orrg_cncd"));}%></span>
								���տ�����Ϊ
<span class="R1" id="orrg_irbk"><%if(map.get("orrg_irbk")!=null){out.print(map.get("orrg_irbk"));}%></span>
						        ��<span id="a04" style="display:none">
						        �տ��������˻�����
<span class="R1" id="orrg_mdbk"><%if(map.get("orrg_mdbk")!=null){out.print(map.get("orrg_mdbk"));}%></span>
						        ��</span><span id="a05" style="display:none">�˻��ҵ���72�����
<span class="R1" id="orrg_tg72"><%if(map.get("orrg_tg72")!=null){out.print(map.get("orrg_tg72"));}%></span>
						        ��</span>����˻��
<span class="R1" id="orrg_cyno"><%if(map.get("orrg_cyno")!=null){out.print(map.get("orrg_cyno"));}%></span>
<span class="R1" id="orrg_amts"><%if(map.get("orrg_amts")!=null){out.print(map.get("orrg_amts"));}%></span>
						        ( �����)����
<span class="R1" id="orrg_vldt"><%if(map.get("orrg_vldt")!=null){out.print(map.get("orrg_vldt"));}%></span>(��Ϣ��)�տ�ʼ��Ϣ
						        ��<span id="a06" style="display:none">��Ʊ����Ϊ
<span class="R1" id="orrg_dfno"><%if(map.get("orrg_dfno")!=null){out.print(map.get("orrg_dfno"));}%></span>
						       ��</span><span id="a07" style="display:none">
						        ���е��˻���Ϊ
<span class="R1" id="orrg_acbk"><%if(map.get("orrg_acbk")!=null){out.print(map.get("orrg_acbk"));}%></span>
						        ��</span><span id="a08" style="display:none">�ֻ�֧��
<span class="R1" id="orrg_amc1"><%if(map.get("orrg_amc1")!=null){out.print(map.get("orrg_amc1"));}%></span>(�ֻ�֧�����)
						       ��</span><span id="a09" style="display:none">ԭ���˺�Ϊ
<span class="R1" id="orrg_acc1"><%if(map.get("orrg_acc1")!=null){out.print(map.get("orrg_acc1"));}%></span>
						        ��</span><span id="a11" style="display:none">��
<span class="R1" id="orrg_exrt"><%if(map.get("orrg_exrt")!=null){out.print(map.get("orrg_exrt"));}%></span>
						        (����)�Ļ����۳���㣬</span>
								<span id="a10" style="display:none">
<span class="R1" id="orrg_sdam"><%if(map.get("orrg_sdam")!=null){out.print(map.get("orrg_sdam"));}%></span>
						        (�۳������)��</span>
								<span id="a12" style="display:none">�����������˺�Ϊ
<span class="R1" id="orrg_acc2"><%if(map.get("orrg_acc2")!=null){out.print(map.get("orrg_acc2"));}%></span>
						        ��</span><span id="a13" style="display:none">���Ϊ
<span class="R1" id="orrg_amc2"><%if(map.get("orrg_amc2")!=null){out.print(map.get("orrg_amc2"));}%></span>
						        (����ҽ��)��</span><span id="a14" style="display:none">�׻�֧�����Ϊ
<span class="R1" id="orrg_tham"><%if(map.get("orrg_tham")!=null){out.print(map.get("orrg_tham"));}%></span>
						       ��</span><span id="a15" style="display:none">���������˺�Ϊ
<span class="R1" id="orrg_acc3"><%if(map.get("orrg_acc3")!=null){out.print(map.get("orrg_acc3"));}%></span>
						        ��</span><span id="a16" style="display:none">��
<span class="R1" id="orrg_fxkd"><%if(map.get("orrg_fxkd")!=null){out.print(map.get("orrg_fxkd"));}%></span>
								(���������ʽ)����ʽ�������������</span><span id="a17" style="display:none">���Ϊ
<span class="R1" id="orrg_exr2"><%if(map.get("orrg_exr2")!=null){out.print(map.get("orrg_exr2"));}%></span>
						        ��</span><span id="a18" style="display:none">��
<span class="R1" id="orrg_byrt"><%if(map.get("orrg_byrt")!=null){out.print(map.get("orrg_byrt"));}%></span>
								(�����)���룬</span><span id="a19" style="display:none">��
<span class="R1" id="orrg_slrt"><%if(map.get("orrg_slrt")!=null){out.print(map.get("orrg_slrt"));}%></span>
						       (������)������</span><span id="a20" style="display:none">�����Ϊ
<span class="R1" id="orrg_amc3"><%if(map.get("orrg_amc3")!=null){out.print(map.get("orrg_amc3"));}%></span>��</span> <span id="a21"><span class="R1" id="orrg_shxz"><%if(map.get("orrg_shxz")!=null){out.print(map.get("orrg_shxz"));}%></span>��</span>
<span class="R1" id="orrg_stfg"><%if(map.get("orrg_stfg")!=null){out.print(map.get("orrg_stfg"));}%></span>
								�걨��<span id="a22" style="display:none">��������Ϊ
<span class="R1" id="orrg_fhtp"><%if(map.get("orrg_fhtp")!=null){out.print(map.get("orrg_fhtp"));}%></span>
						        ��</span>
								<span id="a92" style="display:none">��������Ϊ
<span class="R1" id="orrg_cmpr"><%if(map.get("orrg_cmpr")!=null){out.print(map.get("orrg_cmpr"));}%></span>
						         ��</span>								
								<span id="a23" style="display:none">���״������Ϊ
<span class="R1" id="orrg_tytp"><%if(map.get("orrg_tytp")!=null){out.print(map.get("orrg_tytp"));}%></span>
						         ��</span><span id="a24" style="display:none">�걨��Ϊ
<span class="R1" id="orrg_sbno"><%if(map.get("orrg_sbno")!=null){out.print(map.get("orrg_sbno"));}%></span>��
                                </span>�����з�����
<span class="R1" id="orrg_obfg"><%if(map.get("orrg_obfg")!=null){out.print(map.get("orrg_obfg"));}%></span>
<span id="a25" style="display:none"><span class="R1" id="orrg_tlfr"><%if(map.get("orrg_tlfr")!=null){out.print(map.get("orrg_tlfr"));}%></span>����������ȡ������ȡ�����ѡ�</span><span id="a99" style="display:none">�շѷ�ʽΪ<span class="R1" id="orrg_chco"><%if(map.get("orrg_chco")!=null){out.print(map.get("orrg_chco"));}%></span>��</span>
<span id="a26" style="display:none"></span><span id="a29" style="display:none">ʵ�յ籨�ѽ��Ϊ<span class="R1" id="orrg_taam"><%if(map.get("orrg_taam")!=null){out.print(map.get("orrg_taam"));}%></span>��</span></div>
			
						<div id="RE1" style="display:none">
						<span id="b01" style="display:none">�տ����յ�����л����Ʊ�ݺ��ж�[��/��]
<span class="R1" id="irrg_mkty"><%if(map.get("irrg_mkty")!=null){out.print(map.get("irrg_mkty"));}%></span>ͬҵת�룬</span>����
<span class="R1" id="irrg_pctp"><%if(map.get("irrg_pctp")!=null){out.print(map.get("irrg_pctp"));}%></span>
						����<span id="b02" style="display:none">������
<span class="R1" id="irrg_fncy"><%if(map.get("irrg_fncy")!=null){out.print(map.get("irrg_fncy"));}%></span>
						������۷ѱ��֣�Ϊ�۷ѱ��ֿ۴����ã�</span><span id="b03" style="display:none">����۷ѽ��Ϊ
<span class="R1" id="irrg_fnam"><%if(map.get("irrg_fnam")!=null){out.print(map.get("irrg_fnam"));}%></span>
						��</span>��Ϣ��
<span class="R1" id="irrg_vldt"><%if(map.get("irrg_vldt")!=null){out.print(map.get("irrg_vldt"));}%></span>
						������еĻ�ʽ��
<span class="R1" id="irrg_irtp"><%if(map.get("irrg_irtp")!=null){out.print(map.get("irrg_irtp"));}%></span>
<span class="R1" id="irrg_acrf"><%if(map.get("irrg_acrf")!=null){out.print(map.get("irrg_acrf"));}%></span>���������<span class="R1"><%if(map.get("irrg_cncd")!=null){out.print(map.get("irrg_cncd"));}%></span>
						������˹��𣩽��л��ҵ���տ�����
<span class="R1" id="irrg_jffs"><%if(map.get("irrg_jffs")!=null){out.print(map.get("irrg_jffs"));}%></span>
						���⸶��ʽ���ķ�ʽ���н⸶��<span id="b10" style="display:none"></span><span id="b11" style="display:none">�⸶���Ϊ
<span class="R1" id="irrg_exam"><%if(map.get("irrg_exam")!=null){out.print(map.get("irrg_exam"));}%></span>
						��</span><span id="b12" style="display:none">��
<span class="R1" id="irrg_dkth"><%if(map.get("irrg_dkth")!=null){out.print(map.get("irrg_dkth"));}%></span>
						�ķ�ʽ�������������</span><span id="b13" style="display:none">��
<span class="R1" id="irrg_slrt"><%if(map.get("irrg_slrt")!=null){out.print(map.get("irrg_slrt"));}%></span>
						������ۣ����룻</span><span id="b14" style="display:none">��
<span class="R1" id="irrg_byrt"><%if(map.get("irrg_byrt")!=null){out.print(map.get("irrg_byrt"));}%></span>
						�������ۣ�������</span><span id="b15" style="display:none">������Ϊ
<span class="R1" id="irrg_exrt"><%if(map.get("irrg_exrt")!=null){out.print(map.get("irrg_exrt"));}%></span>
						��</span><span id="b16" style="display:none">�Ƿ�����ͳ��Ϊ
<span class="R1" id="irrg_strn"><%if(map.get("irrg_strn")!=null){out.print(map.get("irrg_strn"));}%></span>
						��</span><span id="b20" style="display:none">������Ϊ
<span class="R1" id="irrg_nat"><%if(map.get("irrg_nat")!=null){out.print(map.get("irrg_nat"));}%></span>
						���������ԣ����ף�</span><span id="b99" style="display:none">��
<span class="R1" id="iirg_natp"><%if(map.get("iirg_natp")!=null){out.print(map.get("iirg_natp"));}%></span>
						���걨ͳ�����ͣ�</span><span id="b21" style="display:none">�������׸���Ϊ
<span class="R1" id="irrg_trmo"><%if(map.get("irrg_trmo")!=null){out.print(map.get("irrg_trmo"));}%></span>
						��</span></div>
           
                    <div id="RE2" style="display:none">
                       ������������ȡ�������ã���
<span class="R1" id="orst_chco"><%if(map.get("orst_chco")!=null){out.print(map.get("orst_chco"));}%></span>
					   ���շѷ�ʽ���ķ�ʽ��������ȡ������<span id="c01" style="display:none"></span>
					   <span id="c02" style="display:none">
<span class="R1" id="orst_cham"><%if(map.get("orst_cham")!=null){out.print(map.get("orst_cham"));}%></span>
					  ��ʵ�������ѽ���</span><span id="c03" style="display:none">�ʵ������Ϊ
<span class="R1" id="orst_tltp"><%if(map.get("orst_tltp")!=null){out.print(map.get("orst_tltp"));}%></span>
					����</span><span id="c04" style="display:none">ʵ�յ籨�ѽ��Ϊ
<span class="R1" id="orst_taam"><%if(map.get("orst_taam")!=null){out.print(map.get("orst_taam"));}%></span>
					</span>��</div>
							
           
					<div id="RE3" style="display:none"><span id="d01" style="display:none">
					������������ȡ�������ã���������ȡ������</span><span id="d03" style="display:none">�ʵ������Ϊ<span class="R1" id="orcl_tltp"><%if(map.get("orcl_tltp")!=null){out.print(map.get("orcl_tltp"));}%></span>
						��</span><span id="d04" style="display:none">ʵ���ʵ�ѽ��
					<span class="R1" id="orcl_taam"><%if(map.get("orcl_taam")!=null){out.print(map.get("orcl_taam"));}%></span>
				</span></div>
		
					<div id="RE4" style="display:none"><span id="e06" style="display:none">�ջ���Ӧ�����Ҫ�������ԭ�����������˻����ջ�����
<span class="R1" id="irrt_rjrs"><%if(map.get("irrt_rjrs")!=null){out.print(map.get("irrt_rjrs"));}%></span>
					(�˻�ԭ��)��ԭ������˻㣬</span>���˻���Ϊ
<span class="R1" id="irrt_rjam"><%if(map.get("irrt_rjam")!=null){out.print(map.get("irrt_rjam"));}%></span>
					��<span id="e01" style="display:none"></span>�ʻ���Ϊ
<span class="R1" id="irrt_acbk"><%if(map.get("irrt_acbk")!=null){out.print(map.get("irrt_acbk"));}%></span>
					��<span id="e02" style="display:none">�������˻��е��˺�Ϊ
<span class="R1" id="irrt_stac"><%if(map.get("irrt_stac")!=null){out.print(map.get("irrt_stac"));}%></span>
					��</span><span id="e03" style="display:none">�˻���ԭ���Ǳ��Ϊ
<span class="R1" id="irrt_acrf"><%if(map.get("irrt_acrf")!=null){out.print(map.get("irrt_acrf"));}%></span>
					��</span><span id="e04" style="display:none">��������Ϊ
<span class="R1" id="irrt_mstp"><%if(map.get("irrt_mstp")!=null){out.print(map.get("irrt_mstp"));}%></span>
					��</span><span id="e05" style="display:none">ԭ��������Ϣ��Ϊ
<span class="R1" id="irrt_vldt"><%if(map.get("irrt_vldt")!=null){out.print(map.get("irrt_vldt"));}%></span>
					��</span></div>
		
				<div id="RE5" style="display:none">�Է����������������������⸶��
				<span id="f01" style="display:none">��Ʊ����Ϊ
<span class="R1" id="irpb_dfno"><%if(map.get("irpb_dfno")!=null){out.print(map.get("irpb_dfno"));}%></span>
				 ��</span><span id="f02" style="display:none">�����Ϊ
<span class="R1" id="irpb_orbk"><%if(map.get("irpb_orbk")!=null){out.print(map.get("irpb_orbk"));}%></span>
				��</span><span id="f03" style="display:none">�������ַΪ
<span class="R1" id="irpb_orbkad"><%if(map.get("irpb_orbkad")!=null){out.print(map.get("irpb_orbkad"));}%></span>
				��</span>�Թ�/��˽Ϊ
<span class="R1" id="irpb_corp"><%if(map.get("irpb_corp")!=null){out.print(map.get("irpb_corp"));}%></span>
				��<span id="f04" style="display:none">�������ջ�����ַΪ
<span class="R1" id="irpb_yhnm"><%if(map.get("irpb_yhnm")!=null){out.print(map.get("irpb_yhnm"));}%></span>
				��</span>�տ��˴���Ϊ
<span class="R1" id="irpb_clno"><%if(map.get("irpb_clno")!=null){out.print(map.get("irpb_clno"));}%></span>
				���⸶��ʽΪ
<span class="R1" id="irpb_jffs"><%if(map.get("irpb_jffs")!=null){out.print(map.get("irpb_jffs"));}%></span>
			   ��<span id="f05" style="display:none">�տ����ʺ�Ϊ
<span class="R1" id="irpb_stac"><%if(map.get("irpb_stac")!=null){out.print(map.get("irpb_stac"));}%></span>
				��</span><span id="f06" style="display:none">�⸶���Ϊ
<span class="R1" id="irpb_exam"><%if(map.get("irpb_exam")!=null){out.print(map.get("irpb_exam"));}%></span>
				��</span><span id="f07" style="display:none">���������ʽΪ
<span class="R1" id="irpb_dkth"><%if(map.get("irpb_dkth")!=null){out.print(map.get("irpb_dkth"));}%></span>
				��</span><span id="f08" style="display:none">������Ϊ
<span class="R1" id="irpb_slrt"><%if(map.get("irpb_slrt")!=null){out.print(map.get("irpb_slrt"));}%></span>
				��</span><span id="f09" style="display:none">�����Ϊ
<span class="R1" id="irpb_byrt"><%if(map.get("irpb_byrt")!=null){out.print(map.get("irpb_byrt"));}%></span>
				��</span><span id="f10" style="display:none">�������Ϊ
<span class="R1" id="irpb_exrt"><%if(map.get("irpb_exrt")!=null){out.print(map.get("irpb_exrt"));}%></span>
				��</span><span id="f11" style="display:none">ת���л���Ϊ
<span class="R1" id="irpb_ztbr"><%if(map.get("irpb_ztbr")!=null){out.print(map.get("irpb_ztbr"));}%></span>
				��</span><span id="f12" style="display:none">
				�Ƿ�����ͳ��Ϊ
<span class="R1" id="irpb_strn"><%if(map.get("irpb_strn")!=null){out.print(map.get("irpb_strn"));}%></span>
				��</span><span id="f13" style="display:none">�ջ�����Ϊ
<span class="R1" id="irpb_shtp"><%if(map.get("irpb_shtp")!=null){out.print(map.get("irpb_shtp"));}%></span>
				��</span><span id="f14" style="display:none">�걨��Ϊ
<span class="R1" id="irpb_sbno"><%if(map.get("irpb_sbno")!=null){out.print(map.get("irpb_sbno"));}%></span>
				��</span><span id="f15" style="display:none">���״���Ϊ
<span class="R1" id="irpb_tytp"><%if(map.get("irpb_tytp")!=null){out.print(map.get("irpb_tytp"));}%></span>
				��</span><span id="f16" style="display:none">��������Ϊ
<span class="R1" id="irpb_nat"><%if(map.get("irpb_nat")!=null){out.print(map.get("irpb_nat"));}%></span>
				��</span><span id="f99" style="display:none">�걨ͳ������Ϊ
<span class="R1" id="irpb_natp"><%if(map.get("irpb_natp")!=null){out.print(map.get("irpb_natp"));}%></span>
				��</span><span id="f17" style="display:none">���׸���Ϊ
<span class="R1" id="irpb_trmo"><%if(map.get("irpb_trmo")!=null){out.print(map.get("irpb_trmo"));}%></span>
				��</span></div>
                    
				<div id="RE6" style="display:none">���Ѱ��������⸶�Ļ�����ҵ����н����</div>
               </div></td>
			   </tr> 
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="center" valign="middle"><div class="footer">
                        <button class="btn btn-primary" onclick="self.print();return false">
                            <i class="fa fa-print fa-2x"></i> ��ӡ
                        </button>
                    </div></td>
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

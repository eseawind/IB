<%--���ʽ��㰸��������--�鸶��ҵ�����--%>
<%--��ҳ�������caseDetailLC.jsp��ȡ����("0")/Զ��("1")ֵ:sutpvalue(),��ȱ��'...�Ѿ����жҵ�����'����ɽ���"��֤�У���������������"���ж�--%>
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
}	</script>	
	</head>
<body>
		<%String caseLcId=(String)map.get("caseId");%>
		<input type="hidden" id="caseLcIdN" value="<%=caseLcId%>">



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
                <td height="20" align="left" valign="middle"><strong>���ͣ�</strong>��֤�����鸶��ҵ�����</td>
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
                <td height="20" align="left" valign="middle"><strong>��ע��</strong>���鸶������Ӧ�Ŀ�֤�к�֪ͨ�еİ������Ϊ��
                  <script>document.write(document.getElementById("caseLcIdN").value)</script></td>
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
                <td height="20" align="left" valign="middle"><strong>���ݣ�</strong><span id="tips" style="display:none;width:120px;height:20px;color:#000;text-align:center;vertical-align:middle;background-color:lightyellow;border:solid black 1px"></span></td>
              </tr>
                    </table></td>
			  </tr>
               <tr><td height="100%" colspan="3"><div id="innerTable_div">
						<div id="innerTable_div">
              <div id="NE0" style="display:none">�������յ�����֤�󣬿�ʼ�������������� <span class="R1" id="ebrg_apdt">
                <%if(map.get("ebrg_apdt")!=null){out.print(map.get("ebrg_apdt"));}%>
                </span>Я����֤�͵��ݵ����������ƣ�<span class="R1">
                <%if(map.get("ebrg_bknm")!=null){out.print(map.get("ebrg_bknm"));}%>
                </span>�鸶���鸶���˴��鸶��֤����<span class="R1">
                <%if(map.get("ebrg_isbknm")!=null){out.print(map.get("ebrg_isbknm"));}%>
                </span> <span class="R1" id="ebrg_adbknm">
                <%if(map.get("ebrg_adbknm")!=null){out.print(map.get("ebrg_adbknm"));}%>
                </span>���˴��鸶��/�� <span class="R1" id="ebrg_mkts">
                <%if(map.get("ebrg_mkts")!=null){out.print(map.get("ebrg_mkts"));}%>
                </span> Ѻӡ�˷����鸶���� <span class="R1" id="ebrg_rvdt">
                <%if(map.get("ebrg_rvdt")!=null){out.print(map.get("ebrg_rvdt"));}%>
                </span> ������ <span class="R1" id="ebrg_dlcy">
                <%if(map.get("ebrg_dlcy")!=null){out.print(map.get("ebrg_dlcy"));}%>
                </span> ����� <span class="R1" id="ebrg_dlam">
                <%if(map.get("ebrg_dlam")!=null){out.print(map.get("ebrg_dlam"));}%>
                </span> <span id="a08" style="display:none">��B/L Date <span class="R1" id="ebrg_bldt">
                <%if(map.get("ebrg_bldt")!=null){out.print(map.get("ebrg_bldt"));}%>
                </span></span> ����Ʊ�� <span class="R1" id="ebrg_ivno">
                <%if(map.get("ebrg_ivno")!=null){out.print(map.get("ebrg_ivno"));}%>
                </span> ��<span id="a01" style="display:none">������ <span class="R1" id="ebrg_dtno">
                <%if(map.get("ebrg_dtno")!=null){out.print(map.get("ebrg_dtno"));}%>
                </span> �� </span><span id="a02" style="display:none">ת�ú� <span class="R1" id="ebrg_tlrf">
                <%if(map.get("ebrg_tlrf")!=null){out.print(map.get("ebrg_tlrf"));}%>
                </span> ��</span><span id="a03" style="display:none">�Ƿ񲻷������Ϊ <span class="R1" id="ebrg_drmk">
                <%if(map.get("ebrg_drmk")!=null){out.print(map.get("ebrg_drmk"));}%>
                </span>��</span>��ҵ����Ч��Ϊ<span class="R1" id="ebrg_epdt">
                <%if(map.get("ebrg_epdt")!=null){out.print(map.get("ebrg_epdt"));}%>
                </span>����������Ϊ<span class="R1" id="ebrg_psbl">
                <%if(map.get("ebrg_psbl")!=null){out.print(map.get("ebrg_psbl"));}%>
                </span>�죬�˲���������ȡ����<span class="R1" id="ebrg_chfr">
                <%if(map.get("ebrg_chfr")!=null){out.print(map.get("ebrg_chfr"));}%>
                </span> <span id="a99">���շѷ�ʽΪ<span class="R1" id="ebrg_chco">
                <%if(map.get("ebrg_chco")!=null){out.print(map.get("ebrg_chco"));}%>
                </span></span> <span id="a04" style="display:none">���ʵ������Ϊ <span class="R1" id="ebrg_tltp">
                <%if(map.get("ebrg_tltp")!=null){out.print(map.get("ebrg_tltp"));}%>
                </span></span><span id="a09" style="display:none">��TLX Charges CurrencyΪ <span class="R1" id="ebrg_tlcy">
                <%if(map.get("ebrg_tlcy")!=null){out.print(map.get("ebrg_tlcy"));}%>
                </span> </span><span id="a05" style="display:none">���ʵ�ѽ�� <span class="R1">
                <%if(map.get("ebrg_taam")!=null){out.print(map.get("ebrg_taam"));}%>
                </span> </span><span id="a06" style="display:none"></span><span id="a07" style="display:none">����ݹ��� <span class="R1" id="ebrg_cncd" >
                <%if(map.get("ebrg_cncd")!=null){out.print(map.get("ebrg_cncd"));}%>
              </span> ��</span>��ɴ˵ǼǺ󣬲������ĺ��溯������֤�С� </div>
            <div id="NE1" style="display:none">��֤���յ��ӽ����н�����֤�󣬽��������Ǽǣ������֤���Ѿ����������������ô��֤�п��Բ�������֤������ͬ�⣬��֤��֤һ�º󼴸�� <span id="i01" style="display:none">�����з���<span class="R1" id="ibrg_ngch">
                <%if(map.get("ibrg_ngch")!=null){out.print(map.get("ibrg_ngch"));}%>
                </span>��</span>������<span class="R1" id="ibrg_dlam">
                <%if(map.get("ibrg_dlam")!=null){out.print(map.get("ibrg_dlam"));}%>
                </span>���յ�����<span class="R1" id="ibrg_apdt">
                <%if(map.get("ibrg_apdt")!=null){out.print(map.get("ibrg_apdt"));}%>
                </span>��<span id="i02" style="display:none">��ٳж�/��������<span class="R1" id="ibrg_shdt">
                <%if(map.get("ibrg_shdt")!=null){out.print(map.get("ibrg_shdt"));}%>
                </span>��</span><span id="i99" style="display:none">�ᵥ��<span class="R1" id="ibrg_blno">
                <%if(map.get("ibrg_blno")!=null){out.print(map.get("ibrg_blno"));}%>
              </span>��</span>�˲������ղ����溯֪ͨ��֤�����ˡ�</div>
            <div id="NE2" style="display:none">�鸶�ж��ѳ��ڼĵ�δ����ĵ��ݽ����޸ĵĵǼǣ��˴��޸��鸶�Ƿ�Ѻӡ�˷�Ϊ <span class="R1" id="ebup_mkts">
                <%if(map.get("ebup_mkts")!=null){out.print(map.get("ebup_mkts"));}%>
                </span> <span id="b03" style="display:none">���Ƿ񲻷������Ϊ <span class="R1" id="ebup_drmk">
                <%if(map.get("ebup_drmk")!=null){out.print(map.get("ebup_drmk"));}%>
                </span></span> <span id="b08" style="display:none">���Ƿ�ƾ��������Ϊ <span class="R1" id="ebup_ckgt">
                <%if(map.get("ebup_ckgt")!=null){out.print(map.get("ebup_ckgt"));}%>
                </span></span> ���鸶���� <span class="R1" id="ebup_rvdt">
                <%if(map.get("ebup_rvdt")!=null){out.print(map.get("ebup_rvdt"));}%>
                </span> ������ <span class="R1" id="ebup_dlcy">
                <%if(map.get("ebup_dlcy")!=null){out.print(map.get("ebup_dlcy"));}%>
                </span> ����� <span class="R1" id="ebup_dlam">
                <%if(map.get("ebup_dlam")!=null){out.print(map.get("ebup_dlam"));}%>
                </span> ����Ʊ�� <span class="R1" id="ebup_ivno">
                <%if(map.get("ebup_ivno")!=null){out.print(map.get("ebup_ivno"));}%>
                </span> ��<span id="b01" style="display:none">������ <span class="R1" id="ebup_dtno">
                <%if(map.get("ebup_dtno")!=null){out.print(map.get("ebup_dtno"));}%>
                </span> ��</span><span id="b02" style="display:none">ת�ú� <span class="R1" id="ebup_tlrf">
                <%if(map.get("ebup_tlrf")!=null){out.print(map.get("ebup_tlrf"));}%>
                </span> ��</span>�˲���������ȡ���� <span class="R1" id="ebup_chfr">
                <%if(map.get("ebup_chfr")!=null){out.print(map.get("ebup_chfr"));}%>
                </span> ��<span id="b99" style="display:"> �շѷ�ʽΪ <span class="R1" id="ebup_chco">
                <%if(map.get("ebup_chco")!=null){out.print(map.get("ebup_chco"));}%>
                </span> </span><span id="b04" style="display:none">���ʵ������Ϊ <span class="R1" id="ebup_tltp">
                <%if(map.get("ebup_tltp")!=null){out.print(map.get("ebup_tltp"));}%>
                </span> </span><span id="b05" style="display:none">���ʵ�ѽ�� <span class="R1" id="ebup_taam">
                <%if(map.get("ebup_taam")!=null){out.print(map.get("ebup_taam"));}%>
                </span> ��</span><span id="b06" style="display:none"></span><span id="b07" style="display:none">��ݹ��� <span class="R1" id="ebup_cncd">
                <%if(map.get("ebup_cncd")!=null){out.print(map.get("ebup_cncd"));}%>
              </span> ��</span>��ɴ��޸ĺ�����SWIFT���ķ�����֤�У������溯��ͬ�޸ĵ���һ��ĸ���֤�С�</div>
            <div id="NE3" style="display:none">��֤�н��ڵ����յ����������ύ���鸶�еĵ��ݿ�������(�����������滻ĳ����)���������ύ�µ��ݸ��鸶�У���֤���յ��鸶�м������µ��ݺ��滻���ɵ��ݲ�����&lt;&lt;��������֪ͨ��&gt;&gt;֪ͨ��֤�����ˣ���������Ϊ����Ʊ�� <span class="R1" id="ibub_ivno">
                <%if(map.get("ibub_ivno")!=null){out.print(map.get("ibub_ivno"));}%>
                </span> ���ᵥ�� <span class="R1" id="ibub_ivno">
                <%if(map.get("ibub_blno")!=null){out.print(map.get("ibub_blno"));}%>
                </span> ����Ʊ��� <span class="R1" id="ibub_dfam">
                <%if(map.get("ibub_dfam")!=null){out.print(map.get("ibub_dfam"));}%>
                </span> �������� <span class="R1" id="ibub_dudt">
                <%if(map.get("ibub_dudt")!=null){out.print(map.get("ibub_dudt"));}%>
              </span> ��</div>
            <div id="NE4" style="display:none">��֤�������õ����ݺ�û��������֤���·��ֲ����㡢�����㱻���ܡ��Ѿ������������ҵ�񣬼��жң��ж��� <span class="R1" id="ibac_dudt">
                <%if(map.get("ibac_dudt")!=null){out.print(map.get("ibac_dudt"));}%>
                </span> ��������� <span class="R1" id="ibac_apdt">
                <%if(map.get("ibac_apdt")!=null){out.print(map.get("ibac_apdt"));}%>
                </span> ���˲����շѷ�ʽΪ <span class="R1" id="ibac_chco">
                <%if(map.get("ibac_chco")!=null){out.print(map.get("ibac_chco"));}%>
                </span> ��<span id="c01" style="display:none"></span><span id="c02" style="display:none"></span><span id="c03" style="display:none">�ʵ������Ϊ <span class="R1" id="ibac_tltp">
                <%if(map.get("ibac_tltp")!=null){out.print(map.get("ibac_tltp"));}%>
                </span> ��</span><span id="c04" style="display:none">ʵ���ʷѽ�� <span class="R1" id="ibac_taam">
                <%if(map.get("ibac_taam")!=null){out.print(map.get("ibac_taam"));}%>
              </span> ��</span>������ɺ󣬲������ķ����鸶�С�</div>
            <div id="NE5" style="display:none">�鸶�н����ڵ��ݼĳ��󣬳���Ԥ��ʱ����δ�ջ㣬�鸶�л���֤�д��յ��ݿ��
              ����һ��������15��֮��Զ�ڵ�δ�жҵĻ�߿�֤�о���жң��ѳжҵ�����δ����Ĵ߿�֤�и��ҵ��¼���
              ����SWIFT����(420\799\999)���͸���֤�У��˲����շѷ�ʽΪ <span class="R1" id="ebtr_chco">
                        <%if(map.get("ebtr_chco")!=null){out.print(map.get("ebtr_chco"));}%>
                        </span> ��<span id="d01" style="display:none"></span><span id="d02" style="display:none">ʵ�������� <span class="R1" id="ebtr_cham">
                        <%if(map.get("ebtr_cham")!=null){out.print(map.get("ebtr_cham"));}%>
                        </span> ��</span><span id="d03" style="display:none">��ݹ��� <span class="R1" id="ebtr_cncd">
                        <%if(map.get("ebtr_cncd")!=null){out.print(map.get("ebtr_cncd"));}%>
                        </span> ��</span><span id="d04" style="display:none">�ʵ������Ϊ <span class="R1" id="ebtr_tltp">
                        <%if(map.get("ebtr_tltp")!=null){out.print(map.get("ebtr_tltp"));}%>
                        </span> </span><span id="d05" style="display:none">ʵ���ʵ�ѱ���Ϊ <span class="R1" id="ebtr_tlcy">
                        <%if(map.get("ebtr_tlcy")!=null){out.print(map.get("ebtr_tlcy"));}%>
                        </span> </span><span id="d06" style="display:none">ʵ���ʷѽ�� <span class="R1" id="ebtr_taam">
                        <%if(map.get("ebtr_taam")!=null){out.print(map.get("ebtr_taam"));}%>
                      </span> ��</span>��ɴ˵ǼǺ󣬲������ķ�����֤�С�</div>
            <div id="NE6" style="display:none">��֤���յ��鸶�з�����������ĺ��Ȳ����Ҫ���鸶�еĵ��ݼĵ��Ժ�����޲�����֮����֪ͨ���������鸶�и����Ϣ�� <span class="R1" id="ibpp_vldt">
                <%if(map.get("ibpp_vldt")!=null){out.print(map.get("ibpp_vldt"));}%>
                </span> ���տ���Ϊ <span class="R1" id="ibpp_rvbk">
                <%if(map.get("ibpp_rvbk")!=null){out.print(map.get("ibpp_rvbk"));}%>
                </span> ��<span id="e01" style="display:none">�տ���֮�ʻ��� <span class="R1" id="ibpp_rabk">
                <%if(map.get("ibpp_rabk")!=null){out.print(map.get("ibpp_rabk"));}%>
                </span> ��</span><span id="e02" style="display:none">�տ����ʺ� <span class="R1" id="ibpp_raac">
                <%if(map.get("ibpp_raac")!=null){out.print(map.get("ibpp_raac"));}%>
                </span> ��</span><span id="e03" style="display:none">�����з��� <span class="R1" id="ibpp_ngch">
                <%if(map.get("ibpp_ngch")!=null){out.print(map.get("ibpp_ngch"));}%>
                </span> ��</span>�����ʻ��� <span class="R1" id="ibpp_acbk">
                <%if(map.get("ibpp_acbk")!=null){out.print(map.get("ibpp_acbk"));}%>
                </span> ��<span id="e04" style="display:none">Ѻ���� <span class="R1" id="ibpp_amc1">
                <%if(map.get("ibpp_amc1")!=null){out.print(map.get("ibpp_amc1"));}%>
                </span> ��</span><span id="e05" style="display:none">��֤���� <span class="R1" id="ibpp_amc2">
                <%if(map.get("ibpp_amc2")!=null){out.print(map.get("ibpp_amc2"));}%>
                </span> ��</span><span id="e06" style="display:none">3140��Ŀ�ʺ� <span class="R1" id="ibpp_acc1">
                <%if(map.get("ibpp_acc1")!=null){out.print(map.get("ibpp_acc1"));}%>
                </span> ��</span><span id="e07" style="display:none">ԭ�һ����� <span class="R1" id="ibpp_amc4">
                <%if(map.get("ibpp_amc4")!=null){out.print(map.get("ibpp_amc4"));}%>
                </span> ��</span><span id="e08" style="display:none">ԭ���ʺ� <span class="R1" id="ibpp_acc4">
                <%if(map.get("ibpp_acc4")!=null){out.print(map.get("ibpp_acc4"));}%>
                </span> ��</span><span id="e09" style="display:none">�ۻ������ <span class="R1" id="ibpp_amc5">
                <%if(map.get("ibpp_amc5")!=null){out.print(map.get("ibpp_amc5"));}%>
                </span> ��</span><span id="e10" style="display:none">�ۻ��ʺ� <span class="R1" id="ibpp_acc5">
                <%if(map.get("ibpp_acc5")!=null){out.print(map.get("ibpp_acc5"));}%>
                </span> ��</span><span id="e11" style="display:none">ʵ�ʻ��� <span class="R1" id="ibpp_exrt">
                <%if(map.get("ibpp_exrt")!=null){out.print(map.get("ibpp_exrt"));}%>
                </span> ��</span><span id="e99" style="display:none">�ۻ���� <span class="R1" id="ibpp_exam">
                <%if(map.get("ibpp_exam")!=null){out.print(map.get("ibpp_exam"));}%>
                </span> ��</span><span id="e12" style="display:none">�׻������ <span class="R1" id="ibpp_amc6">
                <%if(map.get("ibpp_amc6")!=null){out.print(map.get("ibpp_amc6"));}%>
                </span> ��</span><span id="e13" style="display:none">���������ʽ <span class="R1" id="ibpp_fxkd">
                <%if(map.get("ibpp_fxkd")!=null){out.print(map.get("ibpp_fxkd"));}%>
                </span> ��</span><span id="e14" style="display:none">�׻��ʺ� <span class="R1" id="ibpp_acc6">
                <%if(map.get("ibpp_acc6")!=null){out.print(map.get("ibpp_acc6"));}%>
                </span> ��</span><span id="e15" style="display:none">����� <span class="R1" id="ibpp_byft">
                <%if(map.get("ibpp_byft")!=null){out.print(map.get("ibpp_byft"));}%>
                </span> ��</span><span id="e16" style="display:none">������ <span class="R1" id="ibpp_slrt">
                <%if(map.get("ibpp_slrt")!=null){out.print(map.get("ibpp_slrt"));}%>
                </span> ��</span><span id="e98" style="display:none">�׻���� <span class="R1" id="ibpp_dram">
                <%if(map.get("ibpp_dram")!=null){out.print(map.get("ibpp_dram"));}%>
                </span> ��</span><span id="e17" style="display:none">�ۻ������� <span class="R1" id="ibpp_shxz">
                <%if(map.get("ibpp_shxz")!=null){out.print(map.get("ibpp_shxz"));}%>
                </span> ��</span><span id="e18" style="display:none">�Թ�/��˽�� <span class="R1" id="ibpp_cmpr">
                <%if(map.get("ibpp_cmpr")!=null){out.print(map.get("ibpp_cmpr"));}%>
                </span> ��</span><span id="e19" style="display:none">�Ƿ�ƾ�������� <span class="R1" id="ibpp_mepy">
                <%if(map.get("ibpp_mepy")!=null){out.print(map.get("ibpp_mepy"));}%>
                </span> ��</span><span id="e20" style="display:none">�Ƿ���ظ��� <span class="R1" id="ibpp_ctpy">
                <%if(map.get("ibpp_ctpy")!=null){out.print(map.get("ibpp_ctpy"));}%>
                </span> ��</span>�걨���� <span class="R1" id="ibpp_sbno">
                <%if(map.get("ibpp_sbno")!=null){out.print(map.get("ibpp_sbno"));}%>
                </span> ��<span id="e21" style="display:none">���״��� <span class="R1" id="ibpp_tytp">
                <%if(map.get("ibpp_tytp")!=null){out.print(map.get("ibpp_tytp"));}%>
                </span> ��</span>�˲���������ȡ���� <span class="R1" id="ibpp_chfr">
                <%if(map.get("ibpp_chfr")!=null){out.print(map.get("ibpp_chfr"));}%>
                </span> ��<span id="e22" style="display:">�շѷ�ʽΪ <span class="R1" id="ibpp_chco">
                <%if(map.get("ibpp_chco")!=null){out.print(map.get("ibpp_chco"));}%>
                </span> ��</span><span id="e23" style="display:none"></span><span id="e24" style="display:none"></span><span id="e25" style="display:none">�ʵ������Ϊ <span class="R1" id="ibpp_tltp">
                <%if(map.get("ibpp_tltp")!=null){out.print(map.get("ibpp_tltp"));}%>
                </span> ��</span><span id="e26" style="display:none">�����ʵ�� <span class="R1" id="ibpp_taam">
                <%if(map.get("ibpp_taam")!=null){out.print(map.get("ibpp_taam"));}%>
                </span> ��</span>���������Ϊ <span class="R1" id="ibpp_ckno">
                <%if(map.get("ibpp_ckno")!=null){out.print(map.get("ibpp_ckno"));}%>
                </span> ��<span id="e27" style="display:none">ƾ֤�������� <span class="R1" id="ibpp_crdt">
                <%if(map.get("ibpp_crdt")!=null){out.print(map.get("ibpp_crdt"));}%>
              </span> ��</span>��ɴ˲����󣬲������ķ����鸶�С�</div>
            <div id="NE7" style="display:none">�˵����ڵ��ݴ��в����������£���֤�˾ܾ��жһ򸶿��ָʾ��֤�н������˻��鸶�У���������ڿ�֤������Ҫ��֤�н��鸶���ύ�Ľ��ڵ����˻صĲ���������SWIFT����(799\999)���͸��鸶�У�����&lt;&lt;�˵��溯&gt;&gt;��ͬ�˻صĵ���һ��ĸ��鸶�С�</div>
            <div id="NE8" style="display:none">�յ���֤�е��˵����ĺ��˻صĵ��ݣ��鸶�����˵��Ǽǡ�</div>
            <div id="NE9" style="display:none">���ݴ��в����������£��鸶�и��������˵�Ҫ���Ȳ��ĵ��ݣ������ݲ������Ե籨��ʽ���͸���֤�С��˹������ڿ�֤�еǼ������鸶�еĵ��ݵĵ��᲻���㡣֪ͨ���� <span class="R1" id="ibdr_ardt">
                <%if(map.get("ibdr_ardt")!=null){out.print(map.get("ibdr_ardt"));}%>
              </span>��ҵ��¼��������溯&lt;&lt;���᲻����֪ͨ&gt;&gt;֪ͨ��֤�ˡ�</div>
            <div id="NE10" style="display:none">��֤����ɵ��᲻����ǼǺ󣬶��鸶�е���Ĳ�������лظ�������SWIFT����(752\799\999)���鸶�У�֪ͨ��[��/��]<span class="R1" id="ibdk_drrv">
                <%if(map.get("ibdk_drrv")!=null){out.print(map.get("ibdk_drrv"));}%>
              </span>���ܸõ��ݵĲ����㡣</div>
            <div id="NE11" style="display:none">�鸶���յ���֤�еĳжҵ��ĺ󣬰������������жҵǼǡ�</div>
            <div id="NE12" style="display:none">��֤�����˳жҺ󣬿�֤������������ĳжҵ����գ����ĵ�����Ϊ <span class="R1" id="ibum_dudt">
                <%if(map.get("ibum_dudt")!=null){out.print(map.get("ibum_dudt"));}%>
              </span> ��������ɺ�������ķ����鸶�С�</div>
            <div id="NE13" style="display:none">�Ѿ����������Ǽǵ�����֤ҵ�񣬼���в�����ʱ����֤��������Ȩ��֤�����ܳ�/���������������ɺ󷢵��ĸ��鸶�С�</div>
            <div id="NE14" style="display:none">�鸶���յ���֤�еľܳ�/������ĺ����ܳж�/����Ǽ�</div>
            <div id="NE15" style="display:none">�鸶���յ���֤�оܸ�/�жҵ��ĺ�����������£�������(������)ָʾ�鸶�п�֤������(������)�����޳�ȡ�õ��ݣ��ڴ˹����������Ǽǣ� <span id="f01" style="display:none">�˲���������ȡ���� <span class="R1" id="ebnp_tlfr">
                <%if(map.get("ebnp_tlfr")!=null){out.print(map.get("ebnp_tlfr"));}%>
                </span> ��</span><span id="f02" style="display:">�շѷ�ʽΪ <span class="R1" id="ebnp_chco">
                <%if(map.get("ebnp_chco")!=null){out.print(map.get("ebnp_chco"));}%>
                </span> ��</span><span id="f03" style="display:none"></span><span id="f04" style="display:none">ʵ�������ѽ��Ϊ <span class="R1" id="ebnp_cham">
                <%if(map.get("ebnp_cham")!=null){out.print(map.get("ebnp_cham"));}%>
                </span> ��</span><span id="f05" style="display:none">��ݹ��� <span class="R1" id="ebnp_cncd">
                <%if(map.get("ebnp_cncd")!=null){out.print(map.get("ebnp_cncd"));}%>
                </span> ��</span><span id="f06" style="display:none">�ʵ������Ϊ <span class="R1" id="ebnp_tltp">
                <%if(map.get("ebnp_tltp")!=null){out.print(map.get("ebnp_tltp"));}%>
                </span> ��</span><span id="f07" style="display:none">�ʵ�ѱ��� <span class="R1" id="ebnp_tlcy">
                <%if(map.get("ebnp_tlcy")!=null){out.print(map.get("ebnp_tlcy"));}%>
                </span> ��</span><span id="f08" style="display:none">ʵ���ʵ�ѽ�� <span class="R1" id="ebnp_taam">
                <%if(map.get("ebnp_taam")!=null){out.print(map.get("ebnp_taam"));}%>
                  ��</span></span></div>
            <div id="NE16" style="display:none">��֤�и����鸶�е�ָʾ���ڿ�֤�����˲����������½����ڵ��ݷŸ���֤�ˡ�</div>
            <div id="NE17" style="display:none">�鸶���յ���֤�еĸ��ĳжҵ����յ��ĺ󣬰������������޸ĳж����ݲ�����</div>
            <div id="NE18" style="display:none">��֤����֤��֤һ�»�����֤�����в����㵫��֤������ͬ�⸶�������£���֤���������������Ϣ�� <span class="R1" id="ibpy_vldt">
                <%if(map.get("ibpy_vldt")!=null){out.print(map.get("ibpy_vldt"));}%>
                </span> ��<span id="g01" style="display:none">�տ���֮�ʻ��� <span class="R1" id="ibpy_rabk">
                <%if(map.get("ibpy_rabk")!=null){out.print(map.get("ibpy_rabk"));}%>
                </span> ��</span><span id="g02" style="display:none">�տ����ʺ� <span class="R1" id="ibpy_raac">
                <%if(map.get("ibpy_raac")!=null){out.print(map.get("ibpy_raac"));}%>
                </span> ��</span><span id="g03" style="display:none">�����з��� <span class="R1" id="ibpy_ngch">
                <%if(map.get("ibpy_ngch")!=null){out.print(map.get("ibpy_ngch"));}%>
                </span> ��</span>�����ʻ��� <span class="R1" id="ibpy_acbk">
                <%if(map.get("ibpy_acbk")!=null){out.print(map.get("ibpy_acbk"));}%>
                </span> ��<span id="g04" style="display:none">Ѻ���� <span class="R1" id="ibpy_amc1">
                <%if(map.get("ibpy_amc1")!=null){out.print(map.get("ibpy_amc1"));}%>
                </span> ��</span><span id="g05" style="display:none">ԭ�һ����� <span class="R1" id="ibpy_amc4">
                <%if(map.get("ibpy_amc4")!=null){out.print(map.get("ibpy_amc4"));}%>
                </span> ��</span><span id="g06" style="display:none">ԭ���ʺ� <span class="R1" id="ibpy_acc4">
                <%if(map.get("ibpy_acc4")!=null){out.print(map.get("ibpy_acc4"));}%>
                </span> ��</span><span id="g07" style="display:none">�ۻ������ <span class="R1" id="ibpy_amc5">
                <%if(map.get("ibpy_amc5")!=null){out.print(map.get("ibpy_amc5"));}%>
                </span> ��</span><span id="g08" style="display:none">�ۻ��ʺ� <span class="R1" id="ibpy_acc5">
                <%if(map.get("ibpy_acc5")!=null){out.print(map.get("ibpy_acc5"));}%>
                </span> ��</span><span id="g09" style="display:none">ʵ�ʻ��� <span class="R1" id="ibpy_exrt">
                <%if(map.get("ibpy_exrt")!=null){out.print(map.get("ibpy_exrt"));}%>
                </span> ��</span><span id="g10" style="display:none">�׻������ <span class="R1" id="ibpy_amc6">
                <%if(map.get("ibpy_amc6")!=null){out.print(map.get("ibpy_amc6"));}%>
                </span> ��</span><span id="g11" style="display:none">�׻��ʺ� <span class="R1" id="ibpy_acc6">
                <%if(map.get("ibpy_acc6")!=null){out.print(map.get("ibpy_acc6"));}%>
                </span> ��</span><span id="g12" style="display:none">���������ʽ <span class="R1" id="ibpy_fxkd2">
                <%if(map.get("ibpy_fxkd2")!=null){out.print(map.get("ibpy_fxkd2"));}%>
                </span> ��</span><span id="g13" style="display:none">����� <span class="R1" id="ibpy_byft">
                <%if(map.get("ibpy_byft")!=null){out.print(map.get("ibpy_byft"));}%>
                </span> ��</span><span id="g14" style="display:none">������ <span class="R1" id="ibpy_slrt">
                <%if(map.get("ibpy_slrt")!=null){out.print(map.get("ibpy_slrt"));}%>
                </span> ��</span><span id="g15" style="display:none">�׻���� <span class="R1" id="ibpy_exr1">
                <%if(map.get("ibpy_exr1")!=null){out.print(map.get("ibpy_exr1"));}%>
                </span> ��</span><span id="g16" style="display:none">�ۻ����� <span class="R1" id="ibpy_shxz">
                <%if(map.get("ibpy_shxz")!=null){out.print(map.get("ibpy_shxz"));}%>
                </span> ��</span><span id="g17" style="display:none">�Թ�/��˽�� <span class="R1" id="ibpy_cmpr">
                <%if(map.get("ibpy_cmpr")!=null){out.print(map.get("ibpy_cmpr"));}%>
                </span> ��</span><span id="g18" style="display:none">�Ƿ�ƾ�������� <span class="R1" id="ibpy_mepy">
                <%if(map.get("ibpy_mepy")!=null){out.print(map.get("ibpy_mepy"));}%>
                </span> ��</span><span id="g19" style="display:none">�Ƿ���ظ��� <span class="R1" id="ibpy_ctpy">
                <%if(map.get("ibpy_ctpy")!=null){out.print(map.get("ibpy_ctpy"));}%>
                </span> ��</span>�걨���� <span class="R1" id="ibpy_sbno">
                <%if(map.get("ibpy_sbno")!=null){out.print(map.get("ibpy_sbno"));}%>
                </span> ��<span id="g20" style="display:none">���״��� <span class="R1" id="ibpy_tytp">
                <%if(map.get("ibpy_tytp")!=null){out.print(map.get("ibpy_tytp"));}%>
                </span> ��</span>�˲���������ȡ���� <span class="R1" id="ibpy_chfr">
                <%if(map.get("ibpy_chfr")!=null){out.print(map.get("ibpy_chfr"));}%>
                </span> ���շѷ�ʽΪ <span class="R1" id="ibpy_chco">
                <%if(map.get("ibpy_chco")!=null){out.print(map.get("ibpy_chco"));}%>
                </span> ��<span id="g21" style="display:none"></span><span id="g22" style="display:none"></span><span id="g23" style="display:none">�ʵ������Ϊ <span class="R1" id="ibpy_tltp">
                <%if(map.get("ibpy_tltp")!=null){out.print(map.get("ibpy_tltp"));}%>
                </span> ��</span><span id="g24" style="display:none">�����ʵ�� <span class="R1" id="ibpy_taam">
                <%if(map.get("ibpy_taam")!=null){out.print(map.get("ibpy_taam"));}%>
                </span> ��</span><span id="g25" style="display:none">���������Ϊ <span class="R1" id="ibpy_ckno">
                <%if(map.get("ibpy_ckno")!=null){out.print(map.get("ibpy_ckno"));}%>
                </span> ��</span><span id="g26" style="display:none">ƾ֤�������� <span class="R1" id="ibpy_crdt">
                <%if(map.get("ibpy_crdt")!=null){out.print(map.get("ibpy_crdt"));}%>
              </span> ��</span>��ɴ˲����󣬲������ķ����鸶�С�</div>
            <div id="NE19" style="display:none">�鸶���յ���֤�еĸ�����ĺ����ջ�⸶�������շѽ�� <span id="h01" style="display:none"><span class="R1" id="ebpy_fnam">
                <%if(map.get("ebpy_fnam")!=null){out.print(map.get("ebpy_fnam"));}%>
                </span>��</span><span id="h02" style="display:none"></span>Ӧ�������� <span class="R1" id="ebpy_fnch">
                <%if(map.get("ebpy_fnch")!=null){out.print(map.get("ebpy_fnch"));}%>
                </span>��Ӧ���ʵ�� <span class="R1" id="ebpy_fntl">
                <%if(map.get("ebpy_fntl")!=null){out.print(map.get("ebpy_fntl"));}%>
                </span> ���ʻ��� <span class="R1" id="ebpy_acbk">
                <%if(map.get("ebpy_acbk")!=null){out.print(map.get("ebpy_acbk"));}%>
                </span> ��<span id="h03" style="display:none">�⸶��ʽ�ķ�ʽΪ <span class="R1" id="ebpy_jffs">
                <%if(map.get("ebpy_jffs")!=null){out.print(map.get("ebpy_jffs"));}%>
                </span> ��</span><span id="h04" style="display:none">ԭ������/���ʽ��Ϊ <span class="R1" id="ebpy_dcam">
                <%if(map.get("ebpy_dcam")!=null){out.print(map.get("ebpy_dcam"));}%>
                </span> ��</span><span id="h05" style="display:none">ԭ������/�����ʺ�Ϊ <span class="R1" id="ebpy_stac">
                <%if(map.get("ebpy_stac")!=null){out.print(map.get("ebpy_stac"));}%>
                </span> ��</span><span id="h06" style="display:none">����/�ۻ���ҽ��Ϊ <span class="R1" id="ebpy_stam">
                <%if(map.get("ebpy_stam")!=null){out.print(map.get("ebpy_stam"));}%>
                </span> ��</span><span id="h07" style="display:none">�������/�����ʺ�Ϊ <span class="R1" id="ebpy_rmac">
                <%if(map.get("ebpy_rmac")!=null){out.print(map.get("ebpy_rmac"));}%>
                </span> ��</span><span id="h08" style="display:none">������Ϊ <span class="R1" id="ebpy_exrt">
                <%if(map.get("ebpy_exrt")!=null){out.print(map.get("ebpy_exrt"));}%>
                </span> ��</span><span id="h09" style="display:none">�ۻ�ͳ������(����)Ϊ <span class="R1" id="ebpy_shxz">
                <%if(map.get("ebpy_shxz")!=null){out.print(map.get("ebpy_shxz"));}%>
                </span> ��</span><span id="h10" style="display:none">���׻���ҽ��Ϊ <span class="R1" id="ebpy_pdam">
                <%if(map.get("ebpy_pdam")!=null){out.print(map.get("ebpy_pdam"));}%>
                </span> ��</span><span id="h11" style="display:none">�׻����Ϊ <span class="R1" id="ebpy_thcy">
                <%if(map.get("ebpy_thcy")!=null){out.print(map.get("ebpy_thcy"));}%>
                </span> ��</span><span id="h12" style="display:none">�׻���/�����ʺ�Ϊ <span class="R1" id="ebpy_thac">
                <%if(map.get("ebpy_thac")!=null){out.print(map.get("ebpy_thac"));}%>
                </span> ��</span><span id="h13" style="display:none">���������ʽΪ <span class="R1" id="ebpy_fxkd">
                <%if(map.get("ebpy_fxkd")!=null){out.print(map.get("ebpy_fxkd"));}%>
                </span> ��</span><span id="h14" style="display:none">���Ϊ <span class="R1" id="ebpy_exr2">
                <%if(map.get("ebpy_exr2")!=null){out.print(map.get("ebpy_exr2"));}%>
                </span> ��</span><span id="h15" style="display:none">������Ϊ <span class="R1" id="ebpy_slrt">
                <%if(map.get("ebpy_slrt")!=null){out.print(map.get("ebpy_slrt"));}%>
                </span> ��</span><span id="h16" style="display:none">�����Ϊ <span class="R1" id="ebpy_byft">
                <%if(map.get("ebpy_byft")!=null){out.print(map.get("ebpy_byft"));}%>
                </span> ��</span><span id="h17" style="display:none">����ͳ�� <span class="R1" id="ebpy_strn">
                <%if(map.get("ebpy_strn")!=null){out.print(map.get("ebpy_strn"));}%>
                </span> ��</span><span id="h18" style="display:none">�Թ���˽Ϊ <span class="R1" id="ebpy_corp">
                <%if(map.get("ebpy_corp")!=null){out.print(map.get("ebpy_corp"));}%>
                </span> ��</span><span id="h19" style="display:none">��������Ϊ <span class="R1" id="ebpy_nat">
                <%if(map.get("ebpy_nat")!=null){out.print(map.get("ebpy_nat"));}%>
                </span> ��</span>�걨ͳ������Ϊ <span class="R1" id="ebpy_natp">
                <%if(map.get("ebpy_natp")!=null){out.print(map.get("ebpy_natp"));}%>
                </span> ��<span id="h20" style="display:none">���Ҵ��� <span class="R1" id="ebpy_cncd">
                <%if(map.get("ebpy_cncd")!=null){out.print(map.get("ebpy_cncd"));}%>
                </span> ��</span> �ջ�����Ϊ <span class="R1" id="ebpy_shtp">
                <%if(map.get("ebpy_shtp")!=null){out.print(map.get("ebpy_shtp"));}%>
                </span> ���걨��Ϊ <span class="R1" id="ebpy_stno">
                <%if(map.get("ebpy_stno")!=null){out.print(map.get("ebpy_stno"));}%>
                </span> <span id="h21" style="display:none">�����״���Ϊ <span class="R1" id="ebpy_tytp">
                <%if(map.get("ebpy_tytp")!=null){out.print(map.get("ebpy_tytp"));}%>
              </span></span> ��</div>
            <div id="NE20" style="display:none">��֤�н���֤������ͬ�⸶����ѳжһ��޳������ĵ��ݽ�����֤�����˲��Ǽǡ�</div>
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
</table><form>
	<%String names=(String)map.get("NEH");%>
		<%String spanNames=(String)map.get("idPS");%>
		<input type="hidden" id="showDiv" value="<%=names%>">
		<input type="hidden" id="showSpan" value="<%=spanNames%>">
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

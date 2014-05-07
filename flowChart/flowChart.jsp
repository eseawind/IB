<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%@ page import="java.util.Map"%>
<html><head><title></title>
<script language='JavaScript'>
<!--
self.moveTo(0,0) 
self.resizeTo(screen.availWidth,screen.availHeight)
-->
</script>
<style type="text/css">
<!--
.flowChart_css {color:#08346B;}
.red{color:#FF0000;}
.blue{color:#0000CC;}	
.green{ color:#008080;}
.inputScore {font-family: "Arial", Times, serif;	color:#FF0000;height: 18px;	width: 30px;}
body {margin: 0px; background-color:#ffffff; color:#ffffff;font-size:12px;}
.titleCont{color:#FF6633;font-weight:bold;}
.right{background-color:#EEF2EC}
.wrong{background-color:#F2E7E6}
.titleRW{background-color:#FFFAE6}
-->
</style>
<script>function show()
{
	if($('detail').style.display=="none"){
		$('detail').style.display="block";
	}else {
		if($('detail').style.display=="block"){
			$('detail').style.display="none";
			}
	}
}

function choose()
{  
 var prids = document.forms[0].prids.value;
 var firstprid=prids.substr(0,4);
 for(var n=1;n<=6;n++)
 {	
	var c_id="id"+n;
	var SvgMainMapDoc=id1.getSVGDocument();   /*��ȡDOM*/
	var SvgObj=SvgMainMapDoc.getElementById(c_id);  /*��ȡelemnetָ�� ��ȡ����XX����*/
	var SvgObj1=SvgObj.getChildNodes;  /*��ȡ�ӽڵ�*/
	for(var iCount=1;iCount<((SvgObj1.length)-1);iCount+=2)
   	{	
		if(SvgObj1.item(iCount).getAttribute("name")==firstprid)/*item(���)���������ӽڵ�,����ж���name���Ե�ֵ�Ƿ��Ҫ��ѯ��ֵ��ͬ*/
		   {  
			  SvgObj.getStyle().setProperty("visibility","show");  
			  return(c_id);
			}
	 }
   }		   
}

function searchVal()
{
     var prids=document.forms[0].prids.value;
	 var prids_len=prids.length;
	 var c_id1=choose(prids);
	 var SvgMainMapDoc=id1.getSVGDocument();   /*��ȡDOM*/
	 var SvgObj=SvgMainMapDoc.getElementById(c_id1);  /*��ȡelemnetָ�� ��ȡ����XX����*/
	 var SvgObj1=SvgObj.getChildNodes;  /*��ȡ�ӽڵ�*/
     var color2=document.forms[0].colors.value;
     //var color2_len=color2.length;   
     for(var count=0;count<prids_len;count+=5)
      {
		var char2=prids.substr(count,4); /*ȡ�ĸ��ַ�__һ��prid,����ǰ����*/
		var num=color2.indexOf("_");  /* ���㿪ʼ*/
		if(num==-1)
		{
		 for(var iCount=1;iCount<((SvgObj1.length)-1);iCount+=2)
		  {	
			if(SvgObj1.item(iCount).getAttribute("name")==char2)/*item(���)���������ӽڵ�,����ж���name���Ե�ֵ�Ƿ��Ҫ��ѯ��*/
			   {
				  SvgStyle1=SvgObj1.item(iCount).getStyle();  
				  SvgStyle1.setProperty('fill','none'); 
				  SvgStyle1.setProperty('stroke',color2);  
				}
		   }
		}else{
	    var color1=color2.substring(0,num); /*��ǰprid��color*/ /*numΪʣ�മ��?D?D���ڵ�λ��*/
		var count_c=color1.length;  /*��ǰprid��Ӧ����ɫ*/
	    //num_2=color2.length-count_c;  /*ʣ�മ�ĳ���*/
	    color2=color2.substring(num+1,color2.length);  /*ʣ����ַ���*/
	         for(var iCount=1;iCount<((SvgObj1.length)-1);iCount+=2)
   	              {	
		            if(SvgObj1.item(iCount).getAttribute("name")==char2)/*item(���)���������ӽڵ�,����ж���name���Ե�ֵ�Ƿ��Ҫ��ѯ��ֵ��ͬ*/
	                   {
                          SvgStyle1=SvgObj1.item(iCount).getStyle();  
                          SvgStyle1.setProperty('fill','none'); 
			              SvgStyle1.setProperty('stroke',color1);  
			            }
                   }
             }
	    }
}
</script>
</head>

<body onLoad="searchVal()" style="overflow:hidden;overflow-y:scroll;height:500px">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td  align="center">
<embed src='/IB/flowChart/flowChart.svg' width='800px' height='620px' align='top' name='id1' pluginspage='http://www.adobe.com/svg/viewer/install/'  type='image/svg+xml' border="1">
  <%
Map map=(Map)request.getAttribute("map");
%>
</td>
  </tr>
</table> 
<form name="searchvalue">
           <input type="hidden" id="prids" name="prids" value="<%= map.get("prids")%>"  size="12">
           <input type="hidden" id="colors" name="colors" value="<%= map.get("colors")%>"  size="12"> 
</form>
<form name="content"> 
<table width="800" cellSpacing=0 borderColorDark="#ffffff" cellPadding=0  borderColorLight="#c0c0c0" border=1 align="center" >
       <tr>
         <td height="24" colspan="3" align="left" valign="middle" >������ͼ�У�<span class="red"><strong>��ɫ����ǰ������</strong></span><span class="blue"><strong>��ɫ���������Ĳ���</strong></span><strong>��<span class="green">��ɫ������һ��Ҫ���еĲ���</span></strong>��<span class="flowChart_css">�������ͼ������ʾ����<a href="/IB/flowChart/SVGView.exe"><strong>�����˴�</strong></a>�����ز����</span></td>
       </tr>
       <tr>
         <td width="110" height="24" align="right" valign="middle" bgcolor="#EBEBEB">���鵱ǰ���֣�</td>
		 <td width="690" height="24" align="left" valign="middle">
		   <table width="600" border="0" cellpadding="0" cellspacing="0">
             <tr>
			 <td width="12%" align="center"> <input name="textfield" type="text" class="inputScore" value="<%= map.get("grade")%>" size="5">
         &nbsp;�� &nbsp;</td>
               <td width="5%" align="center"><img src="/IB/images/causion.gif" alt="��ע�⣺" width="24" height="24"></td>
               <td width="83%" valign="middle"><a href="javascript:show()" onFocus="this.blur()"><strong>����鿴��ϸ�������</strong></a></td>
             </tr>
         </table></td>
       </tr>
       <tr>
         <td height="24" colspan="2" align="right" valign="middle" bgcolor="#FFFFFF"><div style="display:none;width:780" id="detail"><%=map.get("remark")%></div></td>
       </tr>
  </table>
</form>
</body>
</html>

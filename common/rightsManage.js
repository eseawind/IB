var http_request = false;

//===========================================Ajax Start
function doAjax(url, fname)
{

	http_request = false;
	url.indexOf("?")=="-1" ? url+="?":"";
	url+= ("&temp="+ Math.random());
	
	//alert(url);
	//window.open(url);
		
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
		alert('�Բ����޷�����XMLhttp����');
		return false;
	}
	http_request.onreadystatechange = fname;
	http_request.open('GET', url, true);
	http_request.send(); 
}
//===========================================Ajax End

var nIndex;
//
function $()
{ 
	var elements = new Array();
	for (var i = 0; i < arguments.length; i++)
	{
	    var element = arguments[i]; 
		if (typeof element == 'string') 
			element = document.getElementById(element); 
			if (arguments.length == 1)
				return element;
		elements.push(element);
	}
	return elements; 
} 
if (!Array.prototype.push)
{
	Array.prototype.push = function()
	{
		var startLength = this.length;
		for (var i = 0; i < arguments.length; i++)
		this[startLength + i] = arguments[i];
		return this.length;
	}
}
//
/*function addRight()
{
	var eObj = $("rightsUnabled");
	
	//select û����ʱ
	if (eObj.options.length <=0)
		return false;
		
	//select�������δ��ѡ��
	var eIndex = eObj.selectedIndex
	if (eIndex <0)
	{
		eObj.options[0].selected = true;
		eIndex = 0;
	}
		
	var e1 = eObj.options[eIndex];

	//ɾ��ѡ����
	eObj.options.remove(eIndex)

	//ʹlistת�ƽ���
	try
	{
		if (eIndex >= eObj.options.length)
			eObj.options[eObj.options.length-1].selected = true;
		else
			eObj.options[eIndex].selected = true;
	}
	catch(e)
	{
	}
	
	//��ʼAjax
	//��������ύ "action=add&td1="+e1.text+"&td8="&e1.value
	//������ִ��
	//����������,addRow("Ȩ��һ","������")
	//if (doAjax("/IB/popedomManage.do?action=add&td8="+e1.value,doAddResponse)=="true")
	//{
	//	addRow(e1.text,e1.value)
	//}
	//Ajax����
	doAjax("/IB/popedomManage.do?action=add&RSNM="+e1.text+"&PRID="+e1.value,doResponse);
}

//�������
function addRow(TD1Text,TD8Text)
{
	var parTable = $("rightsEnabled");
	var thisTR = document.createElement("TR");
	thisTR.height = 20;
	thisTR.className = "ntr";
	//thisTR.attachEvent("onmouseover",function(){window.event.srcElement.parentElement.style.backgroundColor.toUpperCase=="#000000"? (return false) : window.event.srcElement.parentElement.style.backgroundColor="#C5C5C5"})
	//thisTR.attachEvent("onmouseout",function(){window.event.srcElement.parentElement.style.backgroundColor.toUpperCase=="#000000"? (return false) :window.event.srcElement.parentElement.style.backgroundColor="#F0F9FF"})

	thisTD1 = document.createElement("TD");
	thisTD1.innerHTML = TD1Text;
	//thisTD1.attachEvent("onclick",td1)
	//thisTD1.attachEvent("ondblclick",removeRight);
	
	thisTD2 = document.createElement("TD");
	thisTD2.attachEvent("onclick",tdOnClick)
	
	thisTD3 = document.createElement("TD");
	thisTD3.attachEvent("onclick",tdOnClick)
	
	thisTD4 = document.createElement("TD");
	thisTD4.attachEvent("onclick",tdOnClick)
	
	thisTD5 = document.createElement("TD");
	thisTD5.attachEvent("onclick",tdOnClick)
	
	thisTD6 = document.createElement("TD");
	thisTD6.innerHTML = "<input type=\"text\" onBlur=\"setTerm(this.value)\" maxlength=\"2\">";
	
	thisTD7 = document.createElement("TD");
	thisTD7.innerHTML = "<input type=\"text\" onBlur=\"setSum(this.value)\">";
	
	thisTD8 = document.createElement("TD");
	thisTD8.innerHTML = TD8Text;
	//thisTD1.attachEvent("ondblclick",removeRight);
	
	for (i=1; i <=8; i++)
	{
		eval("thisTD"+i+".noWrap = true;thisTD"+i+".className = \"td"+i+"\";thisTR.appendChild(thisTD" + i +");")
	}
    thisTR.attachEvent("onclick",chtr)
	parTable.children[0].appendChild(thisTR);
	$("container").scrollTop = $("rightsEnabled").clientHeight;
	parTable.children[0].children[parTable.children[0].children.length-1].children[0].click();
}
function chtr()
{
    nIndex = window.event.srcElement.parentElement.rowIndex;
    var nTrs = $("rightsEnabled").rows;
    for (i=0; i<nTrs.length; i++)
    {
        if (i == nIndex)
        {
            nTrs(i).className = "ntr_on";
            continue;
        }
        else
        {
            nTrs(i).className = "ntr";
        }
    }
}
*/

function tdOnClick()
{
	//alert("onclick")
	td = window.event.srcElement;
	switch (td.cellIndex)
	{
		case 1:
			AUID = "01_OPER";
			break;
		case 2:
			AUID = "02_CHCK";
			break;
		case 3:
			AUID = "03_GRNT";
			break;
		case 4:
			AUID = "04_AMGR";
			break;
		default:
	}
	PRID = window.event.srcElement.parentElement.children(7).innerText;
	//alert(PRID);
	//alert("/IB/popedomManage.do?action=set&cls="+td.cellIndex+"&rlid="+$("rlid").value +"&brno="+$("brno").value +"&AUID="+AUID+"&PRID="+PRID)
	doAjax("/IB/popedomManage.do?action=set&cls="+td.cellIndex+"&rlid="+$("rlid").value +"&brno="+$("brno").value +"&AUID="+AUID+"&PRID="+PRID, doResponse)
}
function setAddOn(tdcls,tdBoolean)
{
	tdBoolean ? (td.className = "td"+ (tdcls+1) + "_on") : (td.className = "td"+(tdcls+1));
}
/*
function removeRight()
{
	if (nIndex==null)
		return false;
	//alert(nIndex);
	var rTr = $("rightsEnabled").children[0];
	try
	{
		var newOptText = rTr.children[nIndex].children[0].innerText;
		var newOptValue = rTr.children[nIndex].children[7].innerText;
		rTr.removeChild(rTr.children[nIndex]);
		sIndex = nIndex;
		nIndex = null;
	}
	catch(e)
	{
	}
	doAjax("/IB/popedomManage.do?action=remove&rlid="+$("rlid").value +"&RSNM=" + newOptText + "&PRID=" + newOptValue, doResponse)
	//$("rightsUnabled").options.add(new Option("",""))
}

function addOn()
{
	try
	{
		$("rightsUnabled").options[$("rightsUnabled").options.length-1].selected = true;
		//alert(sIndex)
		if (sIndex<$("rightsEnabled").children[0].children.length)
		{
			$("rightsEnabled").children[0].children[sIndex].children[0].click();

		}else
		{
			$("rightsEnabled").children[0].children[$("rightsEnabled").children[0].children.length-1].children[0].click();
		}
		if (((sIndex+1) * 21)>357)
		{
			$("container").scrollTop = (((sIndex+1) * 21)-357);
		}else
		{
			$("container").scrollTop = 0;
		}
	}
	catch(e)
	{
	}
}
*/
//��������
function setTerm(termValue)
{
	termObj = window.event.srcElement
	PRID = termObj.parentElement.parentElement.lastChild.innerText
	//alert(PRID);
	doAjax("/IB/popedomManage.do?action=setRRTE&rlid="+$("rlid").value +"&brno="+$("brno").value +"&PRID="+PRID+"&RRTE=" + termValue, doResponse)
}
function setSum(sumValue)
{
	sumObj = window.event.srcElement
	PRID = sumObj.parentElement.parentElement.lastChild.innerText
	doAjax("/IB/popedomManage.do?action=setRRAM&rlid="+$("rlid").value +"&PRID="+PRID+"&RRAM=" + sumValue, doResponse)
}

/*window.onload=function()
{
	try
	{
		$("rightsEnabled").children[0].children[0].children[0].click();
	}
	catch(e)
	{
	}
}*/

function doResponse()
{
	//alert("OK");
	if (http_request.readyState == 4)
	{
		$("progress").style.display = "none";
		if(http_request.status == 200)
		{
			try
			{
				//alert(http_request.responseText);
				eval(http_request.responseText);
			}
			catch(e)
			{
			}
		}
    else
    {
      ctrlForm(false,form1,"0");
      alert("��ȡ���ݴ���������!");
    }
  }
  else
  {
		ctrlForm(true,form1,"0");
		$("progress").style.display = "block";
  }
}

function ctrlForm(a,f,e)
{
	var e = "0,1";
    es = e.split(",");
    for (i=0; i<es.length; i++)
    {
        f.elements[es[i]].disabled = a;
    }
}


function document.oncontextmenu() {event.returnValue = false;} //��������Ҽ�
function document.ondragstart() {event.returnValue = false;} //
function window.onhelp() {return false;} //����F1����
function document.onkeydown()
{
  if ((window.event.altKey) && ((window.event.keyCode==37) || (window.event.keyCode==39))) {
    //���� Alt+������� �� Alt+�������
    event.returnValue = false;
  }

  if (event.keyCode==8) {
    //�����˸�ɾ����
    if (event.srcElement.type != "text" && event.srcElement.type != "textarea" && event.srcElement.type != "password") {
      event.keyCode = 0;
      event.returnValue = false;
    }
  }

  if ((event.keyCode==116) || (event.ctrlKey && event.keyCode==82)) {
    //���� F5 ˢ�¼�  Ctrl+R
    event.keyCode = 0;
    event.returnValue = false;
  }

  if (event.keyCode == 122) {event.keyCode = 0; event.returnValue = false;} //����F11
  if (event.ctrlKey && event.keyCode == 78) event.returnValue = false; //����Ctrl+n
  if (event.shiftKey && event.keyCode == 121) event.returnValue = false; //����shift+F10
  if (window.event.srcElement.tagName == "A" && window.event.shiftKey)
    window.event.returnValue = false; //����shift���������¿�һ��ҳ
  if ((window.event.altKey) && (window.event.keyCode == 115)) {
    //����Alt+F4
    window.showModelessDialog("about:blank","","dialogWidth:1px;dialogheight:1px");
    return false;
  }
}

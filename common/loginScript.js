/*
 *Javascript �ĵ�
 *by Ф��
 */

//ȥ���ַ���ǰ��Ŀո�
String.prototype.trim = function()
{
  return this.replace(/(^\s*)|(\s*$)/g, "");
}
/*
 *��������ʾ������Ϣ
 *���룺msg{������Ϣ}
 */
function showErr(msg)
{
  var msgObj = document.getElementById("errMsg")
  if (msg == "" || msg == null || msg == "undefined")
  {
    msgObj.style.visibility = "hidden";
  }
  else
  {
    msgObj.innerHTML = "<nobr>" + msg + "</nobr>";
    msgObj.style.visibility = "visible";
  }
}
function init()
{
  //alert("��ʼ");
  if (window.location.search.substring(1))
  {
  	//alert("��ʱ?");
    showErr("��ʱ�˳��������µ�½��");
    return false;
  }
  //alert("û�г�ʱ!\n�ǣ���IE��");
  var agt = navigator.userAgent.toLowerCase();
  var isIE = false;
  if (agt.indexOf("msie")!= -1&&document.all)
  {
  	//alert("�ǰ�����"+agt+"\n\n������ҿ���IE�İ汾��");
    isIE = true;
    ver = parseFloat(agt.substring(agt.indexOf("msie")+4,agt.length));
  }
  //alert("�š����ҿ���");
  if (isIE)
  {
    if (ver < 6)
    {
    //alert("��ѽ���汾������");
      ctrlForm(true,form1,'0,1,2')
      showErr("ע�⣺����������汾���ͣ��޷�����ʹ��ϵͳ����������");
      return false;
    }
  }
  else
  {
  alert("�Ǻǡ�������IE���ʲô��");
    ctrlForm(true,form1,'0,1,2')
    showErr("����ʹ��IE�������������ʹ�ñ�ϵͳ");
    return false;
  }
  if (window.screen.width < 1000)
  {
  alert("��ѽ.�ֱ��ʲ���");
    showErr("����ʹ��1024 * 768 �ֱ����Ի�����Ч����");
  return false;
  }
}

///////////////////////////////////////////////////////////////ajax
/**
 *�½�һ��xmlhttp����
 *���������urlfeather{url����},functionname{���ʱ���õĺ���}
 *���أ�xmlhttp����
 */
var http_request = false;
function doQuery(urlfeather,functionname)
{
  var url = "login.do?" + urlfeather + "&temp=" + Math.random();
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
    showErr("�Բ����޷�����XMLhttp������鿴������")
    return false;
  }
  http_request.onreadystatechange = functionname;
  http_request.open('GET', url, true);
  http_request.send(); 
}


/**
 *���Ʊ��Ŀɶ�д
 *���� a {false:��д,true:ֻ��},f{Ҫ���Ƶı�}, e {����Ҫ���Ƶı���}
 *ctrlForm(true,form1,'0,1,2,3')
 */
function ctrlForm(a,f,e)
{
    es = e.split(",");
    for (i=0; i<es.length; i++)
    {
        f.elements[es[i]].disabled = a;
    }
}
function setSelect()
{
  //����״̬������select����
  if (http_request.readyState == 4)
  {
    //window.status = "";
    document.getElementById("rlid").options[0].text = "��ѡ���ɫ";
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
      //alert("��ȡ���ݴ���������!");
      showErr("��ȡ��ɫ���ݴ���������!");
    }
  }
  else
  {
    try
    {
      ctrlForm(true,form1,'2,3');         
      document.getElementById("rlid").options[document.getElementById("rlid").selectedIndex].text = "���ؿ�ѡ�";
      //window.status = "���ڴ��������У����Ժ�...";
    }
    catch (e)
    {
    }
  }
}

function setRole(optionArray,valueArray)
{
  var selObj = document.getElementById("rlid");
  /*
  var slen =selObj.length;
  for (i = 0; i <slen; i++)
  {
    selObj.options.remove(1);
  }
  */
  selObj.options.length = 1; //ɾ��ԭ��Options����ʼ��select
  
  //���¼����µ�Options
  if (optionArray.length = valueArray.length)
  {
    for(j=0; j<optionArray.length; j++)
    {
      selObj.options.add(new Option(optionArray[j], valueArray[j]));
    }
  }
}

//doLogin
function doLogin()
{
  usid = document.getElementById("usid").value.trim();
  pswd = document.getElementById("pswd").value.trim();
  if(usid=="")
  {
  showErr("�������û�����");
  document.getElementById("usid").focus();
  }else if(pswd == "")
  {
        showErr("���������롣");
       document.getElementById("pswd").focus();
  }
  else
  {
        return true;
  }
  return false;
}
function setLogin()
{
  showErr("");
  if (http_request.readyState == 4)
  {
    window.status = "";
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
      showErr("�Բ��𣬵�½ʧ�ܣ������ԣ�");
    }
  }
  else
  {
    try
    {        
      window.status = "���ڴ��������У����Ժ�...";
    }
    catch (e)
    {
    }
  }
}

function ischarkey(nkey) 

{
  if(!event.altKey && !event.ctrlKey && (nkey>=65 && nkey<=90 || 
  nkey>=48 && nkey<=57 || nkey>=96 && nkey<=105 || nkey==106 ||
  nkey==107 || nkey==109 || nkey==110 || nkey==8 || nkey==111 || 
  nkey>=186 && nkey<=192 || nkey>=219 && nkey<=222))
  {
    return true;
  }
  else
  {
    return false; 
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


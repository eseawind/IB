var http_request = false;
function rqstBull(id,title)
{
/*  var oTr = tblInfo.selected;//??????????????????
  if (oTr == null) { return false; }
  var flag = "0";
  var id = document.forms[0].elements[oTr.rowIndex + 1].value;
  var motif = oTr.cells[2].innerText;
  oTr = null;
*/
  var ids=id;

  var url = "/IB/announcement.do?sign=stuFind&id="+ids;
  http_request = false;
  if (window.XMLHttpRequest) {
    http_request = new XMLHttpRequest();
    if (http_request.overrideMimeType) {
      http_request.overrideMimeType('text/html');
    }
  } else if (window.ActiveXObject) {
    try {
      http_request = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {
      try {
        http_request = new ActiveXObject("Microsoft.XMLHTTP");
      } catch (e) {}
    }
  }

  if (!http_request) { return false; }
  document.getElementById("bullTitle").innerText = "������⣺"+title;//������⣻
  http_request.onreadystatechange = showBull;
  http_request.open('GET', url, true);
  http_request.send();
}

function showBull()
{ 
  if (http_request.readyState == 4) {
    if (http_request.status == 200) {
      try {
        document.getElementById("bullContent").innerHTML = http_request.responseText;//��������;
	  } catch (e) {}
    } else {
      document.getElementById("bullContent").innerHTML="<b><font color='#FF0000'>�Բ����޷���ȡ����صĹ�����Ϣ��</font></b>";
    }
  } else {
    try {
      document.getElementById("bullContent").innerHTML="��ȡ������Ϣ�С�";
    } catch (e) {}
  }
}


var NS4 = (document.layers);    // Which browser?
var IE4 = (document.all);
var win = window;    // window to search.
var n   = 0;


function getTabID(TabID, deleteID){
	     if(TabID == ''){
           return getTabID('0', deleteID);
		 }
	     newTabIDs = getTabIDs(deleteID);   
		 return newTabIDs.charAt(TabID-1);
}
function getTabIDBack(TabID, deleteID){
	if(TabID == ''){
           return '';
		 }
	     newTabIDs = getTabIDs(deleteID);
		 return newTabIDs.indexOf(TabID)+1;
}
function getTabIDs(deleteID)
{
	tatalIDs = "0123456";
	for (i=0; i<deleteID.length; i++)
	{
	    //alert("tatalIDs:" + tatalIDs + "\ndeleteID.charAt(i):"+deleteID.charAt(i))
		tatalIDs = tatalIDs.replace(deleteID.charAt(i),"")
	}
	return tatalIDs
}

function showDone(str)
{
	if (str=="" || str == null)
		return false;
	else
		document.write("<div id=\"showDone\">"+str+"</div>");
	setTimeout("document.getElementById('showDone').style.display = 'none'",10000);
}
function switch_tab(par)
{
    n = getTabIDBack(document.forms[0].tabID.value,par);
	//�״ν���ҳ���ʱ���ύ����
    if (n=="undefined"||n==""||isNaN(n))
    {
        document.forms[0].tabID.value = getTabID('1',par);
        document.forms[0].submit();
        return false;
    }
    if (!tab_btn.length)
    {
        document.all.tab_btn.className = "tab_active_btn";
        document.all.tab_left.className = "tab_active_left"
        document.all.tab_right.className = "tab_active_right";
        //document.all.item_list.className = "item_list_display";
    }
    else
    {
        for (i=0; i<tab_btn.length; i++)
        {
            if (i==(n-1))
            {
                tab_btn[i].className = "tab_active_btn";
                tab_left[i].className = "tab_active_left"
                tab_right[i].className = "tab_active_right";
                //item_list[i].className = "item_list_display";
                continue;
            }
            tab_btn[i].className = "tab_unactive_btn";
            tab_left[i].className = "tab_unactive_left";
            tab_right[i].className = "tab_unactive_right";
            //item_list[i].className = "item_list_hidden";
        }
    }

}

function set_value(n, par)
{
//alert("n = " +n);
    try
    {
		n = getTabID(n, par)
        if (n==document.forms[0].tabID.value)
        {
            return false;
        }
        document.forms[0].tabID.value = n;
		//document.forms[0].tabID2.value = m;
        document.forms[0].submit();
    } catch(e) {}
}



function showTab(par)
{
	tabID = getTabIDs(par);
	tabID = tabID.split("");
	//title = new Array("�յ���","����","�ݴ�","���޸�","������","����Ȩ","����Ч","ģ��");
	title = new Array("�յ���","����","�ݴ�","���޸�","������","����Ȩ","����Ч");
	try
	{
		tabString = "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"left\" valign=\"top\" class=\"tab_blank\">";
        tabString +="\t<tr>";
		for(i=0; i<tabID.length; i++)
		{
                tabString +="\t\t<td class=\"tab_unactive_left\" id=\"tab_left\"></td>";
                tabString +="\t\t<td class=\"tab_unactive_btn\" id=\"tab_btn\" onClick=\"set_value("+(i+1)+", '" + par + "')\"><nobr>"+title[tabID[i]]+"</nobr></td>"
                tabString +="\t\t<td class=\"tab_unactive_right\" id=\"tab_right\"></td>";
		}
		tabString +="\t\t<td style=\"height:20px;vertical-align:top;padding-left:25px;\">&nbsp;&nbsp;&nbsp;<img src=\"/IB/images/searchWord.gif\" width=\"80\" height=\"20\">&nbsp;&nbsp;<input type=\"botton\" onChange=\"n = 0;\" style=\"height:18px;vertical-align:top;\" id=\"string\">&nbsp;&nbsp;<input type=\"image\"  src=\"/IB/images/search.gif\" onclick=\"findInPage(document.getElementById('string').value);\"></td>";
		tabString +="\t</tr>";
        tabString +="</table>"
        document.write(tabString);
	}
	catch(e)
	{
	}
}


//��ҳ������ʾ"����"ѡ��
function showOperation(creatNewURL)
{
    try
    {
        if (creatNewURL == null)
        {
            creatNewURL =window.location.href;
        }
        optString = "";
        optString += "<table border=\"0\" align=\"right\" cellpadding=\"0\" cellspacing=\"0\" class=\"opertion\">";
        optString += "    <tr>";
        optString += "        <td align=\"right\"  style=\"height:18px;vertical-align:bottom;padding:0 0 0 0\"><a href=\"" + creatNewURL + "\" onClick=\"return openReplace(this.href)\"><img src=\"/IB/images/oprBtn_new.gif\" alt=\"�½�\" border=\"0\"></a><img src=\"/IB/images/oprBtn_del.gif\" alt=\"ɾ��\" style=\"cursor:hand;\" onclick=\"doDelete()\" width=\"60\" height=\"22\" hspace=\"0\" /><img src=\"/IB/images/oprBtn_selectAll.gif\" alt=\"ȫѡ\" style=\"cursor:hand;\" onclick=\"selectAll()\" width=\"60\" height=\"22\" hspace=\"0\" /></td>"
        optString += "    </tr>";
        optString += "</table>";
        document.write(optString);
    } catch(e) {}
}


//helen added�������½���
function showOperation_new(creatNewURL)
{
    try
    {
        if (creatNewURL == null)
        {
            creatNewURL =window.location.href;
        }
        optString = "";
        optString += "<table width=\"50\" border=\"0\" align=\"right\" cellpadding=\"0\" cellspacing=\"0\" class=\"opertion\">";
        optString += "    <tr>";
        optString += "        <td align=\"right\"><a href=\"" + creatNewURL + "\" onClick=\"return openReplace(this.href)\"><img src=\"/IB/images/oprBtn_new.gif\" alt=\"�½�\" width=\"60\" height=\"22\" border=\"0\" hspace=\"0\" ></a></td>"
		optString += "    </tr>";
        optString += "</table>";
        document.write(optString);
    } catch(e) {}
}



//�ڱ����б�����ķ��ذ�ť
function showReport(creatNewURL)
{
    try
    {
        if (creatNewURL == null)
        {
            creatNewURL =window.location.href;
        }
        optString = "";
        optString += "<table width=\"50\" border=\"0\" align=\"right\" cellpadding=\"0\" cellspacing=\"0\" class=\"opertion\">";
        optString += "    <tr>";
        optString += "        <td align=\"center\"><a href=\"" + creatNewURL + "\" onClick=\"return openReplace(this.href)\"><img src=\"/IB/images/return.gif\" alt=\"����\" width=\"110\" height=\"22\" border=\"0\" hspace=\"0\" ></a></td>"
        optString += "    </tr>";
        optString += "</table>";
        document.write(optString);
    } catch(e) {}
}

//��URL���鿴�������
function openReplace(oprtURL)
{
    window.location.replace(oprtURL);
    return false;
}

//ɾ��
function doDelete()
{
    var a = document.getElementsByName("id");
    var chked = false;
    for (i=0; i<a.length; i++)
    {
        if (a[i].checked)
        {
            chked = true;
            break;
        }
    }
    if (chked)
    {
        if ( confirm("��ȷ����Ҫɾ����ѡ����Ŀ��\n\n���\"ȷ��\"ȷ��ɾ��\n���\"ȡ��\"�رձ��Ի���"))
        {
            document.forms[1].submit();
        }
        else
        {
            return false;
        }
    }
    else
    {
        alert("������ѡ��һ����Ŀ")
        return false;
    }
}

//ȫѡ
var chk;
function selectAll()
{
    var a = document.getElementsByName("id");
    if (chk)
    {
        for (i=0;i<a.length;i++)
        {
            if(!a[i].disabled&&!a[i].readonly)
            	a[i].checked=false;
        }
        chk = false;
    }
    else
    {
        for (i=0;i<a.length;i++)
        {
            if(!a[i].disabled&&!a[i].readonly)
            	a[i].checked=true;
        }
        chk = true;
    }
}

function findInPage(str) {
  var txt, i, found;

  if (str == "")
    return false;

  // Find next occurance of the given string on the page, wrap around to the
  // start of the page if necessary.

  if (NS4) {

    // Look for match starting at the current point. If not found, rewind
    // back to the first match.

    if (!win.find(str))

      while(win.find(str, false, true))
        n++;
    else
      n++;

    // If not found in either direction, give message.

    if (n == 0)
      alert("û���ҵ������Ϣ��");
  }

  if (IE4) {
    txt = win.document.body.createTextRange();

    // Find the nth match from the top of the page.

    for (i = 0; i <= n && (found = txt.findText(str)) != false; i++) {
      txt.moveStart("character", 1);
      txt.moveEnd("textedit");
    }

    // If found, mark it and scroll it into view.

    if (found) {
      txt.moveStart("character", -1);
      txt.findText(str);
      txt.select();
      txt.scrollIntoView();
      n++;
    }

    // Otherwise, start over at the top of the page and find first match.

    else {
      if (n > 0) {
        n = 0;

        findInPage(str);
      }

      // Not found anywhere, give message.

      else
        alert("û���ҵ������Ϣ��");
    }
  }

  return false;
}

/*function document.oncontextmenu() {event.returnValue = false;} //��������Ҽ�
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

        */
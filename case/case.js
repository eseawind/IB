function switchpstp(operation,idname,id1,id2)
	{//��������pstp
		var operationType=operation;
		var objectIdName=idname;
		var s1=id1
		var s2=id2
		operationType=document.getElementById(operationType).value;
		switch(operationType)
		{
			case "0":
				$(s1).style.display="none";
				$(s2).style.display="none";
				$(objectIdName+"_r").dislable=true;
				$(objectIdName+"_b").dislable=true;
				break;
			case "1":
				$(s1).style.display="";
				$(s2).style.display="none";
				$(objectIdName+"_r").dislable=false;
				$(objectIdName+"_b").dislable=true;
				break;
			case "2":
				$(s1).style.display="";
				$(s2).style.display="none";
				$(objectIdName+"_r").dislable=false;
				$(objectIdName+"_b").dislable=true;
				break;
			case "3":
				$(s1).style.display="none";
				$(s2).style.display="";
				$(objectIdName+"_r").dislable=true;
				$(objectIdName+"_b").dislable=false;
				break;
		}
	}

	function switchcheckbox(chbox,showId)
	{//��ѡ��prid�������ж�checkbox
	    var checkedbox=chbox;
		var showIdName=showId;
		var divInn=showIdName.substr(0,4);
		if($(checkedbox).checked)
		{ 
			$(showIdName+"Checkbox").disabled=false;
		 }else{ 
			$(divInn).style.display="none";
			$(showIdName+"Checkbox").checked="";
			$(showIdName+"Checkbox").disabled=true;
	   }
	}

function cheinner(cha1,cha2,num)
{
//�����ǰ��ѡ��ѡ������Ӧ�Ĳ������ʾ����֮�����ĸ�ѡ��disabledΪfalse;
	 var str=cha2;
	 switch(num)
	   {
		case "0":	
		if(str=="lcop"){
			cheinnerL("LC0","lcop");		
			$("eladCheckbox").disabled=false;
			$("sgrgCheckbox").disabled=false;
			$("lccnCheckbox").disabled=false;
			break;
			} else{
			var str0=LC(str);
			var j=(str0.indexOf(str+","))/5;
			shoinn(j,str0);
			break;
			}
		case "3" :
		    var str3="ccrg,cctr,ccpd,ccpy,ccrt,cccl";
			var j=(str3.indexOf(str+","))/5;
			shoinn(j,str3);
			break;
		case "4":
		    var str4="orrg,irrg,orst,orcl,irrt,irpb,ircl";
			var j=(str4.indexOf(str+","))/5;//�ж��ǵ�ǰ�����е���һ���㣻
			j=parseInt(j);
			shoinn(j,str4);
			break;
	}

function shoinn(P,str)
{
	var J;
	var P1=P;
	var inn=new Array();
		 inn=str.split(",");
	var len=inn.length;
	if(cha1)
		{ //�����ѡ��ѡ  
			var a1=inn[P1];
			var a2=inn[P1+1];
			if(P1==0)
			{//����Ǵ˰����ĵ�һ������������Ҫ���
				$(a1).style.display="";
				$(a2+"Checkbox").disabled=false;
			}else{//������ǰһ�������ı�ѡ���Ƿ�ȫ����д
				var a0=inn[P1-1];
/*				if(checktitle(a0,a1)){
*/				$(a1).style.display="";
				$(a1+"Checkbox").checked=true;
				$(a1+"Checkbox").disabled=false;
				$(a2+"Checkbox").disabled=false;
/*				}
*/			}
		}
		else
		{//���û��ѡ,��˲��µı��ؼ�ֵΪ�գ����ĸ�ѡ��ҲΪ����ѡ��
			for(var i=len-1; i>P1;i--){
				var a1=inn[i-1];
				var a2=inn[i];
				var prid=a2+"_";
				$(a1).style.display="none";
				$(a2+"Checkbox").disabled=true;
				$(a2+"Checkbox").checked="";
				$(a2).style.display="none";
				cheAll(prid);
			}
			cheAll(inn[P1]+"_");
		}
	}
}

function LC(str)
{//�ж�������һ�������
	//lcop,elad,lcup,elup,eluk,lcuk,lccn,elcn,sgrg,sgtr,sgcl
	var ids=new Array();
	ids[0]="lcop,elad,lcup,elup,eluk,lcuk";  //����-��֤֪ͨ/�Ǽ�-�޸�-(�޸�֪ͨ-�ܾ�/�����޸�-�ܾ��޸�)
	ids[1]="lcop,sgrg,sgtr,sgcl";//����-��������Ǽ�-������-����
	ids[2]="lcop,lccn,elcn";   //����-��֤-��֤�Ǽ�;
	for(var i=0;i<3;i++){
		if(ids[i].indexOf(str)>0){
			   return ids[i];
			}
	}
}

/*function checktitle(prids,ids)
//����title��Ϊ��ѡ�û������������Ĳ�����
{
  var pridVal=prids+"_";
  var iObj = document.forms[0].elements;
  var len=iObj.length;
  for (var i=0;i<len;i++)
  {
	if(iObj[i].title.substr(0,5)==pridVal&&iObj[i].value.Trim()=="")
	 {
		$(ids+"Checkbox").checked=""; 
		alert("����д������һ�������к�ɫ�����");
		iObj[i].focus();
		return false
	   }
	}
	return true;
}*/   


 function  cheAll(prids){
 //��Ӧ���µı��ؼ�ֵΪ�գ�
	  var pridVal=prids;
	  var len=document.forms[0].elements.length;
      for (var i=0;i<len;i++){
	   if(document.forms[0].elements[i].name.substr(0,5)==pridVal)
	     {
			document.forms[0].elements[i].value="";   
		}	
      }   
  }   


function cheinnerL(cha1,cha2)
{
//�����ǰ��ѡ��ѡ������Ӧ�Ĳ������ʾ
	var prid=cha2+"_";
	if($(cha1).checked==true)
	{
		$(cha2).style.display="";
	}else{//������Ӧ�㲻����ʾ���Ҵ˲��µı��ؼ�ֵΪ�գ�
		$(cha2).style.display="none";
		cheAll(prid);
	}
}
//����

 function  cheAll(prids){
 //��Ӧ���µı��ؼ�ֵΪ�գ�
	  var pridVal=prids;
	  var len=document.forms[0].elements.length;
      for (var i=0;i<len;i++){
	   if(document.forms[0].elements[i].name.substr(0,5)==pridVal)
	     {
			document.forms[0].elements[i].value="";   
		}	
      }   
  }   

function fir(char)
{
//�����ĵ�һ����ѡ���Ƿ�ѡ��
   var char1=char;
   var  flag=$(char1).checked;
	if(flag)
	{
		return true;
	}else{
		return false;
	}
}

function cheLoa(a1,a2,a3)
{//��onLoadʱ��ȡ���ϴβ�����ѡ�е�checkbox������
	var char=new Array();
	var idName=new Array();
		onLoadCheck(a1,a2,a3);
		//char=checkType(Num);
		//idName=char[0].split(",");//��
/*		var charDiv;
		idName=$("LCHVAL").value;
		char=idName.split("@");
		alertt(char);
	var len=char.length-1;
	if(idName!=""&&idName!="underfined")
	{
		for(var numR=0;numR<len;numR++)
		{
			$(char[numR]).disabled="";
			$(char[numR]).checked="checked";
			charDiv=$(char[numR]).name.substr(0,4);
			$(charDiv).style.display="";//checkbox��Ӧ��div;
		}
	}
*/}

//������ʼ
var ch=new Array();
ch[0]=new Array();//����֤
ch[3]=new Array();//��Ʊ������
ch[4]=new Array();//���
ch[0][0]="lcop";
ch[0][1]="elad";
ch[0][2]="lcup";
ch[0][3]="elup";
ch[0][4]="eluk";
ch[0][5]="lcuk";
ch[0][6]="lccn";
ch[0][7]="elcn";
ch[0][8]="sgrg";
ch[0][9]="sgtr";
ch[0][10]="sgcl";

ch[3][0]="ccrg";
ch[3][1]="cctr";
ch[3][2]="ccpd";
ch[3][3]="ccpy";
ch[3][4]="ccrt";
ch[3][5]="cccl";

ch[4][0]="orrg";  
ch[4][1]="irrg";
ch[4][2]="orst";
ch[4][3]="orcl";
ch[4][4]="irrt";//��ѡ
ch[4][5]="irpb";//��ѡ
ch[4][6]="ircl";//��ѡ
var len0=ch[0].length;
var len3=ch[3].length;
var len4=ch[4].length;//ch[4].length

function checkType(Nu)
{
	switch(Nu)
	{
		case "0" :
		    chebox(len0,"0","LC");
			break;
		case "3" :
			chebox(len3,"3","CD");
			break;
		case "4" :
			chebox(len4,"4","RE");
			break;
	}
	//charId=$(idT).value;//�õ����β�����ѡ�е�checkbox��id����:RE0,RE1
	//charIdVAL=$("LCHVAL").value;//�õ����β�����ѡ�е�checkbox��value����:orrg@irrg
}

function onLoadCheck(num,tot,rs)
{ 
		var len=num;
		var tot1=tot;
		var rs1=rs;
		var charId=new String();
		var idT=rs1;
		var charDiv;
		$(idT).value="";
		$("LCHVAL").value="";
		for(var i=0;i<len;i++)
		{	
			var str=ch[tot1][i]+"Checkbox";
			if($(str).checked)
			{
				 $(idT).value+=(rs1+i+",");//RE0,RE1...
				 $("LCHVAL").value+=str+"@";//orrgCheckbox@orrgCheckbox
				 $(str).disabled="";
				 $(str).checked="checked";
				 charDiv=$(str).name.substr(0,4);
				 $(charDiv).style.display="";//checkbox��Ӧ��div;
				 if(i!=len-1)
				 {//����������һ����ѡ��������ڵ���һ����ѡ����Ϊ��ѡ��
					 $(ch[tot1][i+1]+"checkbox").disabled=false;
				 }else{
					break;
				 }
			}else{
				cheAll(ch[tot1][i]);//�����ѡ��ûѡ�����Ӧ��ı��ؼ�ֵȫΪ�գ�
			 }					 
		}
}




	
function chebox(num,tot,rs)
{ 
   if(checkGrade()){
		var len=num;
		var tot1=tot;
		var rs1=rs;
		var charId=new String();
		var idT=rs1+"H";
		$(idT).value="";
		$("LCHVAL").value="";
		for(var i=0;i<len;i++)
		{	
			var str=ch[tot1][i]+"Checkbox";
			if($(str).checked)
			{
				 $(idT).value+=(rs1+i+",");//RE0,RE1...
				 $("LCHVAL").value+=str+"@";//orrgCheckbox@orrgCheckbox
				 if(i!=len)
				 {//����������һ����ѡ��������ڵ���һ����ѡ����Ϊ��ѡ��
					 $(ch[tot1][i+1]+"checkbox").disabled=false;
				 }else{
					break;
				 } 
			}else{
				cheAll(ch[tot1][i]);//�����ѡ��ûѡ�����Ӧ��ı��ؼ�ֵȫΪ�գ�
			 }					 
		}
		cheId();
     	//return [$("LCH").value,$("LCHVAL").value];
		getAveValue($('grade').value,$('LCHVAL').value);
		document.forms[0].submit();
   }else{
     	//return [$("LCH").value,$("LCHVAL").value];
	    return false;
	   }
   
}
	
function addId(idC,idP)
{//�õ��Ǳ�ѡ��,������ֵ��id��;
	var currentId=idC;
	var idP0=idP;
	var addIds=new String();
	delId(idP0);//ɾ�����ذ�ť����ǰѡ�еķǱ�ѡ�
/*	if(!$(currentId).value=="")
	{   
*/		$("idPS").value+=idP0;
/*	}
*/}

function delId(dcah)
{//ɾ�����ذ�ť�У���ǰѡ�У����˴β���ûѡ�еķǱ�ѡ�
var char=$("idPS").value;
var regv=new RegExp(dcah,"g");
$("idPS").value=char.replace(regv,"");
}

function cheId()
{//onloadʱ���û�е���addId();��$("idPS").value=���ݿ��ֵ���������addId();��$("idPS").value+=�¼ӵ�id;
  var idS=new String();
 ����  idS=$("idM").value;
  ���� if($("idPS").value=="")//����ķǱ�ѡ��id����idPS
    �� {     
       �� $("idPS").value=idS;  //onloadʱ�����ϴ�ѡ�еķǱ�ѡ����ʾ������
       �� return idS;
    �� }
    else
      {
      ��  $("idM").value=$("idPS").value; 
����������return idS;����
       }
   }

		
		/**
�����бȽ�����
bigDate   ���ʱ��
smallDate С��ʱ��
number    �Ƚϵ�����
field     ������
message   ��Ҫ�������Ϣ


**/
function comperDate(bigDate,smallDate,number,field,message){

if(bigDate==null||bigDate=="")
   return true;

if(smallDate==null||smallDate=="")
   return true;

 if(number==null||number=="")
    number=0;

by=bigDate.substring(0,4);
bm=bigDate.substring(4,6);
bd=bigDate.substring(6,8);

sy=smallDate.substring(0,4);
sm=smallDate.substring(4,6);
sd=smallDate.substring(6,8);

var big=new Date(by,bm-1,bd);
var small=new Date(sy,sm-1,sd);

var days_diff=(big.valueOf()-small.valueOf())/86400000; 

if(days_diff<number){//������ʾӦ�����ʱ�����
alert(message);
document.getElementById(field).value='';
document.getElementById(field).focus();
}
}

/**
�Ƚϰ�������Ľ��
bigMoney   ��Ľ��
1          ���1
2          ���2
3          ���3
4          ���4
field     ������
message   ��Ҫ�������Ϣ

**/
function comperMoney(bigMoney,money1,money2,money3,money4,field,message){
if(money1==null||money1=="")
    money1=0;
	if(money2==null||money2=="")
    money2=0;
	if(money3==null||money3=="")
    money3;
	if(money4==null||money4=="")
    money4=0;

   var money=parseInt(money1)+parseInt(money2)+parseInt(money3)+parseInt(money4);

    //alert("bigMoney"+bigMoney);
    //alert("Money"+money);

	if(bigMoney<money){//������ʾӦ��С��Ǯ������
	alert(message);
    document.getElementById(field).value='';
    document.getElementById(field).focus();
	}
} 

/**
??????????????
**/
function getAveValue(number,prids)
{
var aveValue;//???
var weight="0";//???
var pridArray=new Array();//prid??
var pridArray=prids.substring(0,prids.length-1).split("@");
var length=pridArray.length;
//alert("number="+number);
//alert("prids="+prids);
//alert("pridArray="+pridArray[0].substring(0,4));

for(var i=0;i<length;i++){
weight=parseInt(getNum(pridArray[i].substring(0,4)))+parseInt(weight);
}

//alert("weight="+weight);

aveValue=parseInt(number)/parseInt(weight);
//alert("aveValue="+aveValue);

document.getElementById("aveValue").value=aveValue;
return document.getElementById("aveValue").value;
}

/**
??
**/
function getNum(prid){
var prids="lcop_elad_ebrg_ibrg_ocrg_icrg_orrg_irrg";
//???prid
if (prid == null || prid=="") {
            return 0;
        }
        if (prids.indexOf(prid) != -1) {
            return 6;
        }
        return 1;
}


function checkGrade()
{
  var grade1 = document.getElementById("grade").value.Trim();
  var detai1 = document.getElementById("detai").value.Trim();
  if(detai1=="")
  {
	  alert("����д����˵����");
	  document.getElementById("detai").focus();
  }else if(grade1 == "")
  {
		   alert("����д����������");
		   document.getElementById("grade").focus();
  }
  else
  {
            return true;      
}
  return false;
}

function addDot(the){
if(the.value!=null&&(the.value).indexOf('.')==-1&&the.value!='')
  {the.value=the.value+'.0'}
}


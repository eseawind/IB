function checkType(hiddenobject,objectId)
{//�õ�checkbox������,�Լ�����¼��ҳ��ѡ����ĩѡ�е�id;   
	var hiddenobjectname=hiddenobject;
	var objectSource=objectId;
	var checkboxId=document.getElementsByTagName("input");
	var loopLength=checkboxId.length;
	for(num=0;num<loopLength;num++)
	  { 
		   if((checkboxId[num].type=="checkbox")&&(checkboxId[num].checked))
				{
					document.getElementById(hiddenobjectname).value+=(objectSource+num+",");
				}
	  }
}  

function displayIdResult(showId)
{
//����¼��ҳ���и�ѡ��ѡ�е�״̬,�õ����ҳ������Ӧ�����ʾ������;
	var showIdResult=showId;//¼��ҳ����checkbox��ѡ��״̬;
	var idName=new Array();
		idName=showIdResult.split(",")
	var len=idName.length-1;
	for(numR=0;numR<len;numR++)
		  { 
			var idObject=idName[numR];
			alert(idObject);
			document.getElementById(idObject).style.display="";
		  }
}


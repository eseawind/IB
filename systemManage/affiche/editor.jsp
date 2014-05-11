<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<!--�༭������Ϣ-->
<!DOCTYPE html>
<html>
<head>
<link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="/IB/resources/font-awesome-4.0.3/css/font-awesome.min.css">
<script language="javascript" type="text/javascript" src="/IB/common/list.js"></script>
<script src="/IB/resources/vendor/jquery/jquery-2.1.1.min.js"></script>
    <script src="/IB/resources/vendor/tinymce/tinymce-4.0.26.min.js"></script>


<script>
$(function() {
    tinymce.init({selector:'textarea',language:'zh_CN',
        plugins: [
        "advlist autolink autosave link image lists charmap preview hr anchor pagebreak spellchecker",
        "searchreplace wordcount visualblocks visualchars code insertdatetime media nonbreaking",
        "table contextmenu directionality emoticons template textcolor paste"],
        toolbar: "undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | table | fontsizeselect forecolor backcolor"

    });
});

function setAdd(){
    var url = document.forms[0].action;
    var iObj = document.forms[0].elements;
    if(iObj[0].value=="")
    {
        alert("�����빫�����!");
        iObj[0].focus();
        return false;
    }
    document.forms[0].action=url+'?sign=add';
    document.forms[0].submit();
}
</script>
</head>
<body>
<html:form method="post" action="announcement.do"  onsubmit="doExecute()">
    <table width="100%" height="100%" border="0" align="center"  cellpadding="0" cellspacing="0">
        <tr>
            <td class="innerTable_top_left"></td>
            <td class="innerTable_top_x"></td>
            <td class="innerTable_top_right"></td>
        </tr>
        <tr>
            <td class="innerTable_left_y"></td>
            <td align="center" class="innerTable_main">
                <div id="innerTable_div">
                    <table width="90%" cellSpacing=0 borderColorDark="#ffffff" cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">


                        <tr>
                            <td>
                                <input type="text" name="title" id="title" class="form-control" placeholder="�������" autofocus="autofocus"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="17" valign="middle">
                                <textarea  id="content" name="content" rows="15" class="form-control" placeholder="�������ݲ��ܳ���1000�ֽ�(�൱��500������)">
                                </textarea>
                            </td>
                        </tr>
                    </table>

                    <div class="footer">
                        <html:hidden property="id"/>
                        <%
                            //System.out.println("----"+request.getParameter("sign"));

                            if(request.getParameter("sign")!=null&&request.getParameter("sign").equals("add")){
                        %>
                        <button class="btn btn-primary" onclick="setAdd();return false">
                            <i class="fa fa-plus fa-2x"></i>����
                        </button>
                        <%}else{%>
                        <input type="image" name="btn"  src="/IB/images/modifyaff.gif"  onclick="setUpdate();return false">
                        <%}%>
                        <button class="btn btn-primary" onclick="openReplace('/IB/announcement.do?sign=teacher');return false">
                            <i class="fa fa-level-up fa-2x"></i>����
                        </button>
                    </div>
                </div>
            </td>
            <td class="innerTable_right_y"></td>
        </tr>
        <tr>
            <td class="innerTable_bottom_left"></td>
            <td class="innerTable_bottom_x"></td>
            <td class="innerTable_bottom_right"></td>
        </tr>
    </table>
    <!--�ڱ����-->
</html:form>

</body>

</html>


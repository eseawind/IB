<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GBK"%>

<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName" /></title>
<link href="/IB/common/default.css" rel="stylesheet" type="text/css">
<link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
<script language="javascript" type="text/javascript" 	src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript">
function init()
{
    $("sType").checked || !$("bType").checked ? switchNewUserType(1):switchNewUserType(2)
}

function switchNewUserType(n)
{
    switch (n)
    {
        case 2:
            $("singleUser").style.display = "none";
            $("singleNo").style.display = "none";
            $("batchUser").style.display = "";
            $("batchNo").style.display = "";
            $("usnm").disabled = true;
            $("ustl").disabled = true;
            $("stus").disabled = false;
            $("pnct").disabled = false;
            break
        default:
            $("singleUser").style.display = "";
            $("singleNo").style.display = "";
            $("batchUser").style.display = "none";
            $("batchNo").style.display = "none";
            $("usnm").disabled = false;
            $("ustl").disabled = false;
            $("stus").disabled = true;
            $("pnct").disabled = true;
        }
}
</script>
</head>

<body onLoad="init()">
<div class="container">
    <form class="form-horizontal" role="form" action="/IB/userManageNew.do" onsubmit="checkForm(this)" method="post">
        <div class="form-group">
            <label for="usnm" class="col-sm-2 control-label">�û���</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="usnm" id="usnm" placeholder="�û���" required="required">
            </div>
        </div>
        <div class="form-group">
            <label for="ustl" class="col-sm-2 control-label">�绰����</label>
            <div class="col-sm-10">
                <input type="tel" class="form-control" name="ustl" id="ustl" placeholder="�绰����">
            </div>
        </div>
        <div class="form-group">
            <label for="stus" class="col-sm-2 control-label">��ʼ�û����</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="stus" id="stus" placeholder="��ʼ�û����">
            </div>
        </div>
        <div class="form-group">
            <label for="pnct" class="col-sm-2 control-label">�û���</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" name="pnct" id="pnct" placeholder="�û���">
            </div>
        </div>
        <div class="form-group">
            <label for="rncd" class="col-sm-2 control-label">�Ƿ�����</label>
            <div class="col-sm-10">
                <select name="rncd" id="rncd">
                    <option value="Y">YES</option>
                    <option value="N">NO</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="ugid" class="col-sm-2 control-label">�༶</label>
            <div class="col-sm-10">
                <select property="ugid" id="ugid">
                    <%out.println(request.getAttribute("OPTION_UGID"));%>
                </select>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button  class="btn btn-primary">���</button>
                <button  class="btn btn-primary" onclick="JavaScript:document.location='/IB/userManage.do?prid=USMT';return false">����</button>
            </div>
        </div>
    </form>
</div>


</body>
</html:html>

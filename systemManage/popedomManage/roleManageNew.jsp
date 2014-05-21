<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ page contentType="text/html; charset=GB2312" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName"/></title>
<link href="/IB/common/default.css" rel="stylesheet" type="text/css">
<link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
<script language="javascript" type="text/javascript" src="/IB/common/default.js"></script>
</head>

<body>
<div class="container col-sm-4">
    <form class="form-horizontal" role="form" action="/IB/roleNew.do" onsubmit="checkForm(this)"   method="post">
        <div class="form-group">
            <label for="rlnm" class="col-sm-2 control-label">��ɫ����</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="rlnm" id="rlnm" placeholder="��ɫ����" required="required">
            </div>
        </div>
        <div class="form-group">
            <label for="rlds" class="col-sm-2 control-label">��ע</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="rlds" id="rlds" placeholder="��ע">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button  class="btn btn-primary">���</button>
                <button  class="btn btn-primary" onclick="JavaScript:document.location='/IB/roleManage.do';return false">����</button>
            </div>
        </div>
    </form>
</div>

</body>
</html>

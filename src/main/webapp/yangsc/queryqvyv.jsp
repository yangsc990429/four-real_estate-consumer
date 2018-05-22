<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/5/22
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<input value="新增" onclick="adduser()"/>
<script>
    function  adduser() {
        location.href="<%=request.getContextPath()%>/yangsc/addQvyv.jsp";
    }

</script>
</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="stu" class="com.xiezilailai.example.model.stuInfo"></jsp:useBean>
<jsp:setProperty name="stu" property="*"></jsp:setProperty>
<jsp:useBean id="stuSer" class="com.xiezilailai.example.services.stuInfoService"></jsp:useBean>
<%
    out.print(stu.getRemark());
    out.print(stu.getNickname());
    out.print(stu.getId());
    if (stuSer.updateStu(stu)) {
        out.print("success");
    } else {
        out.print("fail");
    }
%>

</body>
</html>
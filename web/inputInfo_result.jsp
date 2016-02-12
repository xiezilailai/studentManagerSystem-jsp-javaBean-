<%--
  Created by IntelliJ IDEA.
  User: 蝎子莱莱123
  Date: 2016/2/10
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="stuInfo" class="com.xiezilailai.example.model.stuInfo"></jsp:useBean>
<jsp:setProperty name="stuInfo" property="*"></jsp:setProperty>
<jsp:useBean id="stuInfoService" class="com.xiezilailai.example.services.stuInfoService"></jsp:useBean>
<%

//    out.println(stuInfo.getNickname());
//    out.println(stuInfo.getSubjects());
//    out.println(stuInfo.getHobbies());
    if(stuInfoService.addStu(stuInfo))
        out.print("success");
    else
        out.print("false");

%>
</body>
</html>

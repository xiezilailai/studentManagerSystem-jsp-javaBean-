<%@ page import="com.xiezilailai.example.model.stuInfo" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<jsp:useBean id="stuSer" class="com.xiezilailai.example.services.stuInfoService"></jsp:useBean>
<%
int id=Integer.parseInt(request.getParameter("id"));

    if(stuSer.deleteStu(id)){
        out.print("success");
    }else{
        out.print("fail");
    }

%>
</body>
</html>
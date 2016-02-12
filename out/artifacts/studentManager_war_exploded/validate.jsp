<%@ page import="com.xiezilailai.example.services.userservice" %>
<%@ page import="com.xiezilailai.example.conn" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>


<jsp:useBean id="user" class="com.xiezilailai.example.model.UserTable"></jsp:useBean>
<jsp:useBean id="userservice" class="com.xiezilailai.example.services.userservice"></jsp:useBean>
<jsp:setProperty name="user" property="*"/>

<%

    if (userservice.validUser(user)) {

        session.setAttribute("user",user);
%>

<jsp:forward page="main.jsp"></jsp:forward>
<%
} else {%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
    }

%>
</body>
</html>
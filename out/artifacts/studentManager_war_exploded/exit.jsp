<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
exit
<%
session.removeAttribute("user");
%>
<jsp:forward page="index.jsp"></jsp:forward>
</body>
</html>
<!doctype html>
<html>
<head>
<title>Hello JSP</title>
<link rel="stylesheet"href="style.css">
</head>
<body>
<%

out.println(i);
%>
<br>
<%="Welcome To Jsp"%>
<%! int i=10; %>
</body>
</html>
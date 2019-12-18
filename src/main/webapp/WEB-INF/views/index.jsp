
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->

	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
<form action="saveNote" method="post">
Id: <input type=text name=" Note id" /><br />
Title: <input type=text name="title" /><br/>
Content: <input type=text name="title" /><br/>
Status: <input type=text name="title" /><br/>

<input type=submit value="Submit" /><br/>
</form>

<table border=3>
<tr>
<th> Note Id</th>
<th>Title</th>
<th>Content</th>
<th>Status</th>

</tr>

<c:forEach items="${nlist}" var="n">
<tr>
<td>${n.noteId}</td>
<td>${n.noteTitle}</td>
<td>${n.noteContent}</td>
<td>${n.noteStatus}</td>
<td>${n.createdAt}</td>


</tr>
</c:forEach>

</table>
</body>
</html>
</body>
</html>
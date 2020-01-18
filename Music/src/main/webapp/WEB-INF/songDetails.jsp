<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${song.title}

<form action="edit.do" >
UPDATE SONG <input type = "hidden" value = "${song.id}"  name = "songid">
<button type ="submit" > Update</button>
 </form>
 <form action="delete.do" >
DELETE SONG <input type = "hidden" value = "${song.id}"  name = "songid">
<button type ="submit" > Delete</button>
</form>
 <form action="edit.do" >
CREATE SONG <input type = "hidden" value = "${song.id}"  name = "songid">
<button type ="submit" > Create</button>
</form>
</body>
</html>
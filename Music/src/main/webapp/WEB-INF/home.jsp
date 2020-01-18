<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Song</title>
</head>
<body>
<ol>
	<c:forEach var = "song" items="${songs}" >
	<li value="${song.id }"><a href ="songDetails.do?songid=${song.id}"  >${song.title} : ${song.artist}</a></li>
	</c:forEach>
	</ol>
</body>
</html>
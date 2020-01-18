<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Song</title>
</head>
<body class ="bg-info">
<%-- <ol>
	<c:forEach var = "song" items="${songs}" >
	<li value="${song.id }"><a href ="songDetails.do?songid=${song.id}"  >${song.title} : ${song.artist}</a></li>
	</c:forEach>
	</ol> --%>
<div class = "list-group bg-info">
	<h2 class = "text-center bg-info"> <em>Title : Artist</em></h2>
	<c:forEach var = "song" items="${songs}" >
	
	<a href ="songDetails.do?songid=${song.id}" class="list-group-item list-group-item-success text-center"  ><%-- <span class="badge"> ${song.id}</span> --%>${song.title} : ${song.artist}
	<img src="${song.albumArt}" class="img-thumbnail" alt="Album Art" width = "50" height="50" ></a>
	</c:forEach>
	

	</div>
	<form action="edit.do" class ="text-center bg-info">
 <input type = "hidden" value = "0" name = "songid">
<button type ="submit" > Create New Song</button>
</form>
</body>
</html>
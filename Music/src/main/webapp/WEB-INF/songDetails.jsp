<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<meta charset="UTF-8">
<title>${song.title}</title>
</head>
<body>
<div class="container">
  <h2><img src="${song.albumArt}" class="img-thumbnail" alt="Album Art" width = "50" height="50" ></h2>
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Title</th>
        <th>Artist</th>
        <th>Genre</th>
        <th>Album</th>
        <th>Rating</th>
        <th>Length</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${song.title}</td>
        <td>${song.artist }</td>
        <td>${song.genre}</td>
        <td>${song.album}</td>
        <td>${song.rating}</td>
        <td>${song.length}</td>
      </tr>
    </tbody>
  </table>
</div>
<div class = "col-xs-12 text-center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/GNCd_ERZvZM" align="middle"
frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
allowfullscreen></iframe>>
</div>
<div class="form-group text-center">
<form action="edit.do" >
 <input type = "hidden" value = "${song.id}"  name = "songid" >
<button type ="submit" class="text-center btn btn-dark" > Update</button>
 </form>
 </div>
<div class="form-group text-center">
 <form action="delete.do" class="text-center" >
<input type = "hidden" value = "${song.id}"  name = "songid">
<button type ="submit" class="text-center btn btn-dark"> Delete</button>
</form>
</div>
<div class="form-group text-center">
 <form action="home.do" class="text-center" >
<input type = "hidden" value = "${song.id}"  name = "songid">
<button type ="submit" class="text-center btn btn-dark"> Home</button>
</form>
</div>
</body>
</html>
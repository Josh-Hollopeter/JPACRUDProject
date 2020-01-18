<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<meta charset="UTF-8">
<title>${song.title} </title>
</head>
<body class = "view overlay bg-info">
<div class="form-group text-center bg-info">
<form action="updateCreate.do" method="POST">
        Title: <input type="text" name="title" value ="${song.title}" required  maxlength="255" class="form-control text-center bg-dark text-light"> <br> 
        Length: <input type="number" name="length" step =".01" MIN="0" MAX = "1000" value="${song.length }" required class="form-control text-center bg-dark text-light" > <br> 
        Album Art: <input type="text" name="albumArt" value="${song.albumArt }" required class="form-control text-center bg-dark text-light" > <br> 
        Genre: <input type="text" value="${song.genre}" name="genre" required class="form-control text-center bg-dark text-light"> <br>
        Rating: <input type="number" name="rating" step=".5" MIN="0" MAX="5" value= "${song.rating}" required class="form-control text-center bg-dark text-light"> <br>
        Album: <input type="text" name="album"  value = "${song.album}" required class="form-control text-center bg-dark text-light"> <br>
        Artist: <input type="text" name="artist"  value = "${song.artist}" required class="form-control text-center bg-dark text-light"> <br>
        <input type="hidden" value="${song.id }" name="id">
       <input type = "Submit" value ="Submit" class="text-center btn btn-dark">
       
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
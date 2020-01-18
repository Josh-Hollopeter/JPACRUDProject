<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<meta charset="UTF-8">
<title>${song.title} </title>
</head>
<body>
<div class="form-group">
<form action="updateCreate.do" method="POST">
        Title: <input type="text" name="title" value ="${song.title}" required  maxlength="255" class="form-control"> <br> 
        Length: <input type="number" name="length" step =".01" MIN="0" MAX = "1000" value="${song.length }" required > <br> 
        Album Art: <input type="text" name="albumArt" value="${song.albumArt }" required > <br> 
        Genre: <input type="text" value="${song.genre}" name="genre" required > <br>
        Rating: <input type="number" name="rating" step=".5" MIN="0" MAX="5" value= "${song.rating}" required > <br>
        Album: <input type="text" name="album"  value = "${song.album}" required> <br>
        Artist: <input type="text" name="artist"  value = "${song.artist}" required> <br>
        <input type="hidden" value="${song.id }" name="id">
       <input type = "Submit" value ="submit">
       
</form>
</div>
</body>
</html>
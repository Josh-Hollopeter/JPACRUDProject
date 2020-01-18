<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<meta charset="UTF-8">
<title>${song.title}</title>
</head>
<body>
${song.title}
<div class="form-group">
<form action="edit.do" >
UPDATE SONG <input type = "hidden" value = "${song.id}"  name = "songid">
<button type ="submit" > Update</button>
 </form>
</div>
 <form action="delete.do" >
DELETE SONG <input type = "hidden" value = "${song.id}"  name = "songid">
<button type ="submit" > Delete</button>
</form>

</body>
</html>
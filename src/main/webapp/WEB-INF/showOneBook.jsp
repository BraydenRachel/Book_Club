<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ${book.title} </title>
<link rel="stylesheet" href="/css/showOneBook_page.css">
</head>
<body>
  <div id="mainContainer">
    <div class="row1">
      <div class="column1">
        <h1>${book.title}</h1>

      </div>
      <div class="column2">
        <a href="/logout">logout</a>
        <a href="/profile">back to shelves</a>
      </div>
   	</div>
    <div class="row2">
  				<c:if test='${book.user.id == loggedInUserId }'>
   					<h4>You read ${book.title} by ${book.author}</h4>
				</c:if>
  				<c:if test='${book.user.id != loggedInUserId }'>
   					<h4> ${book.user.name} read ${book.title} by ${book.author}</h4>
				</c:if>
   	</div>
    <div class="border"></div>
    <div class="row3">
      <p>${book.myThoughts}</p>
    </div>
    <div class="border"></div>
      				<c:if test='${book.user.id == loggedInUserId }'>
					    <button class="btn"><a href="/book/edit/${book.id}">edit</a></button>
						</c:if>
	</div>



</body>
</html>
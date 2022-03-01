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
<title>Insert title here</title>
<link rel="stylesheet" href="/css/profile_page.css">
</head>
<body>
  <div id="mainContainer">
    <div class="row1">
      <div class="col1">
        <h1>Welcome ${ user.name }</h1>
        <p>Books from everyone's shelves</p>
      </div>
      <div class="col2">
        <a href="/logout">logout</a>
        <a href="/book/add">+ Add to my shelf</a>
      </div>
    </div>
    <div class="row2">
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Author Name</th>
            <th>Posted By</th>
          </tr>
        </thead>
        <tbody>
                        <c:forEach items = '${ getAllBooksBook }' var = 'book'>
                           	<tr>
                                <td>${book.id}</td>
                                <td> <a href="book/view/${book.id}">${book.title}</a> </td>
                                <td>${book.author}</td>
                                <td>${book.user.name}</td>
								
                       	    </tr>
          
						 </c:forEach>
        </tbody>


      </table>
    </div>


  </div>
</body>
</html>
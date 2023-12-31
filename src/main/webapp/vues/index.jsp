<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <title>List of Books</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<style>
        
        .black-icon {
            color: #000000;
}
    </style>    
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/BOOKS">HOME</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
    <li class="nav-item active">
        <a class="nav-link" href="/BOOKS">Books</a>
    </li>
      <li class="nav-item">
      <a class="nav-link" href="/categories">Categories</a>
      </li>
      
    </ul>
  </div>
</nav>
    <h1>List of Books</h1>

  <div class="form-group mb-2">
    <form class="form-inline" method="get" action="/search">
        <label for="searchInput" class="sr-only">Search</label>
        <input type="text" class="form-control" id="searchInput" name="mc">
        <button type="submit" class="btn btn-primary mb-2">Search</button>
        <a href="/books/ajouter"class="btn btn-success float-right">
			<i class="fas fa-plus black-icon"></i>
		</a>
    </form>
</div>
	
	


    <div class="container">
        <div class="row">
            <c:forEach items="${productList}" var="product">
                <div class="col-md-4 mb-3">
                    <div class="card">
                        <h5 class="card-header">${product.nom}</h5>
                        <div class="card-body">
                        	<h5 class="btn btn-dark">${product.categorie.nom}</h5>
                            <h5 class="card-title">ID: ${product.id}</h5>
                            <p class="card-text">Price: ${product.prix}</p>
                            <p class="card-text">Quantity: ${product.quantite}</p>
                            <a href="#" class="btn btn-primary">Buy Now</a>
                        	
							  <input type="hidden" name="productId" value="${product.id}" />
							  <button type="submit"class="btn btn-danger float-right"name="action"value="supprimer">
							  <a href="delete/${product.id}">
	                            <i class="fas fa-trash black-icon"></i>
							  </a>
                        	  </button>
	                          <button type="submit"class="btn btn-warning float-right"name="action"value="edit">
	                            <a href="BOOKS/${product.id}">
	                            <i class="fas fa-edit black-icon"></i>
	                            </a>
                        	  </button>
							
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
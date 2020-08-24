
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!Doctype html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
body {
  margin: 0;
  padding: 0;
  background-color:#17a2b8;
  height: 100vh;
}
#login .container #login-row #login-column #login-box {
  margin-top: 120px;
  max-width: 600px;
  height: 320px;
  border: 1px solid #9C9C9C;
  background-color: #EAEAEA;
}
#login .container #login-row #login-column #login-box #login-form {
  padding: 20px;
}

</style>
<title>Stock Management App</title>
</head>
<body>
    <div id="login">
        <h3 class="text-center text-white pt-5">Stock Management App</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                          <form:form method="POST" modelAttribute="stock" action="/home" name="stock">                    
                           <h3 class="text-center text-info">Stock Inventory Form</h3>
                            <div class="form-group">
                                <label for="stockName" class="text-info">Stock Name:</label><br>
                                <input type="text" name="stockName" id=stockName class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="purchasePrice" class="text-info">Purchase Price:</label><br>
                                <input type="text" name="purchasePrice" id="purchasePrice" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="purchasePrice" class="text-info">Purchase Date:</label><br>
                                <input type="date" name="purchaseDate" id="purchaseDate" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="quantity" class="text-info">Quantity:</label><br>
                                <input type="text" name="quantity" id="quantity" class="form-control">
                                
                                <input class="btn btn-info btn-md" type="submit" value="<c:out value="${stock.id != null ? 'Update' : 'Register' }" />"
 								>&nbsp;&nbsp; <a href="/list">Stock List</a>&nbsp;
            					<c:if test="${stock.id ne null}"><b>|</b>&nbsp;<a href="/register">Registration</a></c:if>
                                
                            </div>                          
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
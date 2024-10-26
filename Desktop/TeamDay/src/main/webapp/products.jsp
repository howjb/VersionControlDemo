<link rel="stylesheet" href="styles/main.css">
<link rel="stylesheet" href="styles/products.css">

<nav>
        <a href="index.html">Home</a>
        <a href="about.xhtml">About</a>
        <a href="Team.html">Team</a>
        <a href="contact.html">Contact</a>
        <a href="ProductServlet?action=list">Manage Products</a>
</nav>
<div>
    <h1>Product Maintenance Application</h1>
</div>

<h2>Product List</h2>

<table border="1">
    <tr>
        <th>Code</th>
        <th>Description</th>
        <th>Price</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.code}</td>
            <td>${product.description}</td>
            <td>${product.priceCurrencyFormat}</td>
            <td>
                <a href="ProductServlet?action=edit&code=${product.code}">Edit</a>
                &nbsp;|&nbsp;
                <a href="ProductServlet?action=delete&code=${product.code}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>

<!-- Add Product button -->
<a href="ProductServlet?action=add" class="add-product-btn">Add Product</a>
 <jsp:include page="footer/footer.jsp" />

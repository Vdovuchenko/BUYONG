<!DOCTYPE html>
<html>
<head>
    <title>BUYONG</title>
</head>
<body>
<h1>BUYONG</h1>
<hr>
<#if user.email??>
    <h3>User name: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Log out">
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Administrator panel</a>
    </#if>
<#else>
    <h3><a href="/login">Log in</a></h3>
</#if>
<hr>

<h4>Goods from all over the country</h4>
<form action="/" method="get">
    Search of title: <input type="text" name="title">
    <input type="submit" value="Search">
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} $ | <a href="/product/${product.id}">Details...</a></p>
    </div>
<#else>
    <h3>There are no goods</h3>
</#list>
<#if user.email??>
    <hr>
    <h3>Create new goods</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Title: <input type="text" name="title"/><br><br>
        Description: <input type="text" name="description"/><br><br>
        Price: <input type="number" name="price"/><br><br>
        City: <input type="text" name="city"/><br><br>
        First photo: <input type="file" name="file1"/><br><br>
        Second photo: <input type="file" name="file2"/><br><br>
        Third photo: <input type="file" name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Add goods"/>
    </form>
</#if>

</body>
</html>
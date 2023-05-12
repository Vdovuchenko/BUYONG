<!DOCTYPE html>
<html>
<head>
    <title>BUYONG</title>
</head>
<body>
<h1>BUYONG</h1>
<h3>Details about user ${user.name}</h3>
<b>Phone number: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>
<h4>Details about the user's products ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} $ | <a href="/product/${product.id}">Details</a></p>
    </div>
    <#else>
    <h3>There are no goods</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>
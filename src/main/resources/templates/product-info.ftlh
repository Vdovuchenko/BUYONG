<!DOCTYPE html>
<html>
<head>
    <title>BUYONG</title>
</head>
<body>
<h1>BUYONG</h1><hr>
<h4>Details of goods</h4>
<#list images as img>
    <img src="/images/${img.id}" height="100"/><br><br>
</#list>
<b>Title: </b>${product.title}<br>
<b>Description: </b>${product.description}<br>
<b>Price: </b>${product.price}<br>
<b>City: </b>${product.city}<br>
<b>Author: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
</body>
</html>
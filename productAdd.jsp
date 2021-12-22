<%--
  Created by IntelliJ IDEA.
  User: ZS
  Date: 2020/12/9
  Time: 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>产品添加页面</title>
    <base href="http://localhost:8080/pdm/">
</head>
<body bgcolor="#d3d3d3">
<table align="center">
    <tr bgcolor="#7fffd4">
        <td><a href="index.jsp"><font size="6">首页</font></a></td>
        <td><a href="productSearch.jsp"><font size="6">产品查询</font></a></td>
        <td><font size="6">产品添加</font></td>
        <td><a href="partAdd.jsp"><font size="6">零件添加</font></a></td>
        <td><a href="BOMTable.jsp"><font size="6">BOM表查询</font></a></td>
    </tr>
</table>
<%--    <img src="/pdm/TJ.jpg" align="center">--%>
<form action="productAddServlet" method="post">
    产品&emsp;ID：<input type="text" name="productID" placeholder="not null(unique)"><br>
    产品型号：<input type="text" name="productModelNum" placeholder="not null(unique)"><br>
    产品名称：<input type="text" name="productName" placeholder="not null(unique)"><br>
    产品厂家：<input type="text" name="productFactory"><br>
    产品产地：<input type="text" name="productPlace"><br>
    产品价格：<input type="text" name="productPrice"><br>
    <input type="submit" value="添加">
</form>

</body>
</html>

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
    <title>零件添加页面</title>
    <base href="http://localhost:8080/pdm/">
</head>
<body bgcolor="#d3d3d3">
<table align="center">
    <tr bgcolor="#7fffd4">
        <td><a href="index.jsp"><font size="6">首页</font></a></td>
        <td><a href="productSearch.jsp"><font size="6">产品查询</font></a></td>
        <td><a href="productAdd.jsp"><font size="6">产品添加</font></a></td>
        <td><font size="6">零件添加</font></td>
        <td><a href="BOMTable.jsp"><font size="6">BOM表查询</font></a></td>
    </tr>
</table>
<%--    <img src="/pdm/TJ.jpg" align="center">--%>
<form action="partAddServlet" method="post">
    零件&emsp;ID：<input type="text" name="partID" placeholder="not null(unique)"><br>
    零件名称：<input type="text" name="partName"  placeholder="not null(unique)"><br>
    产品型号：<input type="text" name="partModelNum"  placeholder="not null"><br>
    零件厂家：<input type="text" name="partFactory"><br>
    零件产地：<input type="text" name="partPlace"><br>
    零件价格：<input type="text" name="partPrice"><br>
<%--    BOM表下标：<input type="text" name="BOMIndex" placeholder="not null"><br>--%>
    <input type="submit" value="添加">
</form>

</body>
</html>

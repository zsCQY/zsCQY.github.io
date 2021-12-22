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
    <title>产品查询页面</title>
    <base href="http://localhost:8080/pdm/">
</head>
<body bgcolor="#d3d3d3">
<table align="center">
    <tr bgcolor="#7fffd4">
        <td><a href="index.jsp"><font size="6">首页</font></a></td>
        <td><font size="6">产品查询</font></td>
        <td><a href="productAdd.jsp"><font size="6">产品添加</font></a></td>
        <td><a href="partAdd.jsp"><font size="6">零件添加</font></a></td>
        <td><a href="BOMTable.jsp"><font size="6">BOM表查询</font></a></td>
    </tr>
</table>
<%--    <img src="/webDesign_war_exploded/TJ.jpg" align="center">--%>
<form action="searchServlet" method="post">
    <select name="productQueryBy">
        <option value="1">产品名称</option>
        <option value="2">产品价格(默认小于等于)</option>
        <option value="3">产品型号</option>
        <option value="4">产品ID</option>
        <option value="5">产品产地</option>
        <option value="6">产品工厂</option>
        <option value="7">查询全部</option>
    </select>：<input type="text" name="productQueryValue"><br>
    <input type="submit" value="查询产品">
</form>

<form action="searchServlet2" method="post">
    <select name="partQueryBy">
        <option value="1">零件名称</option>
        <option value="2">零件价格(默认小于等于)</option>
        <option value="3">产品型号</option>
        <option value="4">零件ID</option>
        <option value="5">零件产地</option>
        <option value="6">零件工厂</option>
        <option value="7">查询全部</option>
    </select>：<input type="text" name="partQueryValue"><br>
    <input type="submit" value="查询零件">
</form>

<%--<%=request.getAttribute("00") == null?"默认信息":request.getAttribute("00").getClass()%>--%>

<%--<%for (int i = 0; i < 10; i++){%>--%>
<%--aaa--%>
<%--<%}%>--%>

</body>
</html>

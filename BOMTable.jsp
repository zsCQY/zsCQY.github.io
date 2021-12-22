<%--
  Created by IntelliJ IDEA.
  User: ZS
  Date: 2020/12/9
  Time: 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.zs.pojo.Part_new"%>
<%@ page import="java.util.List" %>
<%@ page import="com.zs.dao.ProductDao" %>
<%@ page import="com.zs.dao.impl.ProductDaoImpl" %>
<%@ page import="com.zs.pojo.Product" %>

<html>
<head>
    <title>BOM表查询页面</title>
    <%--    <base href="http://localhost:8080/pdm/">--%>
    <%
        String basePath = request.getScheme()
                + "://"
                + request.getServerName()
                + ":"
                + request.getServerPort()
                + request.getContextPath()
                + "/";
    %>

    <base href="<%=basePath%>">

    <style type="text/css">
        #all{
            width: 800px;
            /*height: 450px;*/
            border: 3px solid green;
            position:absolute;
            top:40%;
            left:50%;
            margin:-225px 0 0 -400px;
            background: #8ab68a;
            /*background: #999999;*/
        }
    </style>

    <script type="text/javascript" src="jquery-1.7.2.min.js"></script>
    <script type="text/javascript">
        // alert("lalala");
        $(function(){
            $('.tree li:has(ul)').addClass('parent_li').find(' > span').attr('title', 'Collapse this branch');
            $('.tree li.parent_li > span').on('click', function (e) {
                var child= $(this).parent('li.parent_li').find(' > ul > li');
                if (child.is(":visible")) {
                    child.hide('fast');
                    $(this).attr('title', 'Expand this branch').find(' > i').addClass('icon-plus-sign').removeClass('icon-minus-sign');
                } else {
                    child.show('fast');
                    $(this).attr('title', 'Collapse this branch').find(' > i').addClass('icon-minus-sign').removeClass('icon-plus-sign');
                }
                e.stopPropagation();
            });
        });
    </script>
</head>
<body bgcolor="#d3d3d3">
<table align="center">
    <tr bgcolor="#7fffd4">
        <td><a href="index.jsp"><font size="6">首页</font></a></td>
        <td><a href="productSearch.jsp"><font size="6">产品查询</font></a></td>
        <td><a href="productAdd.jsp"><font size="6">产品添加</font></a></td>
        <td><a href="partAdd.jsp"><font size="6">零件添加</font></a></td>
        <td><font size="6">BOM表查询</font></td>
    </tr>
</table>
<%--    <img src="/webDesign_war_exploded/TJ.jpg" align="center">--%>
<div id="all" class="tree" style=color:#005580 align="">
<%
    ProductDao productDao = new ProductDaoImpl();
    List<Part_new> partNew;
//    partNew = productDao.queryPartsByAll("00");
    List<Product> product;
    product = productDao.queryProductsByAll("00");
    for (int i = 0; i<product.size(); i++){
        String product_modelNum = product.get(i).getProduct_modelNum();
        String product_name = product.get(i).getProduct_name();
%>
    <ul>
        <li>
            <span><i class="icon-plus-sign"></i><u><p><%=product_name%></p></u></span>
            <ul font-size:0>

<%
        partNew = productDao.queryPartsByModelNum(product_modelNum);
        for (int j = 0; j < partNew.size(); j++){
            String part_id = partNew.get(j).getPart_id();
%>              <li hidden="hidden">
                <span><u><p><%=part_id%></p></u></span>
                <ul>

                    <li hidden="hidden">
                        <span><i class="icon-leaf"></i>零件&nbsp;&nbsp;ID：<%=partNew.get(j).getPart_id()%></span> <a href="">回到首页</a>
                    </li>
                    <li hidden="hidden">
                        <span><i class="icon-leaf"></i>零件名称：<%=partNew.get(j).getPart_name()%></span> <a href="">回到首页</a>
                    </li>
                    <li hidden="hidden">
                        <span><i class="icon-leaf"></i>零件工厂：<%=partNew.get(j).getPart_factory()%></span> <a href="">回到首页</a>
                    </li>
                    <li hidden="hidden">
                        <span><i class="icon-leaf"></i>零件产地：<%=partNew.get(j).getPart_place()%></span> <a href="">回到首页</a>
                    </li>
                    <li hidden="hidden">
                        <span><i class="icon-leaf"></i>零件价格：<%=partNew.get(j).getPart_price()%>元</span> <a href="">回到首页</a>
                    </li>
<%--                    <li hidden="hidden">--%>
<%--                        <span><i class="icon-leaf"></i>三级目录(本次未用到，后续可以拓展使用)</span> <a href="">回到首页</a>--%>
<%--                    </li>--%>
<%--                    <li hidden="hidden">--%>
<%--                        <span><i class="icon-leaf"></i>三级目录(本次未用到，后续可以拓展使用)</span> <a href="">回到首页</a>--%>
<%--                    </li>--%>
<%--                    <li hidden="hidden">--%>
<%--                        <span><i class="icon-leaf"></i>三级目录(本次未用到，后续可以拓展使用)</span> <a href="">回到首页</a>--%>
<%--                    </li>--%>
                </ul>
                </li>
<%
        }
%>

            </ul>
        </li>
    </ul>
<%
    }
%>
</div>

</body>
</html>

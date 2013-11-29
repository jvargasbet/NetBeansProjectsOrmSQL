<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title> Locales </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@include file="/public/header.jsp" %>
    </head>
    <body>

        <%@include file="/public/menuGeneral.jsp" %>

        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="/public/menuAdm.jsp" %>
                <div class="span9">
                    <div class="row">
                        <a class=" btn btn-primary pull-right" href="<%=contextPath%>/adm/campo/new"> Nuevo </a>

                    </div>
                    <table class="table table-striped table-hover"> 
                        <h1 style="alignment-adjust:central "> Campos deportivos </h1>
                        <tr>
                            <th>descripcion</th>
                            <th>tipo </th>
                            <th>local </th>
                            <th>estado </th>
                            <th></th>

                        </tr>
                        <c:forEach var="item" items="${campos}">
                            <tr>
                                <td> <c:out value="${item.descripcion}"/></td>
                                <td> <c:out value="${item.tipo}"/></td>
                                <td> <c:out value="${item.local.descripcion}"/></td>
                                <td>
                                    <c:if test="${item.estado == 1}">
                                        <label class="label label-success"><c:out value="Activo"/> </label>
                                    </c:if>
                                    <c:if test="${item.estado != 1}">
                                        <label class="label label-warning"><c:out value="Inactivo"/> </label>
                                    </c:if>
                                </td>
                                <td> 
                                    <div class="btn-group">
                                        <a class="dropdown-toggle" data-toggle="dropdown" role="menu"  href="#">
                                            <i class="icon-cog"></i>
                                        </a>
                                        <ul class="dropdown-menu pull-right">
                                            <li>
                                                <a href="<%=contextPath%>/adm/campo/update/${item.id}">Editar<a>
                                                        </li>
                                                        <li>
                                                            <a href="<%=contextPath%>/adm/campo/delete/${item.id}">Eliminar<a>
                                                                    </li>
                                                                    </ul>
                                                                    </div>
                                                                    </td>
                                                                    </tr>
                                                                </c:forEach>

                                                                </table>
                                                                </div>
                                                                </div>
                                                                </div>

                                                                <%@include file="/public/footer.jsp" %>
                                                                </body>
                                                                </html>





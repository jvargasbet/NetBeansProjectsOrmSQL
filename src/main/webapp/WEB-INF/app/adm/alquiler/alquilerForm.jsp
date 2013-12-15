<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                <%@include file="/public/menuSocio.jsp" %>
                <div class="span9">
                    <div class="row">
                        <h1> Solicitar alquiler </h1>
                    </div>
                    <form id="formingreso" action="<%=contextPath%>/socio/alquiler/save" method="post">
                        <input type ="hidden" value="${alquiler.id}" name="id">
                        <div class="control-group">
                            <label class="control-label">Local</label>
                            <div class="controls">
                                <select type="text" name="campo.id">
                                    <c:forEach var="item" items="${campos}">
                                        <c:choose>
                                            <c:when test='${alquiler.campo != null && item.id == alquiler.campo.id}'>
                                                <option value="${item.id}" selected>${item.descripcion}</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="${item.id}">${item.descripcion}</option>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Hora Inicio</label>
                            <div class="controls">
                                <input type="time" name="horaInicio" value="${alquiler.horaInicio}">
                            </div>
                        </div>  
                        <div class="control-group">
                            <label class="control-label">Hora Finaliza</label>
                            <div class="controls">
                                <input type="time" name="horaFin" value="${alquiler.horaFin}">
                            </div>
                        </div>  
                        <div class="control-group">
                            <label class="control-label">Servicios</label>
                            <div class="controls">
                                <input type="text" name="servicios" value="${alquiler.servicios}">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Día Nº</label>
                            <div class="controls">
                                <input type="text" name="dia" value="${alquiler.dia}">
                            </div>
                        </div>

                        <div class="control-group">
                            <div class="controls">
                                <a class="btn" href="<%=contextPath%>/socio/alquiler">Cancelar</a>
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </div>
                        </div>F

                    </form>
                </div>
            </div>
        </div>

        <%@include file="/public/footer.jsp" %>
        <script><!-- /escribir java script-->
            $(function() {
                $('#formingreso').validate({
                    rules: {
                        horaInicio: {required: true},
                        horaFin: {required: true},
                        servicios: {required: true},
                        dia: {required:true, number: true}
                    },
                    highlight: function(element) {
                        $(element).closest('.control-group').removeClass('success').addClass('error');
                    },
                    success: function(element) {
                        element
                                .text('OK!').addClass('valid')
                                .closest('.control-group').removeClass('error').addClass('success');
                    }
                });
            });
        </script>

    </body>
</html>





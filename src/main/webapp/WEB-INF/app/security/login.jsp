<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title> Login </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <%@include file="/public/header.jsp" %>
    </head>
    <body>
        <%@include file="/public/menuGeneral.jsp" %>

        <div class="container-fluid">
            <div class="row-fluid">
                <form id="formingreso" class="form-signin-heading" action="<%=contextPath%>/j_spring_security_check" method="post">
                    <div class="container-fluid">
                        <div class="row-fluid">
                            <div class="span10">
                                <img alt="AD in Tennis" src="public/app/img/campo4.jpg" />
                                <h2>De nuevo por aqui?</h2>
                                Si esta es la primera vez en línea, usted necesita crear una cuenta para empezar!
                                <span class="create-acc"><a href="public/registrar.jsp">Crear una cuenta</a></span>
                            </div>
                            <div class="span2">
                                <h2 class="form-signin-heading">Ingresar</h2>
                                <input type="text" class="input-block-level" placeholder="Email address" name="j_username">
                                <input type="password" class="input-block-level" placeholder="Password"  name="j_password">
                                <button class="btn btn-large btn-primary" type="submit">Ingresar</button>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
        </div>
        <%@include file="/public/footer.jsp" %>
        <script><!-- /escribir java script-->
            $(function() {
                $('#formingreso').validate({
                    rules: {
                        j_username: {required: true},
                        j_password: {required: true}
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






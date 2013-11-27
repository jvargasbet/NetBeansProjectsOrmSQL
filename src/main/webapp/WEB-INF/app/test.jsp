<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SPRING MVC</title>
        <%@include file="/public/header.jsp" %>
    </head>
    <body>
        <%@include file="/public/mnuWeb.jsp" %>
        <div class="bs-docs-example">
            <div id="myCarousel" class="carousel slide">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="active item">
                        <img src="public/app/img/campo1.jpg" alt="">
                        <div class="carousel-caption">
                            <h4>Campeonatos</h4>
                            <p>Seis veces campeón de la Inmaculada Concepción de secundaria - Entrenado en el club Tecsup</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="public/app/img/campo2.jpg" alt="">
                        <div class="carousel-caption">
                            <h4>Tenis</h4>
                            <p>Se un jugador de tenis y Representante a la Nacional bajo nuestra modalidad de capacitación continua</p>
                        </div>
                    </div>
                    <div class="item">

                        <img src="public/app/img/campo3.jpg" alt="">
                        <div class="carousel-caption">
                            <h4>Ayudanos a ayudar a otros</h4>
                            <p>Ayudamos a los barrios mas pobres con las gananacias</p>
                        </div>
                    </div>
                </div>
                <!-- Carousel nav -->
                <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
            </div>
        </div>

        <%@include file="/public/footer.jsp" %>
        <script src="public/bootstrap/js/bootstrap-carousel.js"></script>


    </body>
</html>

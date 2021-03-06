<%-- 
    Document   : index-usuario
    Author     : Oso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String usuario = "";
    int idusuario ;
    HttpSession sesionusu = request.getSession();
    if(sesionusu.getAttribute("usuario")==null){
    %>

    <jsp:forward page="index.html">
        <jsp:param name="Error" value="Es obligatorio identificarse" />
    </jsp:forward>

    <%
    }else{
        usuario = (String)sesionusu.getAttribute("usuario");
    }
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="assets/images/shortcut-icon.png">
    <link rel="stylesheet" href="css/masterstyle.css">
    <title>Bear Careful</title>
</head>
<body>
    <nav class="normal">
        <div class="izquierda">
            <div class="navegacionIzquierda">
                <a href="index-usuario.jsp">
                    <h1>Bear Careful</h1>
                </a>
            </div>
            <div class="navegacionIzquierda">
                <a href="index-usuario.jsp">
                    <img src="assets/images/icon.png" width="100rem" height="100rem">
                </a>
            </div>
        </div>
        <div class="derecha">
            <div class="navegacionDerecha">
                <a class= "boton-secundario" href="estadistica-usuario.jsp">Estadísticas</a>
            </div>
            <div class="navegacionDerecha">
                <a class= "boton-secundario" href="historico-usuario.jsp">Histórico</a>
            </div>
            <div class="navegacionDerecha">
                <a class= "boton-secundario" href="perfil-usuario.jsp">Perfil</a>
            </div>
            <div class="navegacionDerecha">
                <a class= "boton-principal" href="realizarTest.jsp">Realizar Test</a>
            </div>
        </div>
    </nav>
    <nav class="responsive">
        <div class="izquierda">
            <div class="navegacionIzquierda">
                <a href="index-usuario.jsp">
                    <h1>&nbspBear Careful</h1>
                </a>
            </div>
            <div class="navegacionIzquierda">
                <a href="index-usuario.jsp">
                    <img src="assets/images/icon.png" width="100rem" height="100rem">
                </a>
            </div>
        </div>
        <div class="derecha">
            <label for="menu">
                <img src="assets/images/menu.svg" height="101rem">
            </label>
        </div>
    </nav>
    <input id="menu" type="checkbox">
    <div class="desplegable">
        <br>
        <a href="realizarTest.jsp" class="a-nav">Realizar Test</a>
        <br>
        <a href="perfil-usuario.jsp" class="a-nav">Perfil</a>
        <br>
        <a href="historico-usuario.jsp" class="a-nav">Histórico</a>
        <br>
        <a href="estadistica-usuario.jsp" class="a-nav" >Estadísticas</a>
        <br>
    </div>
<!-- Aqui termina barra de navegacion -->

    <div class="contenido">
        <h1>Bienvenido <% out.println(usuario); %></h1>
        <h2>¿Qué es Bearcareful?</h2>
        <p>Bearcareful es una herramienta digital dirigada a los adolescentes de la región norteamericana, con la cual buscamos 
            explicar a la población sobre el impacto de la depresión en los jóvenes mediante una plataforma web, además de 
            ayudar a los pacientes de esta enfermedad monitoreando la evolucion de la enfermedad mediante Test.
        </p>
        <h3>¿Qué es la depresión?</h3>
        <p>La depresión es un trastorno mental frecuente, que se caracteriza por la presencia de tristeza, pérdida de interés o placer, sentimientos de culpa o falta de autoestima, trastornos del sueño o del apetito, sensación de cansancio y falta de concentración.</p>
        <h3>¿Cómo nos afecta?</h3>
        <p>Nos afecta física y mentalmente en nuestro modo de sentir y de pensar. La depresión nos puede provocar deseos de alejarnos de nuestra familia, amigos, trabajo, y escuela. Puede además causarnos ansiedad, pérdida del sueño, del apetito, y falta de interés o placer en realizar diferentes actividades.
        </p>
        <p>La depresión puede llegar a hacerse crónica o recurrente y dificultar sensiblemente el desempeño en el trabajo o la escuela y la capacidad para afrontar la vida diaria. En su forma más grave, puede conducir al suicidio. Si es leve, se puede tratar sin necesidad de medicamentos, pero cuando tiene carácter moderado o grave se pueden necesitar medicamentos y psicoterapia profesional.
        La depresión es un trastorno que se puede diagnosticar de forma fiable y que puede ser tratado por no especialistas en el ámbito de la atención primaria.
        </p>
    </div>
    <div class="contenido">
        <p><a href="estadistica-usuario.jsp" class="boton-principal">Consultar Estadísticas</a></p>
        <br>
        <p><a href="realizarTest.jsp" class="boton-principal">Realizar Test</a></p>
        <img class="imagen" src="assets/images/icon.png">
    </div>

</body>
<footer>
    <p><a href="index.html">Bear Tual</a></p>
    <p><a class="equipo" href="Equipo.html">Equipo</a></p>
    <p><a href="CerrarSesion">Cerrar Sesion</a></p>
    <p> © Derechos reservados</p>
</footer>
</html>
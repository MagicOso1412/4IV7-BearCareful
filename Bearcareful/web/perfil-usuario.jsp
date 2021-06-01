<%-- 
    Document   : perfil-usuario
    Created on : 24/05/2021, 09:30:54 PM
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
    <script src="js/registro.js"></script>
    <title>Bear Careful</title>
</head>
<body>
    <nav class="normal">
        <div class="izquierda">
            <div class="navegacionIzquierda">
                <a href="index.html">
                    <h1>Bear Careful</h1>
                </a>
            </div>
            <div class="navegacionIzquierda">
                <a href="index.html">
                    <img src="assets/images/icon.png" width="100rem" height="100rem">
                </a>
            </div>
        </div>
        <div class="derecha">
            <div class="navegacionDerecha">
                <a class= "boton-secundario" href="predicciones.html">Estadísticas</a>
            </div>
            <div class="navegacionDerecha">
                <a class= "boton-secundario" href="historico.html">Histórico</a>
            </div>
            <div class="navegacionDerecha">
                <a class= "boton-secundario" href="perfil.html">Perfil</a>
            </div>
            <div class="navegacionDerecha">
                <a class= "boton-principal" href="realizarTest.html">Realizar Test</a>
            </div>
        </div>
    </nav>
    <nav class="responsive">
        <div class="izquierda">
            <div class="navegacionIzquierda">
                <a href="index.html">
                    <h1>&nbspBear Careful</h1>
                </a>
            </div>
            <div class="navegacionIzquierda">
                <a href="index.html">
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
        <a href="realizarTest.html" class="a-nav">Realizar Test</a>
        <br>
        <a href="perfil.html" class="a-nav">Perfil</a>
        <br>
        <a href="historico.html" class="a-nav">Histórico</a>
        <br>
        <a href="predicciones.html" class="a-nav" >Estadísticas</a>
        <br>
    </div>
<!-- Aqui termina barra de navegacion -->

    <br class="br-responsive">
    <br class="br-responsive">
    <div class="cuenta">
        <h3>Perfil</h3>
        <form name="registro" action="iniciarSesion.html">
            Correo electrónico:
            <br class="br-responsive">
            <br class="br-responsive">
            <input id="inputCorreo" type="email" name="inputCorreo" placeholder="Correo">
            <br><br>
            Contraseña:
            <br class="br-responsive">
            <br class="br-responsive">
            <input id="inputContraseña" type="text" name="inputContraseña" placeholder="Contraseña">
            <br><br>
            Nombre de Usuario:
            <br class="br-responsive">
            <br class="br-responsive">
            <input id="inputUsuario" type="text" name="inputUsuario" placeholder="Nombre de Usuario">
            <br>
            <br>
            Nacionalidad:
            <br class="br-responsive">
            <br class="br-responsive"> 
            <select id="inputNacionalidad" name="inputNacionalidad">
                <option value="mexico" selected>México</option>
                <option value="eu">Estados Unidos</option>
                <option value="canada">Canadá</option>
            </select>
            <br><br>
            <input onclick="validar(event)" type="submit" class="boton-submit" value="Actualizar Datos">
            <br><br>
        </form>
    </div>
</body>
<footer>
    <p><a href="index.html">Bear Tual</a></p>
    <p><a href="CerrarSesion">Cerrar Sesion</a></p>
    <p><a href="Equipo.html">Equipo</a></p>
    <p>Derechos reservados</p>
</footer>
</html>
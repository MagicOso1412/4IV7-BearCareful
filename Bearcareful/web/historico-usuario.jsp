<%@page import="Modelo.Test"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String usuario = "";
    int idusuario =0;
    HttpSession sesionusu = request.getSession();
    if(sesionusu.getAttribute("usuario")==null){
    %>

    <jsp:forward page="index.html">
        <jsp:param name="Error" value="Es obligatorio identificarse" />
    </jsp:forward>

    <%
    }else{
        usuario = (String)sesionusu.getAttribute("usuario");
        idusuario=(Integer)sesionusu.getAttribute("id");
    }
    %>
<%@page import="Control.AccionesTest"%>
<%@page import="java.util.List"%>
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

    <div class="contenido" name="historico">
        <h3>Historico de <% out.println(usuario); %></h3>
        
        
        <table>
            <table >
            <thead>
                <tr>
                    <th>Fecha</th>
                    <th>Puntaje</th>
                    <th>Escala</th>
                   
                   
                </tr>
               
            </thead>
            <tbody>
           <% 
                List<Test> lista = AccionesTest.buscarAllTestByID(idusuario);
                
                for(Test e : lista){

                    %>
                    <tr>
                        <td> <%=e.getDate()%> </td>
                        <td> <%=e.getScore_test()%> </td>
                        <td> <%=AccionesTest.AsignarEscalaById(e.getId_escala())%></td>
                        
                        
                    </tr>
                    <%

                }

                %>
                
                
            </tbody>
        </table>
        
        
    </div>
    
</body>
<footer>
    <p><a href="index.html">Bear Tual</a></p>
    <p><a class="equipo" href="Equipo.html">Equipo</a></p>
    <p><a href="CerrarSesion">Cerrar Sesion</a></p>
    <p> © Derechos reservados</p>
</footer>
</html>
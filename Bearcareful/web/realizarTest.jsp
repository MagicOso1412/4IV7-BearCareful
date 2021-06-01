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
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="assets/images/shortcut-icon.png">
    <link rel="stylesheet" href="css/masterstyle.css">
    <script src="js/realizarTest.js"></script>
    <title>Bear Careful</title>
</head>
<body>
    <form class="test" name="test" action="guardarTest">
        <div id="fullPage">
            <div class="section s1">
                <div class="contenedorPregunta-1">
                    <div class="textoTest">
                        <h1>¿Tienes depresión?</h1>
                        En este cuestionario aparecen varios grupos de afirmaciones.
                        <br><br>
                        Por favor, lea con atención cada una.
                        <br><br>
                        A continuación, señale cuál de las afirmaciones de
                        cada grupo describe mejor cómo se ha sentido durante esta última semana,
                        incluido en el día de hoy.
                        <br><br>
                        Asegúrese de leer todas las afirmaciones dentro de cada grupo antes de efectuar la elección.
                    </div>
                </div>
            </div>
            <div class="section s2">
                <div class="contenedorPregunta-2">
                    <div class="pregunta">
                        <h2>1 - Tristeza </h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input1" value="0">
                            </div> 
                            <div class="respuesta">
                                No me siento triste
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input1" value="1">
                            </div>
                            <div class="respuesta">
                                Me siento triste gran parte del tiempo
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input1" value="2">
                            </div>
                            <div class="respuesta">
                                Me siento triste todo el tiempo
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input1" value="3">
                            </div>
                            <div class="respuesta">
                                Me siento tan triste o soy tan infeliz que no puedo soportarlo
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s3">
                <div class="contenedorPregunta-1">
                    <div class="pregunta">
                        <h2>2 - Pesimismo</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input2" value="0">
                            </div> 
                            <div class="respuesta">
                                No estoy desalentado respecto del mi futuro
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input2" value="1">
                            </div>
                            <div class="respuesta">
                                Me siento más desalentado respecto de mi futuro que lo que solía estarlo
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input2" value="2">
                            </div>
                            <div class="respuesta">
                                No espero que las cosas funcionen para mi
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input2" value="3">
                            </div>
                            <div class="respuesta">
                                Siento que no hay esperanza para mi futuro y que sólo puede empeorar
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s4">
                <div class="contenedorPregunta-2">
                    <div class="pregunta">
                        <h2>3 - Fracaso</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input3" value="0">
                            </div> 
                            <div class="respuesta">
                                No me siento como un fracasado
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input3" value="1">
                            </div>
                            <div class="respuesta">
                                He fracasado más de lo que hubiera debido
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input3" value="2">
                            </div>
                            <div class="respuesta">
                                Cuando miro hacia atrás, veo muchos fracasos
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input3" value="3">
                            </div>
                            <div class="respuesta">
                                Siento que como persona soy un fracaso total
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s5">
                <div class="contenedorPregunta-1">
                    <div class="pregunta">
                        <h2>4 - Pérdida de Placer</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input4" value="0">
                            </div> 
                            <div class="respuesta">
                                Obtengo tanto placer como siempre por las cosas de las que disfruto
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input4" value="1">
                            </div>
                            <div class="respuesta">
                                No disfruto tanto de las cosas como solía hacerlo
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input4" value="2">
                            </div>
                            <div class="respuesta">
                                Obtengo muy poco placer de las cosas que solía disfrutar
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input4" value="3">
                            </div>
                            <div class="respuesta">
                                No puedo obtener ningún placer de las cosas de las que solía disfrutar
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s6">
                <div class="contenedorPregunta-2">
                    <div class="pregunta">
                        <h2>5 - Sentimientos de Culpa</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input5" value="0">
                            </div> 
                            <div class="respuesta">
                                No me siento particularmente culpable
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input5" value="1">
                            </div>
                            <div class="respuesta">
                                Me siento culpable respecto de varias cosas que he hecho o que debería haber hecho
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input5" value="2">
                            </div>
                            <div class="respuesta">
                                Me siento bastante culpable la mayor parte del tiempo
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input5" value="3">
                            </div>
                            <div class="respuesta">
                                Me siento culpable todo el tiempo
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s7">
                <div class="contenedorPregunta-1">
                    <div class="pregunta">
                        <h2>6 - Sentimientos de Castigo</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input6" value="0">
                            </div> 
                            <div class="respuesta">
                                No siento que este siendo castigado
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input6" value="1">
                            </div>
                            <div class="respuesta">
                                Siento que tal vez pueda ser castigado
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input6" value="2">
                            </div>
                            <div class="respuesta">
                                Espero ser castigado
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input6" value="3">
                            </div>
                            <div class="respuesta">
                                Siento que estoy siendo castigado
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s8">
                <div class="contenedorPregunta-2">
                    <div class="pregunta">
                        <h2>7 - Disconformidad con uno mismo</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input7" value="0">
                            </div> 
                            <div class="respuesta">
                                Siento acerca de mi lo mismo que siempre
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input7" value="1">
                            </div>
                            <div class="respuesta">
                                He perdido la confianza en mí mismo
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input7" value="2">
                            </div>
                            <div class="respuesta">
                                Estoy decepcionado conmigo mismo
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input7" value="3">
                            </div>
                            <div class="respuesta">
                                No me gusto a mí mismo
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s9">
                <div class="contenedorPregunta-1">
                    <div class="pregunta">
                        <h2>8 - Autocrítica</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input8" value="0">
                            </div> 
                            <div class="respuesta">
                                No me critico ni me culpo más de lo habitual
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input8" value="1">
                            </div>
                            <div class="respuesta">
                                Estoy más crítico conmigo mismo de lo que solía estarlo
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input8" value="2">
                            </div>
                            <div class="respuesta">
                                Me critico a mí mismo por todos mis errores
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input8" value="3">
                            </div>
                            <div class="respuesta">
                                Me culpo a mí mismo por todo lo malo que sucede
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s10">
                <div class="contenedorPregunta-2">
                    <div class="pregunta">
                        <h2>9 - Pensamientos o Deseos Suicidas</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input9" value="0">
                            </div> 
                            <div class="respuesta">
                                No tengo ningún pensamiento de matarme
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input9" value="1">
                            </div>
                            <div class="respuesta">
                                He tenido pensamientos de matarme, pero no lo haría
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input9" value="2">
                            </div>
                            <div class="respuesta">
                                Querría matarme
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input9" value="3">
                            </div>
                            <div class="respuesta">
                                Me mataría si tuviera la oportunidad de hacerlo
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s11">
                <div class="contenedorPregunta-1">
                    <div class="pregunta">
                        <h2>10 - Llanto</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input10" value="0">
                            </div> 
                            <div class="respuesta">
                                No lloro más de lo que solía hacerlo
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input10" value="1">
                            </div>
                            <div class="respuesta">
                                Lloro más de lo que solía hacerlo
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input10" value="2">
                            </div>
                            <div class="respuesta">
                                Lloro por cualquier pequeñez
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input10" value="3">
                            </div>
                            <div class="respuesta">
                                Siento ganas de llorar pero no puedo
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s12">
                <div class="contenedorPregunta-2">
                    <div class="pregunta">
                        <h2>11 - Agitación</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input11" value="0">
                            </div> 
                            <div class="respuesta">
                                No estoy más inquieto o tenso que lo habitual
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input11" value="1">
                            </div>
                            <div class="respuesta">
                                Me siento más inquieto o tenso que lo habitual
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input11" value="2">
                            </div>
                            <div class="respuesta">
                                Estoy tan inquieto o agitado que me es difícil quedarme quieto
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input11" value="3">
                            </div>
                            <div class="respuesta">
                                Estoy tan inquieto o agitado que tengo que estar siempre en movimiento o
                                haciendo algo
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s13">
                <div class="contenedorPregunta-1">
                    <div class="pregunta">
                        <h2>12 - Pérdida de Interés </h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input12" value="0">
                            </div> 
                            <div class="respuesta">
                                No he perdido el interés en otras actividades o personas
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input12" value="1">
                            </div>
                            <div class="respuesta">
                                Estoy menos interesado que antes en otras personas o cosas
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input12" value="2">
                            </div>
                            <div class="respuesta">
                                He perdido casi todo el interés en otras personas o cosas
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input12" value="3">
                            </div>
                            <div class="respuesta">
                                Me es difícil interesarme por algo
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s14">
                <div class="contenedorPregunta-2">
                    <div class="pregunta">
                        <h2>13 - Indecisión</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input13" value="0">
                            </div> 
                            <div class="respuesta">
                                Tomo mis propias decisiones tan bien como siempre
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input13" value="1">
                            </div>
                            <div class="respuesta">
                                Me resulta más difícil que de costumbre tomar decisiones
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input13" value="2">
                            </div>
                            <div class="respuesta">
                                Encuentro mucha más dificultad que antes para tomar decisiones
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input13" value="3">
                            </div>
                            <div class="respuesta">
                                Tengo problemas para tomar cualquier decisión
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s15">
                <div class="contenedorPregunta-1">
                    <div class="pregunta">
                        <h2>14 - Desvalorización</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input14" value="0">
                            </div> 
                            <div class="respuesta">
                                No siento que yo no sea valioso
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input14" value="1">
                            </div>
                            <div class="respuesta">
                                No me considero a mi mismo tan valioso y útil como solía considerarme
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input14" value="2">
                            </div>
                            <div class="respuesta">
                                Me siento menos valioso cuando me comparo con otros
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input14" value="3">
                            </div>
                            <div class="respuesta">
                                Siento que no valgo nada
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s16">
                <div class="contenedorPregunta-2">
                    <div class="pregunta">
                        <h2>15 - Pérdida de Energía</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input15" value="0">
                            </div> 
                            <div class="respuesta">
                                Tengo tanta energía como siempre
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input15" value="1">
                            </div>
                            <div class="respuesta">
                                Tengo menos energía que la que solía tener
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input15" value="2">
                            </div>
                            <div class="respuesta">
                                No tengo suficiente energía para hacer demasiado
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input15" value="3">
                            </div>
                            <div class="respuesta">
                                No tengo energía suficiente para hacer nada
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s17">
                <div class="contenedorPregunta-1">
                    <div class="pregunta">
                        <h2>16 - Cambios en los Hábitos de Sueño</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input16" value="0">
                            </div> 
                            <div class="respuesta">
                                No he experimentado ningún cambio en mis hábitos de sueño
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input16" value="1">
                            </div>
                            <div class="respuesta">
                                Duermo un poco más que lo habitual / Duermo un poco menos que lo habitual
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input16" value="2">
                            </div>
                            <div class="respuesta">
                                Duermo mucho más que lo habitual / Duermo mucho menos que lo habitual
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input16" value="3">
                            </div>
                            <div class="respuesta">
                                Duermo la mayor parte del día / Me despierto 1-2 horas más temprano y no puedo volver a dormirme
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s18">
                <div class="contenedorPregunta-2">
                    <div class="pregunta">
                        <h2>17 - Irritabilidad</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input17" value="0">
                            </div> 
                            <div class="respuesta">
                                No estoy tan irritable que lo habitual
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input17" value="1">
                            </div>
                            <div class="respuesta">
                                Estoy más irritable que lo habitual
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input17" value="2">
                            </div>
                            <div class="respuesta">
                                Estoy mucho más irritable que lo habitual
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input17" value="3">
                            </div>
                            <div class="respuesta">
                                Estoy irritable todo el tiempo
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s19">
                <div class="contenedorPregunta-1">
                    <div class="pregunta">
                        <h2>18 - Cambios en el Apetito</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input18" value="0">
                            </div> 
                            <div class="respuesta">
                                No he experimentado ningún cambio en mi apetito
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input18" value="1">
                            </div>
                            <div class="respuesta">
                                Mi apetito es un poco menor que lo habitual / Mi apetito es un poco mayor que lo habitual
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input18" value="2">
                            </div>
                            <div class="respuesta">
                                Mi apetito es mucho menor que antes /  Mi apetito es mucho mayor que lo habitual
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input18" value="3">
                            </div>
                            <div class="respuesta">
                                No tengo apetito en absoluto / Quiero comer todo el día
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s20">
                <div class="contenedorPregunta-2">
                    <div class="pregunta">
                        <h2>19 - Dificultad de Concentración</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input19" value="0">
                            </div> 
                            <div class="respuesta">
                                Puedo concentrarme tan bien como siempre
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input19" value="1">
                            </div>
                            <div class="respuesta">
                                No puedo concentrarme tan bien como habitualmente
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input19" value="2">
                            </div>
                            <div class="respuesta">
                                Me es difícil mantener la mente en algo por mucho tiempo
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input19" value="3">
                            </div>
                            <div class="respuesta">
                                Encuentro que no puedo concentrarme en nada
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s21">
                <div class="contenedorPregunta-1">
                    <div class="pregunta">
                        <h2>20 - Cansancio o Fatiga</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input20" value="0">
                            </div> 
                            <div class="respuesta">
                                No estoy más cansado o fatigado que lo habitual
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input20" value="1">
                            </div>
                            <div class="respuesta">
                                Me fatigo o me canso más fácilmente que lo habitual
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input20" value="2">
                            </div>
                            <div class="respuesta">
                                Estoy demasiado fatigado o cansado para hacer muchas de las cosas que solía
                                hacer
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input20" value="3">
                            </div>
                            <div class="respuesta">
                                Estoy demasiado fatigado o cansado para hacer la mayoría de las cosas que solía 
                                hacer
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s22">
                <div class="contenedorPregunta-2">
                    <div class="pregunta">
                        <h2>21 - Pérdida de Interés en el Sexo</h2>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input21" value="0">
                            </div> 
                            <div class="respuesta">
                                No he notado ningún cambio reciente en mi interés por el sexo
                            </div>
                        </div>
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input21" value="1">
                            </div>
                            <div class="respuesta">
                                Estoy menos interesado en el sexo de lo que solía estarlo
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input21" value="2">
                            </div>
                            <div class="respuesta">
                                Estoy mucho menos interesado en el sexo
                            </div>
                        </div>  
                        <br>
                        <div class="opcion">
                            <div class="radio">
                                <input type="radio" name="input21" value="3">
                            </div>
                            <div class="respuesta">
                                He perdido completamente el interés en el sexo
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="section s23">
                <div class="contenedorPregunta-1">
                    <div class="textoTest">
                        <h2>¿Ya terminaste? <% out.println(usuario); %></h2>
                        <br>
                        <p>
                            <!-- * Leer el comentario en el js * -->
                            <!--<input type="number" id="resultado" style="display: none;">-->
                            <input onclick="validar(event)" type="submit" value="Enviar Test" style="font-weight: bold; border-radius: 1rem; padding: 1.1rem; background-color: var(--moradoOscuro); color: white;">
                        </p>
                    </div>
                </div>
            </div>
    </div>
    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/3.1.0/fullpage.min.js" integrity="sha512-HqbDsHIJoZ36Csd7NMupWFxC7e7aX2qm213sX+hirN+yEx/eUNlZrTWPs1dUQDEW4fMVkerv1PfMohR1WdFFJQ==" crossorigin="anonymous"></script>
    <script>
        new fullpage('#fullPage',{
            autoScrolling: true
        });
    </script>
</body>
</html>
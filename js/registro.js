function validar(event){
    var correo = document.getElementById("inputCorreo").value;
    var contraseña = document.getElementById("inputContraseña").value;
    var usuario = document.getElementById("inputUsuario").value;
    var validacion1 = validacionCaracteresEspeciales(correo + contraseña + usuario);
    var validacion2 = validacionTextoVacio(correo, contraseña, usuario);
    var validacion3 = validacionEspacios(correo, contraseña, usuario);

    if(validacion1==false | validacion2==false | validacion3 ==false){
        event.preventDefault()
    }
}

function validacionCaracteresEspeciales(input){
    if(/"|'|,/.test(input)==true){
        alert("No puedes usar comilla simple, comillas o comas.");
        return false;
    }
}

function validacionEspacios(input1, input2, input3){
    if(/ /g.test(input1)==true|/ /g.test(input2)==true|/ /g.test(input3)==true){
        alert("No puedes usar espacios.")
        return false;
    }
}

function validacionTextoVacio(input1, input2, input3){
    if(input1.replace(/ /g,"")==""|input2.replace(/ /g,"")==""|input3.replace(/ /g,"")==""){
        alert("No puedes dejar campos vacios.")
        return false;
    }
}

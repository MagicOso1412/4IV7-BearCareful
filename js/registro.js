function validar(event){

    var correo = document.getElementById("inputCorreo").value;
    var contraseña = document.getElementById("inputContraseña").value;
    var usuario = document.getElementById("inputUsuario").value;

    var validacion1 = validacionCaracteresEspeciales(correo + contraseña + usuario);
    var validacion2 = validacionTextoVacio(correo, contraseña, usuario);
    var validacion3 = validacionEspacios(correo, contraseña, usuario);
    var validacion4 = validacionTamaño(correo, contraseña, usuario);

    if(validacion1 == false | validacion2 == false | validacion3 == false | validacion4 == false){
        event.preventDefault();
    }
}

function validacionTamaño(input1, input2, input3){
    if(input1.length < 8 | input2.length < 8 | input3.length < 8){
        alert("Debes usar minimo 8 caracteres.");
        return false;
    }
}

function validacionCaracteresEspeciales(input){
    if(/"|'|,|<|>/.test(input)==true){
        alert("No puedes usar comilla simple, comillas, comas o los simbolos mayor y menor que.");
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


var input = "";

// Esta funcion revisa si los radio button estan "checked", el bucle for se utiliza
// para aprovechar que todos se llaman input+n
// Cuando encuentra que un radio button no esta "checked" detiene el submit,
// el bucle for y envia una alerta

function validar(event){

    for (var i = 1; i < 22; i++) {

        input = document.querySelector('input[name="input'+ i +'"]:checked');
        
        if(input == null){
            alert("Debes responder todas las preguntas");
            event.preventDefault();
            break;
        } 
    }
}
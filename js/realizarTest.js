
let input = "";
/*let contador = 0;
let validacion = true;*/

/*
Esta funcion revisa si los radio button estan "checked", el bucle for se utiliza
para aprovechar que todos se llaman input+n
Cuando encuentra que un radio button no esta "checked" detiene el submit,
el bucle for y envia una alerta
*/

function validar(event){

    for (let i = 1; i < 22; i++) {

        input = document.querySelector('input[name="input'+ i +'"]:checked');
        
        if(input == null){
            alert("Debes responder todas las preguntas");
            //validacion = false;
            event.preventDefault();
            break;
        } 
    }
    /*
    La seccion comentada pretendia sumar automaticamente los resultados
    pero no funciona ya que se activa despues de que el formulario envie sus valores
    if(validacion==true){
        for (let i = 1; i < 22; i++){
            contador += parseInt(document.querySelector('input[name="input'+ i +'"]:checked').value);
        }
        document.getElementById("resultado").value = contador;
    }
    */
}
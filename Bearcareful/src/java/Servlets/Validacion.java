/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/**
 *
 * @author Oso
 */
public class Validacion {
     static boolean comilla(String texto) {
        Pattern pattern = Pattern.compile("'");
        Matcher matcher = pattern.matcher(texto);
        boolean matchFound = matcher.find();
        return matchFound;
    }
    
    static boolean numero(String numero) {
    if (numero == null) {
        return false;
    }
    try {
        double d = Double.parseDouble(numero);
    } catch (NumberFormatException nfe) {
        return false;
    }
    return true;
    }
    
    static boolean texto(String texto){
        Pattern pattern = Pattern.compile("[0-9]");
        Matcher matcher = pattern.matcher(texto);
        boolean matchFound = matcher.find();
        return matchFound;
    }
    
    static boolean correo(String correo){
        Pattern pattern = Pattern.compile("@");
        Matcher matcher = pattern.matcher(correo);
        boolean matchFound = matcher.find();
        return matchFound;
    }
    static boolean edad(int edad){
        return edad<1;
    }
}

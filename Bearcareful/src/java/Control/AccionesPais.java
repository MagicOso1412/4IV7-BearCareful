/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Modelo.Pais;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author EMOA1
 */
public class AccionesPais {
    
    public static int registrarPais(Pais e){
        int estatus = 0;
        try{
            Connection con = Conexion.getConnection();
            String q = "insert into CPais(Nom_country) "
                    + "values(?)";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            //usar getter and setter
            ps.setString(1, e.getNom_country());
            
            estatus = ps.executeUpdate();
            System.out.println("Registro Exitoso de Pais");
            con.close();
        
        }catch(Exception ed){
            System.out.println("Error al registrar el pais");
            System.out.println(ed.getMessage());
        
        }
        return estatus;
    }
     
    public static int actualizarPais(Pais e){
        int estatus = 0;
        try{
            Connection con = Conexion.getConnection();
            String q = "update CPais set Nom_Country = ?"
                    + "where Id_Country = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            //usar getter and setter
            ps.setString(1, e.getNom_country());
            ps.setInt(4, e.getId_country());
            
            estatus = ps.executeUpdate();
            System.out.println("Actualizacion Exitosa del Pais");
            con.close();
        
        }catch(Exception ed){
            System.out.println("Error al actualizar el pais");
            System.out.println(ed.getMessage());
        
        }
        return estatus;
    }
    
    public static int borrarPais(int id){
        int estatus = 0;
        try{
            Connection con = Conexion.getConnection();
            String q = "delete from CPais where Id_Country = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            //usar getter and setter
            ps.setInt(1, id);
            
            
            estatus = ps.executeUpdate();
            System.out.println("Borrado Exitoso del Pais");
            con.close();
        
        }catch(Exception ed){
            System.out.println("Error al borrar el pais");
            System.out.println(ed.getMessage());
        
        }
        return estatus;
    }
    
    public static Pais buscarPaisById(int id){
        Pais e = new Pais();
        try{
            Connection con = Conexion.getConnection();
            String q = "select * from CPais where Id_Country = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                e.setId_country(rs.getInt(1));
                e.setNom_country(rs.getString(2));
            }
            
            System.out.println("Pais encontrado");
            con.close();
        
        }catch(Exception ed){
            System.out.println("Error al buscar el pais");
            System.out.println(ed.getMessage());
        
        }
        return e;
    }
    
    public static List<Pais> buscarAllPais(){
        List<Pais> lista = new ArrayList<Pais>();
        
        try{
            Connection con = Conexion.getConnection();
            String q = "select * from CPais";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Pais e = new Pais();
                e.setId_country(rs.getInt(1));
                e.setNom_country(rs.getString(2));
                lista.add(e);
            }
            
            System.out.println("Paises encontrados");
            con.close();
        
        }catch(Exception ed){
            System.out.println("Error al buscar a los paises");
            System.out.println(ed.getMessage());
        
        }
        return lista;
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author EMOA1
 */
public class AccionesUsuario {
    public static int registrarPais(Usuario e){
        int estatus = 0;
        try{
            Connection con = Conexion.getConnection();
            String q = "insert into MUsuario(Nom_user, Nom_account, Id_country, Pass_user, Date_user, Email) "
                    + "values(?,?,?,?,?,?)";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            //usar getter and setter
            ps.setString(1, e.getNom_user());
            ps.setString(2, e.getNom_account());
            ps.setInt(3, e.getId_country());
            ps.setString(4, e.getPass_user());
            ps.setDate(5, e.getDate_user());
            ps.setString(6, e.getEmail());
            
            
            estatus = ps.executeUpdate();
            System.out.println("Registro Exitoso de usuario");
            con.close();
        
        }catch(Exception ed){
            System.out.println("Error al registrar el usuario");
            System.out.println(ed.getMessage());
        
        }
        return estatus;
    }
     
    public static int actualizarPais(Usuario e){
        int estatus = 0;
        try{
            Connection con = Conexion.getConnection();
            String q = "update MUsuario set Nom_user = ?, Nom_account = ?, Id_country = ?, Pass_user = ?, Date_user = ?, Email = ?"
                    + "where ID_user = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            //usar getter and setter
            ps.setString(1, e.getNom_user());
            ps.setString(2, e.getNom_account());
            ps.setInt(3, e.getId_country());
            ps.setString(4, e.getPass_user());
            ps.setDate(5, e.getDate_user());
            ps.setString(6, e.getEmail());
            
            estatus = ps.executeUpdate();
            System.out.println("Actualizacion Exitosa del Usuario");
            con.close();
        
        }catch(Exception ed){
            System.out.println("Error al actualizar el Usuario");
            System.out.println(ed.getMessage());
        
        }
        return estatus;
    }
    
    
    
    public static Usuario buscarusuarioByNomUsu(int id){
        Usuario e = new Usuario();
        try{
            Connection con = Conexion.getConnection();
            String q = "select * from MUsuario where Nom_User = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                e.setId_user(rs.getInt(1));
                e.setNom_user(rs.getString(2));
                e.setNom_account(rs.getString(3));
                e.setId_country(rs.getInt(4));
                e.setPass_user(rs.getString(5));
                e.setDate_user(rs.getDate(6));
                e.setEmail(rs.getString(7));
            }
            
            System.out.println("Pais encontrado");
            con.close();
        
        }catch(Exception ed){
            System.out.println("Error al buscar el pais");
            System.out.println(ed.getMessage());
        
        }
        return e;
    }
    
}

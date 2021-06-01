/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Control.Conexion;
import java.sql.*;

/**
 *
 * @author EMOA1
 */
public class Usuario {
    private int id_user, id_country;

    private String nom_user, pass_user;
    
   
    private String  email;
    
    public Usuario verificarUsuario(String email, String pass_user) throws ClassNotFoundException{
        Usuario u = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            con = Conexion.getConnection();
            String q = "select * from MUsuario "
                    + "where cor_usu = ? AND con_usu = ?";

            ps = con.prepareStatement(q);

            ps.setString(1, email);
            ps.setString(2, pass_user);

            rs = ps.executeQuery();

            while(rs.next()){
                u = new Usuario();
                u.setId_user(rs.getInt("id_usu"));
                u.setId_country(rs.getInt("id_pais"));
//                pais.setNom_country("nom_pais");
                u.setNom_user(rs.getString("nom_usu"));
                u.setPass_user(rs.getString("con_usu"));
                u.setEmail(rs.getString("cor_usu"));
                break;

            }

        }catch(SQLException sq){
            System.out.println("Error al verificar al usuario");
            System.out.println(sq.getMessage());
            u = null;
        }finally{
            try{
                rs.close();
                ps.close();
                con.close();
            }catch(Exception e){
                System.out.println("Error al desconectar la BD");
                System.out.println(e.getMessage());
            }
        }
        return u;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public int getId_country() {
        return id_country;
    }

    public void setId_country(int id_country) {
        this.id_country = id_country;
    }

   
    public String getNom_user() {
        return nom_user;
    }

    public void setNom_user(String nom_user) {
        this.nom_user = nom_user;
    }

   

    public String getPass_user() {
        return pass_user;
    }

    public void setPass_user(String pass_user) {
        this.pass_user = pass_user;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
    
}

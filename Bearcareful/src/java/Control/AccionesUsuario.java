/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Modelo.Usuario;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mauri
 */
public class AccionesUsuario {

    public static int registrarUsuario(Usuario e) {
        int estatus = 0;
        try {
            Connection con = Conexion.getConnection();
            String q = " insert into musuario(id_pais, nom_usu, con_usu, cor_usu) values (?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(q);

            //usar getter and setter
            ps.setInt(1, e.getId_country());
            ps.setString(2, e.getNom_user());
            ps.setString(3, e.getPass_user());
            ps.setString(4, e.getEmail());

            estatus = ps.executeUpdate();
            System.out.println("Registro Exitoso");
            con.close();

        } catch (Exception ed) {
            System.out.println("Error al registrar usu");
            System.out.println(ed.getMessage());

        }
        return estatus;
    }

    public static int actualizarUsuario(Usuario e) {
        int estatus = 0;
        try {
            Connection con = Conexion.getConnection();
            String q = "update MUsuario set id_pais = ?, nom_usu = ?,con_usur = ?, cor_usu = ? where id_usu = ?";

            PreparedStatement ps = con.prepareStatement(q);

            //usar getter and setter
            ps.setInt(1, e.getId_country());
            ps.setString(2, e.getNom_user());
            ps.setString(3, e.getPass_user());
            ps.setString(4, e.getEmail());
            ps.setInt(5, e.getId_user());

            estatus = ps.executeUpdate();
            System.out.println("Actualizacion Exitosa");
            con.close();

        } catch (Exception ed) {
            System.out.println("Error al actualizar");
            System.out.println(ed.getMessage());

        }
        return estatus;
    }
     
    public static Usuario buscarUsuarioById(int id) {
        Usuario e = new Usuario();
        try {
            Connection con = Conexion.getConnection();
            String q = "select * from MUsuario where id_Usu = ?";

            PreparedStatement ps = con.prepareStatement(q);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                e.setId_user(rs.getInt(1));
                e.setId_country(rs.getInt(2));
                e.setNom_user(rs.getString(3));
                e.setPass_user(rs.getString(4));
                e.setEmail(rs.getString(5));

            }

            System.out.println("Usuario encontrado");
            con.close();

        } catch (Exception ed) {
            System.out.println("Error al buscar al usuario");
            System.out.println(ed.getMessage());

        }
        return e;
        
    }
     public static int obtenerId(String correo) {
        Usuario e = new Usuario();
        int Idregreso = 0;
        try {
            Connection con = Conexion.getConnection();
            String q = "select id_usu from MUsuario where cor_usu = ?";

            PreparedStatement ps = con.prepareStatement(q);

            ps.setString(1, correo);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                e.setId_user(rs.getInt(1));
                Idregreso =e.getId_user();
            }
            
            System.out.println("Usuario encontrado");
            con.close();

        } catch (Exception ed) {
            System.out.println("Error al buscar al usuario");
            System.out.println(ed.getMessage());

        }
        return Idregreso;
        
    }
}

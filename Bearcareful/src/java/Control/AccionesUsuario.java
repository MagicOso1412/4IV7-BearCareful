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
            String q = "insert into BearCareful(nom_user,nom_account,pass_user, email,id_user,id_country ,date_user) "
                    + "values(?,?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(q);

            //usar getter and setter
            ps.setString(1, e.getNom_user());
            ps.setString(2, e.getNom_account());
            ps.setString(3, e.getPass_user());
            ps.setString(4, e.getEmail());
            ps.setInt(5, e.getId_user());
            ps.setInt(6, e.getId_country());
            ps.setDate(7, e.getDate_user());

            estatus = ps.executeUpdate();
            System.out.println("Registro Exitoso del Empleado");
            con.close();

        } catch (Exception ed) {
            System.out.println("Error al registrar al empleado");
            System.out.println(ed.getMessage());

        }
        return estatus;
    }

    public static int actualizarEmpleado(Usuario e) {
        int estatus = 0;
        try {
            Connection con = Conexion.getConnection();
            String q = "update BearCareful set nom_account=?,pass_user=?, email=?,id_country=? ,date_user=? ";

            PreparedStatement ps = con.prepareStatement(q);

            //usar getter and setter
            ps.setString(1, e.getNom_account());
            ps.setString(2, e.getPass_user());
            ps.setString(3, e.getEmail());
            ps.setInt(4, e.getId_country());
            ps.setDate(5, e.getDate_user());

            estatus = ps.executeUpdate();
            System.out.println("Actualizacion Exitosa del Empleado");
            con.close();

        } catch (Exception ed) {
            System.out.println("Error al actualizar al empleado");
            System.out.println(ed.getMessage());

        }
        return estatus;
    }

    public static Usuario buscarEmpleadoById(int id) {
        Usuario e = new Usuario();
        try {
            Connection con = Conexion.getConnection();
            String q = "select * from Bearcareful where id_Usu = ?";

            PreparedStatement ps = con.prepareStatement(q);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                e.setNom_user(rs.getString(1));
                e.setNom_account(rs.getString(2));
                e.setPass_user(rs.getString(3));
                e.setEmail(rs.getString(4));
                e.setId_user(rs.getInt(5));
                e.setId_country(rs.getInt(6));
                e.setDate_user(rs.getDate(7));
            }

            System.out.println("Empleado encontrado");
            con.close();

        } catch (Exception ed) {
            System.out.println("Error al buscar al empleado");
            System.out.println(ed.getMessage());

        }
        return e;
    }
}

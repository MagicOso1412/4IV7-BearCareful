/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;


import Modelo.Test;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mauri
 */
public class AccionesTest {

    public static int registrarTest(Test e) {
        int estatus = 0;
        try {
            Connection con = Conexion.getConnection();
            String q = "insert into BearCareful(id_test,id_user,date_test,score_test,Scale_depre) "
                    + "values(?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(q);

            //usar getter and setter
            ps.setInt(1, e.getId_test());
            ps.setInt(2, e.getId_user());
            ps.setDate(3, e.getDate_test());
            ps.setInt(4, e.getScore_test());
            ps.setString(5, e.getScale_depre());
           
            estatus = ps.executeUpdate();
            System.out.println("Registro Exitoso del Test");
            con.close();

        } catch (Exception ed) {
            System.out.println("Error al registrar al Test");
            System.out.println(ed.getMessage());

        }
        return estatus;
    }

   

    public static Test buscarTestById(int id) {
        Test e = new Test();
        try {
            Connection con = Conexion.getConnection();
            String q = "select * from Bearcareful where id_test = ?";

            PreparedStatement ps = con.prepareStatement(q);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

               ;
                
            e.setId_test(rs.getInt(5));
            e.setId_user(rs.getInt(5));
            e.setDate_test(rs.getDate(5));
            e.setScore_test(rs.getInt(5));
            e.setScale_depre(rs.getString(5));
            }

            System.out.println("Test encontrado");
            con.close();

        } catch (Exception ed) {
            System.out.println("Error al buscar al Test");
            System.out.println(ed.getMessage());

        }
        return e;
    }
}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;



import Modelo.Escala;
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
            String q = "insert into MTest(id_usu, id_esc, fec, res) "
                    + "values(?,?,curdate(),?)";

            PreparedStatement ps = con.prepareStatement(q);

            //usar getter and setter
            ps.setInt(1, e.getId_user());
            ps.setInt(2, e.getId_escala());
            
            ps.setInt(3, e.getScore_test());
           
            estatus = ps.executeUpdate();
            System.out.println("Registro Exitoso");
            con.close();

        } catch (Exception ed) {
            System.out.println("Error al registrar");
            System.out.println(ed.getMessage());

        }
        return estatus;
    }
public static List<Test> buscarAllTestByID(int ID){
        List<Test> lista = new ArrayList<Test>();
        
        try{
            Connection con = Conexion.getConnection();
            String q = "select fec,res,id_esc from mtest where id_usu=?";

            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1,ID);

            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Test e = new Test();
                e.setDate(rs.getString(1));
                e.setScore_test(rs.getInt(2));
                e.setId_escala(rs.getInt(3));
                lista.add(e);
            }

            System.out.println("encontrados");
            con.close();

        }catch(Exception ed){
            System.out.println("Error al buscar");
            System.out.println(ed.getMessage());

        }
        return lista;
    }
   public static String AsignarEscalaById(int id_escala){ 
       Escala e = new Escala();
       try{
            Connection con = Conexion.getConnection();
            String q = "select esc from cescala where id_esc=?";

            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1,id_escala);

            ResultSet rs = ps.executeQuery();
          
            if (rs.next()) {
                
            e.setEscala(rs.getString(1));
            
            }

            System.out.println("encontrados");
            con.close();

        }catch(Exception ed){
            System.out.println("Error al buscar");
            System.out.println(ed.getMessage());

        }
        return e.getEscala();
   
   }

//    public static Test buscarTestByIdUsuario(int id) {
//        Test e = new Test();
//        try {
//            Connection con = Conexion.getConnection();
//            String q = "select * from MTest where id_usu = ?";
//
//            PreparedStatement ps = con.prepareStatement(q);
//
//            ps.setInt(1, id);
//
//            ResultSet rs = ps.executeQuery();
//            if (rs.next()) {
//                
//            e.setId_test(rs.getInt(1));
//            e.setId_user(rs.getInt(2));
//            
//            e.setScore_test(rs.getInt(3));
//            e.setScale_depre(rs.getString(4));
//            }
//
//            System.out.println("Test encontrado");
//            con.close();
//
//        } catch (Exception ed) {
//            System.out.println("Error al buscar al Test");
//            System.out.println(ed.getMessage());
//
//        }
//        return e;
//    }
}
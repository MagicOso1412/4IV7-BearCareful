/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Date;

/**
 *
 * @author EMOA1
 */
public class Test {

    /**
     * @return the id_test
     */
    public int getId_test() {
        return id_test;
    }

    /**
     * @param id_test the id_test to set
     */
    public void setId_test(int id_test) {
        this.id_test = id_test;
    }

    /**
     * @return the id_user
     */
    public int getId_user() {
        return id_user;
    }

    /**
     * @param id_user the id_user to set
     */
    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    /**
     * @return the score_test
     */
    public int getScore_test() {
        return score_test;
    }

    /**
     * @param score_test the score_test to set
     */
    public void setScore_test(int score_test) {
        this.score_test = score_test;
    }

    /**
     * @return the Scale_depre
     */
    public String getScale_depre() {
        return Scale_depre;
    }

    /**
     * @param Scale_depre the Scale_depre to set
     */
    public void setScale_depre(String Scale_depre) {
        this.Scale_depre = Scale_depre;
    }

    /**
     * @return the date_test
     */
    public Date getDate_test() {
        return date_test;
    }

    /**
     * @param date_test the date_test to set
     */
    public void setDate_test(Date date_test) {
        this.date_test = date_test;
    }
    private int id_test, id_user, score_test;
    private String Scale_depre;
    private Date date_test;
    
}

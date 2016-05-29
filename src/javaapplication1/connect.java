/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication1;

import java.sql.*;

/**
 *
 * @author Sebastian
 */
public class connect {

    private static Connection conexion;
    private static String bd = "estetica";
    private static String user = "root";
    private static String password = "root";
    private static String host = "localhost";
    private static String server = "jdbc:mysql://" + host + "/" + bd;

    connect(String user, String password)
    {
        this.user = user;
        this.password = password;
    }
    public static void setUser(String S) {
        user = S;
    }

    public static void setPass(String S) {
        password = S;
    }

    public void initConection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(server, user, password);
            System.out.println("Conexión a base de datos " + server + " ... OK");
        } catch (ClassNotFoundException ex) {
            System.out.println("Error cargando el Driver MySQL JDBC ... FAIL");
        } catch (SQLException ex) {
            System.out.println("Imposible realizar conexion con " + server + " ... FAIL");

        }
    }
    public static Connection getConnection()
    {
        return conexion;
    }
    public void closeConection()
    {
        try {
            conexion.close();
            System.out.println("Cerrar conexion con " + server + " ... OK");
        } catch (SQLException ex) {
            System.out.println("Imposible cerrar conexion ... FAIL");
        }
    }
    public void printSomething()
    {
        System.out.println("aslkfdj");
    }
    public void queryC()
    {
        
    }
}

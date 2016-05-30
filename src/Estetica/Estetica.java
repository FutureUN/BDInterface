/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Estetica;

import java.awt.Color;
import java.sql.*;
import javax.swing.*;
/**
 *
 * @author Sebastian
 */
public class Estetica {

    /**
     * @param args the command line arguments
     */
//    
//    private static Connection conexion;
//    private static String bd = "estetica";
//    private static String user = "root";
//    private static String password = "root";
//    private static String host = "localhost";
//    private static String server = "jdbc:mysql://" + host + "/" + bd;
//
      public static void main(String[] args) {
        JFrame jf=new JFrame("This is JFrame");
        jf = new Loggin();
        jf.setVisible(true);

        connect c1 = new connect("root", "root");
        c1.initConection();

        System.out.println("sfddf");

        
        try {
            // Preparamos la consulta
            Statement s = c1.getConnection().createStatement();
            ResultSet rs = s.executeQuery("select * from Cliente");
            // Recorremos el resultado, mientras haya registros para leer, y escribimos
           // el resultado en pantalla
            
        while (rs.next()) {
                
                System.out.println(
                        "ID: " + rs.getInt(1)
                        + "\tNombre: " + rs.getString(2) + " " + rs.getString(3)
                        + "Tel: " + rs.getString(4)
                        + "\tSexo: " + rs.getString(5)
                );
            }
        } catch (SQLException ex) {
            System.out.println("Imposible realizar consulta ... FAIL");
        }
        c1.printSomething();
        c1.closeConection();
    }

}

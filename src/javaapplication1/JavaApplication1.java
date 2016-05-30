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
public class JavaApplication1 {

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
//
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            conexion = DriverManager.getConnection(server, user, password);
//            System.out.println("Conexión a base de datos " + server + " ... OK");
//        } catch (ClassNotFoundException ex) {
//            System.out.println("Error cargando el Driver MySQL JDBC ... FAIL");
//        } catch (SQLException ex) {
//            System.out.println("Imposible realizar conexion con " + server + " ... FAIL");
//
//        }
//        
//        try {
//            // Preparamos la consulta
//            Statement s = conexion.createStatement();
//            ResultSet rs = s.executeQuery("select * from cliente");
//            // Recorremos el resultado, mientras haya registros para leer, y escribimos
//           // el resultado en pantalla
//            
//        while (rs.next()) {
//                System.out.println(
//                        "ID: " + rs.getInt(1)
//                        + "\tNombre: " + rs.getString(2) + " " + rs.getString(3)
//                        + "Tel: " + rs.getString(4)
//                        + "\tSexo: " + rs.getString(5)
//                );
//            }
//        } catch (SQLException ex) {
//            System.out.println("Imposible realizar consulta ... FAIL");
//        }
//        
//         try {
//            conexion.close();
//            System.out.println("Cerrar conexion con " + server + " ... OK");
//        } catch (SQLException ex) {
//            System.out.println("Imposible cerrar conexion ... FAIL");
//        }
        
        connect c1 = new connect("root", "9704");
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
        
        
        
   
       
//Espacio para realizar consultas, agregar registros, eliminar registros, etc...
//desconectar
    }

}

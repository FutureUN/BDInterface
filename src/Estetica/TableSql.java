/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Estetica;

import java.sql.*;
import java.util.*;
import javax.swing.table.AbstractTableModel;
import javax.swing.table.DefaultTableModel;
import javax.xml.crypto.Data;


/**
 *
 * @author jimmy
 */
public class TableSql {

 
static class QueryTableModel extends DefaultTableModel {
    
  ArrayList cache; 
  int colCount;
  String[] headers; 

  Statement statement;

  public QueryTableModel() {
    cache = new ArrayList();
  }

  @Override
  public String getColumnName(int i) {
    return headers[i];
  }

    public int getColumnCount() {
    return colCount;
  }

//  @Override
  //public Object getValueAt(int row, int col) {
   // return ((String[]) cache.elementAt(row))[col];
  //}



 public void setQuery(String query) {
    
    
    try {
      connect cl = new connect("171182110", "1234");

      cl.initConection();
      Statement st = cl.getConnection().createStatement();
      ResultSet rs = st.executeQuery(query);
      ResultSetMetaData meta = rs.getMetaData();
      colCount = meta.getColumnCount();

      headers = new String[colCount];
      for (int h = 1; h <= colCount; h++) {
        headers[h - 1] = meta.getColumnName(h);
      }
     

      while (rs.next()) {
        cache = new ArrayList();
        for (int i = 0; i < colCount; i++) {
          String value = new String();
          value = meta.getColumnTypeName(i + 1);
          if( value  == "INT" )
            cache.add(rs.getInt(i + 1));
          else if (value == "DOUBLE" )
            cache.add(rs.getDouble(i + 1));
          else
            cache.add(rs.getString(i + 1));
        }
      
          this.addRow(cache.toArray());
  
      }
      //fireTableChanged(null); //
    } catch (Exception e) {
      //cache = new String[0];
      e.printStackTrace();
    }
  }
   public void setQuery(String query, Connection cn) {
    
    
    try {
      
      Statement st = cn.createStatement();
      ResultSet rs = st.executeQuery(query);
      ResultSetMetaData meta = rs.getMetaData();
      colCount = meta.getColumnCount();

      headers = new String[colCount];
      for (int h = 1; h <= colCount; h++) {
        headers[h - 1] = meta.getColumnName(h);
      }
     

      while (rs.next()) {
        cache = new ArrayList();
        for (int i = 0; i < colCount; i++) {
          String value = new String();
          value = meta.getColumnTypeName(i + 1);
          if( value  == "INT" )
            cache.add(rs.getInt(i + 1));
          else if (value == "DOUBLE" )
            cache.add(rs.getDouble(i + 1));
          else
            cache.add(rs.getString(i + 1));
        }
      
          this.addRow(cache.toArray());
  
      }
      //fireTableChanged(null); //
    } catch (Exception e) {
      //cache = new String[0];
      e.printStackTrace();
    }
  }

 
   
}
    
}
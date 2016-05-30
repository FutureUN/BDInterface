/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication1;

import java.sql.*;
import java.util.*;
import javax.swing.table.AbstractTableModel;
import javax.swing.table.DefaultTableModel;


/**
 *
 * @author jimmy
 */
public class TableSql {

static connect cl = new connect("root", "9704");
 
static class QueryTableModel extends DefaultTableModel {
    
  String[] cache; 
  int colCount;
  String[] headers; 

  Statement statement;

  public QueryTableModel() {
    cache = new String [colCount];
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

      cl.initConection();
      Statement st = cl.getConnection().createStatement();
      ResultSet rs = st.executeQuery(query);
      ResultSetMetaData meta = rs.getMetaData();
      colCount = meta.getColumnCount();

      headers = new String[colCount];
      for (int h = 1; h <= colCount; h++) {
        headers[h - 1] = meta.getColumnName(h);
      }
      cache = new String [colCount];
      while (rs.next()) {
        for (int i = 0; i < colCount; i++) 
          cache[i] = rs.getString(i + 1);
          this.addRow(cache);
       
      }
      //fireTableChanged(null); //
    } catch (Exception e) {
      cache = new String[0];
      e.printStackTrace();
    }
  }
   
}
    
}

  

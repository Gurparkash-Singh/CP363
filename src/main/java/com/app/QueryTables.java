package com.app;

import java.sql.*;

public class QueryTables
{

    public static void queryRunner(String query)
    {
        try
        {
            Connection con = DriverManager.getConnection
            (  
                "jdbc:mysql://sql350.main-hosting.eu/u581004658_Group43",
                "u581004658_Group43",
                "CP363Group46"
            );

            System.out.println("Connection Established");

            Statement stmt = con.createStatement();

            ResultSet rs = stmt.executeQuery(query);

            ResultSetMetaData rsmd = rs.getMetaData();

            int count = rsmd.getColumnCount();

            // System.out.println(count);

            while (rs.next())
            {
                for (int i = 1; i <= count; i++)
                {
                    System.out.print(rs.getString(i) + " | ");
                }
                System.out.println();
            }

            con.close();
        }
        catch(Exception except)
        { 
            System.out.println(except);
        }
    }
    
}

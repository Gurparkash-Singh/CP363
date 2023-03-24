package com.app;

import java.sql.*;

public class Main 
{

    public static void main(String[] args) 
    {
        try
        {
            Connection con = DriverManager.getConnection
            (  
                "jdbc:mysql://sql350.main-hosting.eu/u581004658_Store",
                "u581004658_CP363",
                "CP363Group36"
            );

            Statement stmt = con.createStatement();  

            ResultSet rs = stmt.executeQuery("select * from Movies");  

            while(rs.next())
            {
                System.out.println(
                    rs.getString(1)
                    + "  "
                    + rs.getDate(2)
                    + "  "
                    + rs.getString(3)
                );
            }

            con.close();  
        }
        catch(Exception e)
        { 
            System.out.println(e);
        }  
    }

}

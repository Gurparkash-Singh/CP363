package com.app;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import java.util.ArrayList;

import javax.swing.*;

public class SecondFrame extends JFrame{

    String columns[];

    String[][] data;
    ArrayList<String> names = new ArrayList<String>();

    JComboBox tables = new JComboBox<String>();
    JButton back = new JButton();

    JTable view;

    JPanel first = new JPanel();
    JPanel second = new JPanel();

    public SecondFrame()
    {
        setButtons();
        initFrame();
        initComponents();

        for (String name : names)
        {
            JButton table = new JButton();
            table.setText(name);
            tables.addItem(name);
        }

        this.add(first, BorderLayout.NORTH);
        this.add(second, BorderLayout.CENTER);
    }

    private void initComponents()
    {
        back.setText("back");
        back.setToolTipText("back");
        back.addActionListener
        (
            (e) -> {
                Main.first.setVisible(true);
                Main.second.setVisible(false);
            }
        );

        tables.addActionListener
        (
            (e) -> {
                JComboBox<String> box = (JComboBox<String>) e.getSource();
                String value = (String) box.getSelectedItem();
                createTable(value);
            }
        );

        first.setLayout(new FlowLayout(FlowLayout.LEADING));
        first.add(back);
        first.add(tables);
        first.setSize(new Dimension(10, 10));
        first.setAlignmentX(JPanel.LEFT_ALIGNMENT);
    }

    private void initFrame()
    {
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setSize(500, 500);
        this.setResizable(true);
        this.getContentPane().setBackground(new Color(0x7B32FA));
    }

    private void setButtons()
    {
        try
        {
            Connection con = DriverManager.getConnection
            (  
                "jdbc:mysql://sql350.main-hosting.eu/u581004658_Store",
                "u581004658_CP363",
                "CP363Group36"
            );

            System.out.println("Connection Established");

            Statement stmt = con.createStatement();

            ResultSet rs = stmt.executeQuery
            (
                "SELECT TABLE_NAME FROM information_schema.Tables" + 
                " WHERE TABLE_SCHEMA = 'u581004658_Store';"
            );

            while (rs.next())
            {
                names.add(rs.getString(1));
            }


            con.close();
        }
        catch(Exception except)
        { 
            System.out.println(except);
        }
    }

    private void createTable(String tablename)
    {
        try
        {
            Connection con = DriverManager.getConnection
            (  
                "jdbc:mysql://sql350.main-hosting.eu/u581004658_Store",
                "u581004658_CP363",
                "CP363Group36"
            );

            System.out.println("Connection Established");

            Statement stmt = con.createStatement();

            ResultSet rs = stmt.executeQuery
            (
                "SELECT count(1) FROM " + tablename + ";"
            );

            rs.next();
            int rowCount = rs.getInt(1);

            stmt = con.createStatement();

            rs = stmt.executeQuery
            (
                "SELECT * FROM " + tablename + ";"
            );

            ResultSetMetaData rsmd = rs.getMetaData();

            int columnCount = rsmd.getColumnCount();

            columns = new String[columnCount];

            for (int i = 1; i <= columnCount; i++ ) {
                columns[i-1] = rsmd.getColumnName(i);
            }

            data = new String[rowCount][];

            rowCount = 0;
            while (rs.next())
            {
                String[] row = new String[columnCount];
                for (int i = 1; i <= columnCount; i++)
                {
                    row[i-1] = rs.getString(i);
                }
                data[rowCount] = row;
                rowCount ++;
            }
            
            second.removeAll();

            view = new JTable(data, columns);
            view.setPreferredScrollableViewportSize(new Dimension(100, 100));

            second.add(view);
            
            con.close();

            this.repaint();
            System.out.println("Finished");
        }
        catch(Exception except)
        { 
            except.printStackTrace();
        }
    }
}

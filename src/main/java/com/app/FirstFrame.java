package com.app;

import java.awt.*;
import java.io.*;
import java.sql.*;
import javax.swing.*;
import org.apache.ibatis.jdbc.ScriptRunner;


public class FirstFrame extends JFrame
{

    JButton create = new JButton();
    JButton delete = new JButton();
    JButton populate = new JButton();
    JButton query = new JButton();
    JButton exit = new JButton();
    JLabel emptyLabels[] = new JLabel[10];

    public FirstFrame()
    {
        initFrame();
        initButtons();
        for (int i = 0; i < 10; i++)
        {
            JLabel emptyLabel = new JLabel();
            emptyLabel.setPreferredSize(new Dimension(10, 10));
            emptyLabels[i] = emptyLabel;
        }
        this.add(emptyLabels[0]);
        this.add(create);
        this.add(emptyLabels[1]);

        this.add(emptyLabels[2]);
        this.add(delete);
        this.add(emptyLabels[3]);

        this.add(emptyLabels[4]);
        this.add(populate);
        this.add(emptyLabels[5]);

        this.add(emptyLabels[6]);
        this.add(query);
        this.add(emptyLabels[7]);

        this.add(emptyLabels[8]);
        this.add(exit);
        this.add(emptyLabels[9]);
    }

    private void initFrame()
    {
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setSize(500, 500);
        this.setResizable(true);
        this.setLayout(new GridLayout(5,3,10,10));
        this.getContentPane().setBackground(new Color(0x7B32FA));
    }

    private void initButtons()
    {
        this.create.setBounds(20, 100, 100, 50);
        this.create.setText("Create Tables");
        this.create.addActionListener(e -> {scriptSetup("create");});

        this.delete.setBounds(20, 200, 100, 50);
        this.delete.setText("Delete Tables");
        this.delete.addActionListener(e -> {scriptSetup("delete");});

        this.populate.setBounds(20, 300, 100, 50);
        this.populate.setText("Populate Tables");
        this.populate.addActionListener(e -> {scriptSetup("populate");});

        this.query.setBounds(20, 400, 100, 50);
        this.query.setText("Query Tables");
        this.query.addActionListener
        (
            e -> 
            {
                this.setVisible(false);
                Main.second.setVisible(true);
            }
        );

        this.exit.setBounds(20, 500, 100, 50);
        this.exit.setText("Exit");
        this.exit.addActionListener(e -> {System.exit(0);});
    }

    private void scriptSetup(String name)
    {
        String send = "Running...";
        send += "\nButtons have been disabled";

        this.create.setEnabled(false);
        this.delete.setEnabled(false);
        this.populate.setEnabled(false);
        this.query.setEnabled(false);
        this.exit.setEnabled(false);
        JOptionPane.showMessageDialog(null, send);

        try
        {
            Connection con = DriverManager.getConnection
            (  
                "jdbc:mysql://sql350.main-hosting.eu/u581004658_Store",
                "u581004658_CP363",
                "CP363Group36"
            );

            System.out.println("Connection Established");

            int count = 1;

            if (name != "create")
            {
                Statement stmt = con.createStatement();

                ResultSet rs = stmt.executeQuery
                (
                    "SELECT * FROM information_schema.Tables" + 
                    " WHERE TABLE_SCHEMA = 'u581004658_Store';"
                );

                count = 0;

                while (rs.next())
                {
                    count ++;
                }
            }

            if (count > 0)
            {
                ScriptRunner sr = new ScriptRunner(con);

                Reader reader = new BufferedReader
                (
                    new FileReader
                    (
                        "./sql/" + name + ".sql"
                    )
                );
    
                sr.runScript(reader);
            }
            else
            {
                JOptionPane.showMessageDialog(null, "Database is empty");
            }

            con.close();
        }
        catch(Exception except)
        { 
            System.out.println(except);
        }

        this.create.setEnabled(true);
        this.delete.setEnabled(true);
        this.populate.setEnabled(true);
        this.query.setEnabled(true);
        this.exit.setEnabled(true);

        send = "Finished";
        send += "\nButton have been enabled";

        JOptionPane.showMessageDialog(null, send);
    }
}

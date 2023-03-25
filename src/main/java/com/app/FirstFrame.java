package com.app;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.Reader;
import java.io.BufferedReader;
import java.io.FileReader;
import java.sql.*;
import org.apache.ibatis.jdbc.ScriptRunner;
import javax.swing.JButton;
import javax.swing.JFrame;

public class FirstFrame extends JFrame implements ActionListener{

    JButton create = new JButton();
    JButton delete = new JButton();
    JButton populate = new JButton();
    JButton query = new JButton();
    JButton exit = new JButton();

    public FirstFrame()
    {
        initFrame();
        initButtons();
        this.add(create);
        this.add(delete);
        this.add(populate);
        this.add(query);
        this.add(exit);
    }

    private void initFrame()
    {
        this.setTitle("Title!");
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setSize(900, 900);
        this.setResizable(true);
        this.setVisible(true);
        this.setLayout(null);
        this.getContentPane().setBackground(new Color(0x7B32FA));
    }

    private void initButtons()
    {
        this.create.setBounds(200, 100, 100, 50);
        this.create.setText("Create Tables");
        this.create.addActionListener(this);

        this.delete.setBounds(200, 200, 100, 50);
        this.delete.setText("Delete Tables");
        this.delete.addActionListener(this);

        this.populate.setBounds(200, 300, 100, 50);
        this.populate.setText("Populate Tables");
        this.populate.addActionListener(this);

        this.query.setBounds(200, 400, 100, 50);
        this.query.setText("Query Tables");
        this.query.addActionListener(new QueryTables());

        this.exit.setBounds(200, 500, 100, 50);
        this.exit.setText("Exit");
        this.exit.addActionListener(this);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == exit)
        {
            System.exit(0);
        }
        else if (e.getSource() == create)
        {
            scriptSetup("create");
        }
        else if (e.getSource() == delete)
        {
            scriptSetup("delete");
        }
        else if (e.getSource() == populate)
        {
            scriptSetup("populate");
        }
    }

    private void scriptSetup(String name)
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

            ScriptRunner sr = new ScriptRunner(con);

            Reader reader = new BufferedReader(
                new FileReader(
                    "/Users/gurparkashrandhawa/Documents/github/CP363/sql/" + name + ".sql"
                )
            );

            sr.runScript(reader);

            con.close();
        }
        catch(Exception except)
        { 
            System.out.println(except);
        }
    }
}

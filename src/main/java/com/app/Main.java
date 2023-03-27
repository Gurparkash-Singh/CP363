package com.app;

public class Main 
{

    public static FirstFrame first;
    public static SecondFrame second;

    public static void main(String[] args) 
    {
        first = new FirstFrame();
        second = new SecondFrame();
        first.setVisible(true);
    }

    public static void recreateFrame()
    {
        second.dispose();
        second = new SecondFrame();
    }

}

package com.xiezilailai.example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by 蝎子莱莱123 on 2016/2/9.
 */
public class conn {
    public Connection getCon(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost/jkxystudent?useUnicode=true&characterEncoding=utf-8";
            String user="root";
            String password="jsk19970311abcde";
            Connection conn= DriverManager.getConnection(url,user,password);
            return conn;
        }catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}

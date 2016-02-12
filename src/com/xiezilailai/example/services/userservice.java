package com.xiezilailai.example.services;

import com.xiezilailai.example.conn;
import com.xiezilailai.example.model.UserTable;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by 蝎子莱莱123 on 2016/2/9.
 */
public class userservice {
    private PreparedStatement psm;
    private Connection conn;

    public userservice() {
        conn = new com.xiezilailai.example.conn().getCon();
    }

    public boolean validUser(UserTable user) {
//        return true;

        try {
            psm=conn.prepareStatement("SELECT * FROM usertable WHERE usertable.username=? and usertable.password=?");
            if(psm==null)return false;
            psm.setString(1,user.getUsername());
            psm.setString(2,user.getPassword());
            ResultSet rs=psm.executeQuery();
            if(rs==null)return false;
            if(rs.next()){
                return true;
            }else{
                return false;
            }


        } catch (SQLException e) {
            return false;
        }
    }

    }

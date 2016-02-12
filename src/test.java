import com.xiezilailai.example.conn;

import java.sql.Connection;

/**
 * Created by 蝎子莱莱123 on 2016/2/9.
 */
public class test {
    public static void main(String[] args){
        Connection conn=new conn().getCon();
        if(conn!=null) System.out.println("aa");
    }
}

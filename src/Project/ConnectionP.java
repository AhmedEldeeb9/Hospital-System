
package Project;
import java.sql.*;

public class ConnectionP {
    public static Connection getCon(){
    Connection con = null;
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
        System.out.println("Connected to database");
        return con;
    }
    catch(Exception ex){
        System.out.println("not connected to DB");
        return null;
    }
    }
    public static void main(String args[]){
    
        System.out.println(ConnectionP.getCon());
    }
}

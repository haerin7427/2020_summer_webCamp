package user;
import java.sql.*;
import java.util.ArrayList;  
import java.util.List;  
import user.User;  

public class UserDao {
	
	
	private static Connection conn;         //데이터베이스에 접근하기 위한 객체
    private static PreparedStatement pstmt;  
    
    public static int join(User user) throws SQLException, ClassNotFoundException {
    	
    	String dbURL="jdbc:mysql://www.db4free.net:3306/haerindb";                             
        String dbID="haerin7427";
        String dbPassword="hgu217196";
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
        String SQL= "INSERT INTO USER VALUES(?, ?, ?, ?, ?) ";
        
        
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1,user.getUserID());
            pstmt.setString(2,user.getUserPassword());
            pstmt.setString(3,user.getUserName());
            pstmt.setString(4,user.getUserGender());
            pstmt.setString(5,user.getUserEmail());
            return pstmt.executeUpdate();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

}

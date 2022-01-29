import java.sql.*;

public class DatabaseApplicationDevelopment {
    public DatabaseApplicationDevelopment() {

        try (
            Connection conn = DriverManager.getConnection(
               "jdbc:mysql://localhost:3306/ebookshop?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
               "joshuaOrais", "joshuaOrais");
            Statement stmt = conn.createStatement();
        ) {

            //code here
            
        } catch(SQLException ex) {
            ex.printStackTrace();
        } 


    }
}
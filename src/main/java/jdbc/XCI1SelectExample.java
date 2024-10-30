package jdbc;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class XCI1SelectExample {
    private static final String URL = "jdbc:oracle:thin:@localhost:1521/freepdb1";
    private static final String USER = "ace";
    private static final String PASSWORD = "ace";

    public static void main(String[] args) {
        String selectSQL = "SELECT USERNAME, PASSWORD, NAME, EMAIL, BIRTH, JOIN_DATE FROM XCI_MEMBERS";
        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(selectSQL)) {
            while (rs.next()) {
                String username = rs.getString("USERNAME");
                String password = rs.getString("PASSWORD");
                String maskedPassword = "*".repeat(password.length()); // Password masking
                String name = rs.getString("NAME");
                String email = rs.getString("EMAIL");
                int birth = rs.getInt("BIRTH");
                Date joinDate = rs.getDate("JOIN_DATE");
                System.out.println("Username: " + username + ", Password: " + maskedPassword +
                        ", Name: " + name + ", Email: " + email +
                        ", Birth: " + birth + ", Join Date: " + joinDate);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
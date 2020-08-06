import java.sql.*;

public class AdminDao {
	public static Connection getConnection() {
        Connection connectionObj = null;

        String url, username, password;

        url = "jdbc:postgresql://localhost:5432/contact-us";
        username = "postgres";
        password = "password";

        try {
            Class.forName("org.postgresql.Driver");
            connectionObj = DriverManager.getConnection(url, username, password);
        }
        catch(Exception e) {
            e.printStackTrace();
        }

        return connectionObj;
    }
	
	public static boolean validate(String username, String password) {
		boolean status = false;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from admin where username = ? and password = ?");
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return status;
	}
}

import java.sql.*;
import java.util.*;

public class ContactDetailsDao {
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
	
	public static int addResponse(String name, String email, String message) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("insert into response (name, email, message) values(?, ?, ?)");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, message);
			
			status = ps.executeUpdate();
			
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return status;
	}
	
	public static List<ActiveResponses> getActiveResponses() {
		List<ActiveResponses> activeResponses = new ArrayList<ActiveResponses>();
		
		try {	
			
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from response where active = b'1'");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				ActiveResponses active = new ActiveResponses();
				
				int serialNumber;
				String name, email, message;
				
				serialNumber = rs.getInt("sno");
				name = rs.getString("name");
				email = rs.getString("email");
				message = rs.getString("message");
				
				active.setSerialNumber(serialNumber);
				active.setName(name);
				active.setEmail(email);
				active.setMessage(message);
				
				activeResponses.add(active);
			}
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return activeResponses;
	}
	
	public static List<ArchivedResponses> getArchivedResponses() {
		List <ArchivedResponses> archivedResponses = new ArrayList<ArchivedResponses>();
		
		try {	
			
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from response where active = b'0'");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				ArchivedResponses active = new ArchivedResponses();
				
				String name, email, message;
				
				name = rs.getString("name");
				email = rs.getString("email");
				message = rs.getString("message");
				
				active.setName(name);
				active.setEmail(email);
				active.setMessage(message);
				
				archivedResponses.add(active);
			}
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return archivedResponses;
	}
	
	public static void update(int serialNumber) {
		try {	
			
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("update response set active='0' where sno=?");
			ps.setInt(1, serialNumber);
			ps.executeUpdate();
			
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
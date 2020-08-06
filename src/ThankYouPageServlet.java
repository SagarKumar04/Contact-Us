import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/thankYouPage")
public class ThankYouPageServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name, email, message;
		
		name = request.getParameter("name");
		email = request.getParameter("email");
		message = request.getParameter("message");
		
		ContactDetailsDao.addResponse(name, email, message);
		
		RequestDispatcher rd = request.getRequestDispatcher("thankYou.jsp");
		rd.forward(request,  response);
	}
}
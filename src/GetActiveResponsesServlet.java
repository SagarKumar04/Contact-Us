import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/getActiveResponses")
public class GetActiveResponsesServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List <ActiveResponses> activeResponses = new ArrayList<ActiveResponses>();
		
		activeResponses = ContactDetailsDao.getActiveResponses();
		
		request.setAttribute("active", activeResponses);
		RequestDispatcher rd = request.getRequestDispatcher("active.jsp");
		rd.forward(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List <ActiveResponses> activeResponses = new ArrayList<ActiveResponses>();
		String serialNumber;
		
		serialNumber = request.getParameter("sno");

		ContactDetailsDao.update(Integer.parseInt(serialNumber));
		
		activeResponses = ContactDetailsDao.getActiveResponses();
		
		request.setAttribute("active", activeResponses);
		RequestDispatcher rd = request.getRequestDispatcher("active.jsp");
		rd.forward(request,  response);
	}
}
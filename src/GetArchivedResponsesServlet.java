import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/getArchivedResponses")
public class GetArchivedResponsesServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List <ArchivedResponses> archivedResponses = new ArrayList<ArchivedResponses>();
		
		archivedResponses = ContactDetailsDao.getArchivedResponses();
		
		request.setAttribute("archived", archivedResponses);
		RequestDispatcher rd = request.getRequestDispatcher("archived.jsp");
		rd.forward(request,  response);
	}
}

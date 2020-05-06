package model;


import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DoctorsAPI
 */
@WebServlet("/DoctorsAPI")
public class DoctorsAPI extends HttpServlet {
	Doctor doc = new Doctor();
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorsAPI() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Doctor doc = new Doctor();
		
		String output = doc.insert(request.getParameter("name"), 
				request.getParameter("email"), 
				request.getParameter("phone"), 
				request.getParameter("spec"));
		
		response.getWriter().write(output);
	}

	// convert request parameter to a map
	private static Map getParasMap(HttpServletRequest request) {
		Map<String, String> map = new HashMap<String, String>();
		
		try {
			Scanner scanner = new Scanner(request.getInputStream(), "UTF-8");
			String queryString = scanner.hasNext() ? scanner.useDelimiter("//A").next() : "";
			
			scanner.close();
			
			String[] params = queryString.split("&");
			
			for (String param : params) {
				String[] p = param.split("=");
				map.put(p[0], p[1]);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return map;
	}
	
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Map paras = getParasMap(request);
		
		String output = doc.update(paras.get("id").toString(), 
				paras.get("name").toString(), 
				paras.get("email").toString(), 
				paras.get("phone").toString(), 
				paras.get("spec").toString());
		
		response.getWriter().write(output);
	}
	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Map paras = getParasMap(request);
		
		String output = doc.delete(paras.get("id").toString());
		
		response.getWriter().write(output);
	}
}

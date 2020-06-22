package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dealership.Car;

/**
 * Servlet implementation class CarDealershipServlet
 */
@WebServlet("/CarDealershipServlet")
public class CarDealershipServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CarDealershipServlet() {
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
		
		Car car = new Car();
		car.setBrand(request.getParameter("brand"));
		car.setModel(request.getParameter("model"));
		car.setCondition(request.getParameter("condition"));
		car.setType(request.getParameter("type"));
		car.setEngineType(request.getParameter("engineType"));
		car.setTransmission(request.getParameter("transmission"));
		
		Double mile = Double.parseDouble(request.getParameter("mileage"));
		Double finalPrice=Double.parseDouble(request.getParameter("price"));
		car.setMileage(mile);
		car.setPrice(finalPrice);		
		car.setPlaceaBit(false);
		

		HttpSession session = request.getSession(true);
		//session.setAttribute("car", car);
		ArrayList<Car> cars = (ArrayList<Car>)session.getAttribute("cars");
		if (cars==null) {
			cars=new ArrayList<Car>();
		}
		
		session.setAttribute("Car", car);
		
		RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
		rs.forward(request, response);		
		
	}

}

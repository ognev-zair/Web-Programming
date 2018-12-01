/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ognev
 */
public class BeerSelect extends HttpServlet {

  public void doPost(HttpServletRequest request, HttpServletResponse response)
throws IOException, ServletException {
String c = request.getParameter("color");
BeerExpert be = new BeerExpert();
List result = be.getBrands(c);

response.setContentType("text/html");
PrintWriter out = response.getWriter();
System.out.println("Beer Selection Advice<br>");


Iterator it = result.iterator(); 
while(it.hasNext()) {
    out.print("<br>try: " + it.next());
}
  }
}

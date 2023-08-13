package jsp01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/sess1")
public class SessionTest extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		session.setAttribute("name", "ȫ�浿");
		out.print("<html><body>");
		out.print("���ǿ� �̸��� ���ε� �մϴ�.");
		out.print("<a href='./BindTest/session.jsp'>ù��° �������� �̵�");
		out.print("</html></body>");
	}

}

package servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.ModelLogin;

import java.io.IOException;

@WebServlet(name = "ServletUsuarioController", value = "/ServletUsuarioController")
public class ServletUsuarioController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");

        ModelLogin modelLogin = new ModelLogin();

        modelLogin.setId(id != null && !id.isEmpty() ? Long.parseLong(id) : null);
        modelLogin.setNome(nome);
        modelLogin.setEmail(email);
        modelLogin.setLogin(login);
        modelLogin.setSenha(senha);

        RequestDispatcher redireciona = request.getRequestDispatcher("principal/usuario.jsp");
        redireciona.forward(request, response);
    }
}

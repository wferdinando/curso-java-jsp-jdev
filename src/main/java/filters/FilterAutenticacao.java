package filters;

import connection.SingleConnectionBanco;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebFilter(urlPatterns = {"/principal/*"})/*Interceptas todas as requisiçoes que vierem do projeto ou mapeamento*/
public class FilterAutenticacao implements Filter {


    private static Connection connection;


    public FilterAutenticacao() {
    }

    /*Encerra os processo quando o servidor é parado*/
    /*Mataria os processo de conexão com banco*/
    public void destroy() {
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /*Intercepta as requisicoes e a as respostas no sistema*/
    /*Tudo que fizer no sistema vai fazer por aqui*/
    /*Validação de autenticao*/
    /*Dar commit e rolback de transaçoes do banco*/
    /*Validar e fazer redirecionamento de paginas*/
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        try {
            HttpServletRequest req = (HttpServletRequest) request;
            HttpSession session = req.getSession();

            String usuarioLogado = (String) session.getAttribute("usuario");

            String urlParaAutenticar = req.getServletPath();/*Url que está sendo acessada*/

            /*Validar se está logado senão redireciona para a tela de login*/
            if (usuarioLogado == null &&
                    !urlParaAutenticar.equalsIgnoreCase("/principal/ServletLogin")) {/*Não está logado*/

                RequestDispatcher redireciona = request.getRequestDispatcher("/index.jsp?url=" + urlParaAutenticar);
                request.setAttribute("msg", "Por favor realize o login!");
                redireciona.forward(request, response);
                return; /*Para a execução e redireciona para o login*/

            } else {
                chain.doFilter(request, response);
            }

            connection.commit();/*Deu tudo certo, então comita as alteracoes no banco de dados*/

        } catch (Exception e) {
            e.printStackTrace();

            RequestDispatcher redirecionar = request.getRequestDispatcher("erro.jsp");
            request.setAttribute("msg", e);
            redirecionar.forward(request, response);

            try {
                connection.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }
    }

    /*Inicia os processo ou recursos quando o servidor sobre o projeto*/
    // inicar a conexão com o banco
    public void init(FilterConfig fConfig) throws ServletException {
        connection = SingleConnectionBanco.getConnection();
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import DAO.ProdutoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Produto;

/**
 *
 * @author Jardel
 */
@WebServlet(name = "NovoProduto", urlPatterns = {"/ProdutoController"})
public class ProdutoController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/CadastroProduto.jsp";
    private static String LIST_PRODUTO = "/Produto.jsp";
    private ProdutoDAO dao;

    public ProdutoController() {
        super();
        dao = new ProdutoDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward = "";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")) {
            String nome = request.getParameter("nome");
            dao.deleteProduto(nome);
            forward = LIST_PRODUTO;
            request.setAttribute("nome", dao.getAllProdutos());
        } else if (action.equalsIgnoreCase("edit")) {
            forward = INSERT_OR_EDIT;
            String nome = request.getParameter("nome");
            Produto produto = dao.getUserById(nome);
            request.setAttribute("nome", nome);
        } else if (action.equalsIgnoreCase("listProduto")) {
            forward = LIST_PRODUTO;
            request.setAttribute("produtos", dao.getAllProdutos());
        } else {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Produto produto = new Produto();
        produto.setNome(request.getParameter("Nome"));
        produto.setMarca(request.getParameter("Marca"));
        produto.setTamanho(request.getParameter("Tamanho"));
        produto.setCor(request.getParameter("Cor"));
        produto.setPreco (Double.parseDouble(request.getParameter("Preco")));
        produto.setQtdProduto(Integer.parseInt(request.getParameter("QtnProduto")));
        produto.setAvaliacao(Double.parseDouble(request.getParameter("Avaliacao")));
        produto.setDescricao(request.getParameter("Descricao"));
        String Nome = request.getParameter("Nome");
        if (Nome == null || Nome.isEmpty()) {
            dao.addProduto(produto);
        } else {
            produto.setNome(request.getParameter("Nome"));
            dao.updateProduto(produto);
        }
        RequestDispatcher view = request.getRequestDispatcher(LIST_PRODUTO);
        request.setAttribute("produtos", dao.getAllProdutos());
        view.forward(request, response);
    }
}

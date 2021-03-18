/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import conxecaoBD.BD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Produto;

/**
 *
 * @author kinha
 */
public class ProdutoDAO {

    private Connection connection;

    public ProdutoDAO() {
        connection = BD.getConnection();
    }

    public void addProduto(Produto produto) {
        try {
            PreparedStatement preparedStatement = connection
           .prepareStatement("insert into produto(Nome, Marca, Tamanho, Cor, Preço, QntProduto, Avaliacao, Descricao) values (?, ?, ?, ?, ?, ?, ?,?)");
            preparedStatement.setString(1, produto.getNome());
            preparedStatement.setString(2, produto.getMarca());
            preparedStatement.setString(3, produto.getTamanho());
            preparedStatement.setString(4, produto.getCor());
            preparedStatement.setDouble(5, produto.getPreco());
            preparedStatement.setInt(6, produto.getQtdProduto());
            preparedStatement.setDouble(7, produto.getAvaliacao());
            preparedStatement.setString(8, produto.getDescricao());
            preparedStatement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteProduto(String nome) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("delete from produto where Nome=?");
            // Parameters start with 1
            preparedStatement.setString(1, nome);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateProduto(Produto produto) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("update produto set Nome=?, Marca=?, Tamanho=?, Cor=?, Preço=?, QntProduto=?, Avaliacao=?, Descricao=?"
                            + "where Nome=?");
            // Parameters start with 1
            preparedStatement.setString(1, produto.getNome());
            preparedStatement.setString(2, produto.getMarca());
            preparedStatement.setString(3, produto.getTamanho());
            preparedStatement.setString(4, produto.getCor());
            preparedStatement.setDouble(5, produto.getPreco());
            preparedStatement.setInt(6, produto.getQtdProduto());
            preparedStatement.setDouble(7, produto.getAvaliacao());
            preparedStatement.setString(8, produto.getDescricao());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Produto> getAllProdutos() {
        List<Produto> listaDeProduto = new ArrayList<Produto>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("select * from produtos");
            while (rs.next()) {
                Produto produto = new Produto();
                produto.setNome(rs.getString("Nome"));
                produto.setMarca(rs.getString("Marca"));
                produto.setTamanho(rs.getString("Tamanho"));
                produto.setCor(rs.getString("Cor"));
                produto.setPreco(rs.getDouble("Preço"));
                produto.setQtdProduto(rs.getInt("QntProduto"));
                produto.setAvaliacao(rs.getDouble("Avaliacao"));
                produto.setDescricao(rs.getString("Descricao"));
                listaDeProduto.add(produto);
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listaDeProduto;
    }

    public Produto getUserById(String Nome) {
        Produto produto = new Produto();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from produto where nome=?");
            preparedStatement.setString(1, Nome);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                produto.setNome(rs.getString("Nome"));
                produto.setMarca(rs.getString("Marca"));
                produto.setTamanho(rs.getString("Tamanho"));
                produto.setCor(rs.getString("Cor"));
                produto.setPreco(rs.getDouble("Preço"));
                produto.setQtdProduto(rs.getInt("QtdProduto"));
                produto.setAvaliacao(rs.getDouble("Avaliacao"));
                produto.setDescricao(rs.getString("Descricao"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return produto;
    }

}

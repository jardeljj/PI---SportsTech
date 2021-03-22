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
import model.AlterarProduto;

/**
 *
 * @author kinha
 */
public class AlterarProdutoDAO {
        private Connection connection;

    public AlterarProdutoDAO() {
        connection = BD.getConnection();
    }
    
        public void updateProduto(AlterarProduto alterarProduto) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("update produto set Nome=?, Marca=?, Tamanho=?, Cor=?, Preço=?, QntProduto=?, Avaliacao=?, Descricao=?"
                            + "where id=?");
            // Parameters start with 1
            preparedStatement.setString(1, alterarProduto.getNome());
            preparedStatement.setString(2, alterarProduto.getMarca());
            preparedStatement.setString(3, alterarProduto.getTamanho());
            preparedStatement.setString(4, alterarProduto.getCor());
            preparedStatement.setDouble(5, alterarProduto.getPreco());
            preparedStatement.setInt(6, alterarProduto.getQtdProduto());
            preparedStatement.setDouble(7, alterarProduto.getAvaliacao());
            preparedStatement.setString(8, alterarProduto.getDescricao());
            preparedStatement.setInt(9, alterarProduto.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
       public AlterarProduto getUserById(int id) {
        AlterarProduto produto = new AlterarProduto();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from produto where id=?");
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                produto.setId(rs.getInt("id"));
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

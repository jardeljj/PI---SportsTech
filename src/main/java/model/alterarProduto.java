/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author kinha
 */
public class alterarProduto {
    private String nome;
    private String marca;
    private String Tamanho;
    private double Preco;
    private int quantidade;
    private double avaliacao;
    private String descricao;

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public void setTamanho(String Tamanho) {
        this.Tamanho = Tamanho;
    }

    public void setPreco(double Preco) {
        this.Preco = Preco;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public void setAvaliacao(double avaliacao) {
        this.avaliacao = avaliacao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    
}

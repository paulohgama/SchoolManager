package br.com.etecpg.Classes;

import java.util.Date;

/**
 *
 * @author PauloHGama
 */
public class Aluno {
    private long hashSenha;
    private String user;
    private long id;
    private String nome;
    private Date data;
    private String rg;
    private String image;
    private String cpf;
    private long bairro;

    public Aluno(long hashSenha, String user) {
        this.hashSenha = hashSenha;
        this.user = user;
    }

    public Aluno(long hashSenha, String user, long id, String nome, Date data, String rg, String image, String cpf, long bairro) {
        this.hashSenha = hashSenha;
        this.user = user;
        this.id = id;
        this.nome = nome;
        this.data = data;
        this.rg = rg;
        this.image = image;
        this.cpf = cpf;
        this.bairro = bairro;
    }

    public long getBairro() {
        return bairro;
    }

    public void setBairro(long bairro) {
        this.bairro = bairro;
    }

    public long getHashSenha() {
        return hashSenha;
    }

    public void setHashSenha(long hashSenha) {
        this.hashSenha = hashSenha;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    
    
}

package br.com.etecpg.Classes;

import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author PauloHGama
 */
public class GetUser {
    private String nome;
    private long id;
    private String tipo;
    
    public GetUser(String nome, long id, String tipo) {
        this.nome = nome;
        this.id = id;
        this.tipo = tipo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    
    public static GetUser getUser(String login, String pass) throws SQLException, ClassNotFoundException
    {   
        String SQL = "SELECT nmprofessor, idprofessor FROM professor WHERE nmusuario = ? AND hashpassword = ?";
        Object parameters[] = {login, pass.hashCode()};
        ArrayList<Object[]> list = ConexaoBanco.getQuery(SQL, parameters);
        if(list.isEmpty())
        {
            SQL = "SELECT nmaluno, idaluno FROM aluno WHERE nmusuario = ? AND hashpassword = ?";
            list = ConexaoBanco.getQuery(SQL, parameters);
            if(list.isEmpty())
            {
                return null;
            }
            else 
            {
                Object row[] = list.get(0);
                GetUser u = new GetUser((String) row[0], (long) row[1], "Aluno");
                return u;
            }
        }    
        else
        {
            Object row[] = list.get(0);
            GetUser u = new GetUser((String) row[0], (long) row[1], "Professor");
            return u;
        }   
    }
}

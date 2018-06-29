package br.com.etecpg.Classes;

import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author PauloHGama
 */
public class GetUser {
    private long hashpass;
    private long id;
    private String user;
    private String identificacao;

    public GetUser(long hashpass, long id, String user, String identificacao) {
        this.hashpass = hashpass;
        this.id = id;
        this.user = user;
        this.identificacao = identificacao;
    }

    public String getIdentificacao() {
        return identificacao;
    }

    public void setIdentificacao(String identificacao) {
        this.identificacao = identificacao;
    }

    public long getHashpass() {
        return hashpass;
    }

    public void setHashpass(long hashpass) {
        this.hashpass = hashpass;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
    
    public static GetUser getUser(String login, String pass) throws SQLException, ClassNotFoundException
    {   
        String SQL = "SELECT hashpassword, idprofessor, nmusuario FROM professor WHERE nmusuario = ? AND hashpassword = ?";
        Object parameters[] = {login, pass.hashCode()};
        ArrayList<Object[]> list = ConexaoBanco.getQuery(SQL, parameters);
        if(list.isEmpty())
        {
            SQL = "SELECT hashpassword, idaluno, nmusuario FROM aluno WHERE nmusuario = ? AND hashpassword = ?";
            list = ConexaoBanco.getQuery(SQL, parameters);
            if(list.isEmpty())
            {
                return null;
            }
            else 
            {
                Object row[] = list.get(0);
                GetUser u = new GetUser((long) row[0], (long) row[1], (String) row[2], "Aluno");
                return u;
            }
        }    
        else
        {
            Object row[] = list.get(0);
            GetUser u = new GetUser((long) row[0], (long) row[1], (String) row[2], "Professor");
            return u;
        }   
    }
}

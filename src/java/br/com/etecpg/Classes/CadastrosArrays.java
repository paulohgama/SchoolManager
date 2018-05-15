package br.com.etecpg.Classes;

import java.util.ArrayList;

/**
 *
 * @author PauloHGama
 */
public class CadastrosArrays {
    private ArrayList<Aluno> Alunos;

    public CadastrosArrays(ArrayList<Aluno> Alunos) {
        Alunos = new ArrayList<>();
        this.Alunos = Alunos;
    }

    
    public ArrayList<Aluno> getAlunos() {
        if(Alunos.isEmpty())
        {
            Alunos = new ArrayList<>();
        }
        return Alunos;
    }
    
    
}

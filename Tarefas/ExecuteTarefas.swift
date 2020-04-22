    //
    //  executeTarefas.swift
    //  Tarefas
    //
    //  Created by Alexandre de Oliveira Nepomuceno on 22/04/20.
    //  Copyright © 2020 Alexandre de Oliveira Nepomuceno. All rights reserved.
    //

import UIKit

class ExecuteTarefa{
    
    let chave = "minhasTarefas"
    var tarefas : [String] = []

    func Salvar(tarefa:String){
        tarefas = Listar()
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
    func Listar() -> Array<String>{
        let dados = UserDefaults.standard.object(forKey: chave)
        if dados != nil{
            return dados as! Array<String>
        }else{
            return []
        }
    }
    
    func Remover(indice : Int)  {
        tarefas = Listar()
        tarefas.remove(at: indice)
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
}

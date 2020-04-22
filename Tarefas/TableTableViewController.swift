//
//  TableTableViewController.swift
//  Tarefas
//
//  Created by Alexandre de Oliveira Nepomuceno on 22/04/20.
//  Copyright © 2020 Alexandre de Oliveira Nepomuceno. All rights reserved.
//

import UIKit

class TableTableViewController: UITableViewController {
    
    var tarefas: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        AtualizarTarefas()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tarefas.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "dadosCelula", for: indexPath)
        celula.textLabel?.text = tarefas[indexPath.row]
        
        return celula
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
      
        if editingStyle == UITableViewCell.EditingStyle.delete{
            let classExecuteTarefa = ExecuteTarefa()
            classExecuteTarefa.Remover(indice: indexPath.row)
            AtualizarTarefas()
        }
        
    }
    
    func AtualizarTarefas(){
        let classTarefa = ExecuteTarefa()
        tarefas = classTarefa.Listar()
        tableView.reloadData()
    }

}

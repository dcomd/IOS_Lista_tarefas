//
//  ViewController.swift
//  Tarefas
//
//  Created by Alexandre de Oliveira Nepomuceno on 22/04/20.
//  Copyright © 2020 Alexandre de Oliveira Nepomuceno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textTarefas: UITextField!
    
    @IBAction func btnSalvar(_ sender: Any) {
        
        if let textTarefa = textTarefas.text{
            let tarefa = ExecuteTarefa()
            tarefa.Salvar(tarefa: textTarefa)
            textTarefas.text = ""
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }


}


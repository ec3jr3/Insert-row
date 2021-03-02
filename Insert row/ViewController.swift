//
//  ViewController.swift
//  Insert row
//
//  Created by Andres Castellanos on 10/12/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate

{
    //@IBOutlet var boton: UIButton!
    @IBOutlet var textoInsert: UITextField!
    @IBOutlet var tableView: UITableView!
    
    var lista = ["peanut butter","soda","ice cream"]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
    
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = lista[indexPath.row]
        
        return cell
    }
    
    @IBAction func Addbuton(_ sender: UIButton)
    {
        insert()
    }
    
    func insert()
    {
        lista.append(textoInsert.text!)
        
        let indexPath = IndexPath(row: lista.count - 1, section: 0)
        
        tableView.beginUpdates()
        tableView.insertRows(at: [indexPath], with: .automatic)
        tableView.endUpdates()
        
        textoInsert.text = ""
        view.endEditing(true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}


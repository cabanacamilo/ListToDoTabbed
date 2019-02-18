//
//  SecondViewController.swift
//  ListToDoTabbed
//
//  Created by Camilo Cabana on 2/18/19.
//  Copyright © 2019 Camilo Cabana. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var itemToAdd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
    }
    
    @IBAction func addItemButton(_ sender: Any) {
        var checkItem = true
        if itemToAdd.text != ""{
            listToDo.forEach { (existingItem) in
                if existingItem.lowercased() == itemToAdd.text?.lowercased(){
                    checkItem = false
                    return
                }
            }
            if checkItem{
                listToDo.append(itemToAdd.text!)
                itemToAdd.text =  ""
            }
            else{
                alertMessage(title: "Alert", message: "The item already exist")
            }
        }
    }
}


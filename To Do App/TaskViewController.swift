//
//  TaskViewController.swift
//  To Do App
//
//  Created by Akmaral Ergesh on 12.02.2024.
//

import UIKit

class TaskViewController: UIViewController {

    //MARK: IBOutlet
    @IBOutlet var label: UILabel!
    
    var task: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = task
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
    }
    
    @objc func deleteTask(){
        
    }
    

}

//
//  EntryViewController.swift
//  To Do App
//
//  Created by Akmaral Ergesh on 12.02.2024.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {

    //MARK: IBOutlet UITextField
    @IBOutlet var textField: UITextField!
    var update: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveTask))
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveTask()
        return true
    }

    @objc func saveTask() {
        guard let text = textField.text, !text.isEmpty else {
            return
        }
        
        guard let count = UserDefaults().value(forKey: "count") as? Int else {
            return
        }
        let newCount = count + 1
        UserDefaults().setValue(newCount, forKey: "count")
        UserDefaults().setValue(text, forKey: "task_\(newCount)")
        
        update?()
        navigationController?.popViewController(animated: true)
    }
}

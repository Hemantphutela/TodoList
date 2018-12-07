//
//  NotesViewController.swift
//  TodoList
//
//  Created by Hemant Phutela on 07/12/2018.
//  Copyright © 2018 Hemant Phutela. All rights reserved.
//

import UIKit

class NotesViewController: UIViewController {

    @IBOutlet weak var textView: UITextField!
    
    @IBOutlet weak var save: UIButton!
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButton(_ sender: UIButton) {
        dismiss(animated: true)
        textView.resignFirstResponder()
       
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        
        if textView?.text != ""{
            
        }
       
        dismiss(animated: true)
        textView.resignFirstResponder()
    
    }
   
 

}

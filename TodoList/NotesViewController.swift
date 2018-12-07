//
//  NotesViewController.swift
//  TodoList
//
//  Created by Hemant Phutela on 07/12/2018.
//  Copyright © 2018 Hemant Phutela. All rights reserved.
//

import UIKit
import CoreData

class NotesViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textView: UITextField!
    
    @IBOutlet weak var save: UIButton!
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var itemName: [NSManagedObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Notes")
        do{
            itemName = try context.fetch(fetchRequest)
        }
        catch{
            print("Error in Loading data")
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButton(_ sender: UIButton) {
        dismiss(animated: true)
        textView.resignFirstResponder()
       
    }
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        
        if textView?.text != ""{
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
           let entity = NSEntityDescription.entity(forEntityName: "Notes", in: context)!
            let theNotes = NSManagedObject(entity: entity, insertInto: context)
            theNotes.setValue(self.textView?.text, forKey: "notes")
        }
        
        do{
            try context.save()
            
       
        } catch
        
        {
            print("Error Saving Notes")
        }
        dismiss(animated: true)
        textView.resignFirstResponder()
        //textView.setValue(textView.text, forKey: "title")
        
    
    }
   
 

}

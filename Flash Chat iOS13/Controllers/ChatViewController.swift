//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    var messages: [Message] = [
        Message(sender: "1@2.com", body: "first messageirst messageirst messageirst messageirst messageirst messageirst messageirst messageirst message"),
        Message(sender: "a@b.com", body: "second message"),
        Message(sender: "1@2.com", body: "third message")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        navigationItem.hidesBackButton = true
        title = K.appName
        
        //nibName is the name of the cell file without .xib
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        do {
          try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print ("Error signing out: %@", signOutError)
        }
          
    }
    
}

// MARK: - UITableViewDataSource
extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCell
//        cell.textLabel?.text = messages[indexPath.row].body
        cell.label.text = messages[indexPath.row].body
        return cell
    }
    
    
}

//
//  EditViewController.swift
//  Lesson4
//
//  Created by Алексей Горбунов on 28.10.2021.
//

import UIKit

class EditViewController: UIViewController {

    //MARK: - Properties
    var user = User()
    weak var delegateMainCell: TableViewCellDelegate?
    weak var delegateInfoCell: TableViewCellDelegate?
    weak var delegatePostCell: TableViewCellDelegate?
    
    //MARK: - Outlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var statusTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    
    //MARK: - Actions
    @IBAction func signoutAction(_ sender: Any) {
        DataManager.user = nil
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func confirmChangesAction(_ sender: Any) {
        
        var user = self.user
        
        if nameTextField.text != "" {
            user.name = nameTextField.text ?? "Иван Иванов"
        }
        if statusTextField.text != "" {
            user.status = statusTextField.text ?? "Статус"
        }
        if cityTextField.text != "" {
            user.city = cityTextField.text ?? "Казань"
        }
        
        DataManager.user = user
        
        delegateMainCell?.didDataChange(user: user)
        delegateInfoCell?.didDataChange(user: user)
        delegatePostCell?.didDataChange(user: user)
        
        navigationController?.popViewController(animated: true)
    }
}

//MARK: - Protocol Table View Cell Delegate
protocol TableViewCellDelegate: AnyObject {
    func didDataChange(user: User)
}

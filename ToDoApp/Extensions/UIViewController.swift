//
//  AlertViewController.swift
//  ToDoApp
//
//  Created by Bruno Kučević on 01/05/2020.
//  Copyright © 2020 Bruno Kučević. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func showAlertController(title: String, message: String, okCompletion: @escaping (String?) -> Void){
        var textFieldCatName = UITextField()
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (uiAlertAction) in
            if textFieldCatName.text!.isStringNilOrEmpty() {
                return
            }
            else {
                okCompletion(textFieldCatName.text)
            }
        }
        alert.addAction(okAction)
        alert.addTextField { (uiTextField) in
            textFieldCatName = uiTextField
            textFieldCatName.placeholder = "Add a category name"
        }
        self.present(alert, animated: true, completion: nil)
    }
}


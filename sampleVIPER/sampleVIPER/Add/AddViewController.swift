//
//  AddViewController.swift
//  sampleVIPER
//
//  Created by luc Casimir on 04/07/2017.
//  Copyright © 2017 Owee. All rights reserved.
//

import Foundation
import UIKit

class AddViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak var saveButton: UIButton!{
        didSet{
            saveButton.isEnabled = false
        }
    }
    @IBOutlet weak var clientTextField: UITextField!{
        didSet{
            clientTextField.delegate = self
        }
    }
    @IBOutlet weak var nameTextField: UITextField!{
        didSet{
            nameTextField.delegate = self
        }
    }

    // MARK: Properties
    
    var presenter: AddViewToPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    #if DEBUG
    deinit{ print("🗑: AddViewController") }
    #endif
    
    // MARK: - Actions
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
        guard let name = nameTextField.text, let client = clientTextField.text else {
            return ;
        }
        let newDevelopper = DevelopperViewModel(name: name, client: client)
        presenter?.addNewDevelopper(Name: name, Client: client)
        clientTextField.text = ""
        nameTextField.text = ""
        saveButton.isEnabled = false
    }
    
}


extension AddViewController: AddPresenterToViewProtocol {
    // TODO: implement view methods called by the presenter
}

    // MARK: - TextFieldDelegate

extension AddViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let client = clientTextField.text,
            let name = nameTextField.text {
            if !client.isEmpty || !name.isEmpty {
                saveButton.isEnabled = true
            }
        }
        return textField.resignFirstResponder()
    }
}

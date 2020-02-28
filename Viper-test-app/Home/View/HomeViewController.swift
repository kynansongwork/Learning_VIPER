//
//  HomeViewController.swift
//  Generated using vipergen
//
//  Created by Kynan Song on 28/02/2020.
//  Copyright © 2020 xDesign. All rights reserved.
//

import Foundation
import UIKit

protocol HomeViewInput: class {
    func showButton(bool: Bool)
}

class HomeViewController: UIViewController {
    
    @IBOutlet weak var testTextField: UITextField!
    @IBOutlet weak var printButton: UIButton!
    
    var presenter: HomeViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = HomeModule.build(viewController: self)
        printButton.isEnabled = false
        testTextField.delegate = self
        testTextField.addTarget(self, action: #selector(enableLoginButton), for: .editingChanged)
    }
    
    @objc func enableLoginButton(_ textField: UITextField) {
        presenter.validateText(textField: textField.text)
    }
    
    @IBAction func printButtonTapped(_ sender: Any) {
        guard let text = testTextField.text else { return }
        print(text)
    }
}

extension HomeViewController: HomeViewInput {
    func showButton(bool: Bool) {
        if bool {
            printButton.isEnabled = true
        } else {
            printButton.isEnabled = false
        }
    }
    
    
}

extension HomeViewController: UITextFieldDelegate {
    
}

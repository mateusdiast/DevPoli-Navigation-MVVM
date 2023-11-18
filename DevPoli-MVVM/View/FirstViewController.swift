//
//  ViewController.swift
//  DevPoli-MVVM
//
//  Created by mateusdias on 02/11/23.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var passViewBtn: UIButton!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
      
    
    let firstViewModel = FirstViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstViewModel.delegate = self
        passViewBtn.configuration?.title = "SEND"
        userNameTextField.placeholder = "Ex: Mateus Martins"
        titleLabel.text = "Type your full name:"
    }
    
    
    @IBAction func navigateBtnTap(_ sender: UIButton) {
        firstViewModel.userNameValidation(userName: userNameTextField.text)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let secondViewController = segue.destination as? SecondViewController {
            secondViewController.userNameValue = userNameTextField.text!
        }
        
    }

}

extension FirstViewController: FirstViewModelDelegate {
    
    
    func validateResult() {
        let alertNameIsInvalidate = UIAlertController(title: "Error!", message: "Type your full name", preferredStyle: UIAlertController.Style.alert)
        alertNameIsInvalidate.addAction(UIAlertAction(title: "Type Again!", style: UIAlertAction.Style.default, handler: nil))
        self.present(alertNameIsInvalidate, animated: true, completion: nil)
        userNameTextField.text = ""
    }
    
    func navigationNextView() {
        performSegue(withIdentifier: "goToSecondView", sender: nil)
        userNameTextField.text = ""
    }
    
}



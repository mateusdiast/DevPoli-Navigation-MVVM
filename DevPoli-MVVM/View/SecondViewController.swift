//
//  ViewController.swift
//  DevPoli-MVVM
//
//  Created by mateusdias on 03/11/23.
//

import UIKit


class SecondViewController: UIViewController{
    
    @IBOutlet weak var passViewBtn: UIButton!
    @IBOutlet weak var titleViewLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var datePickerValue: UIDatePicker!
    
    var userNameValue: String = ""
    let secondViewModel = SecondViewModel()
    
    
    override func viewDidLoad(){
      super.viewDidLoad()
        secondViewModel.delegate = self
        titleViewLabel.text = userNameValue
        birthLabel.text = "Date of birth:"
        passViewBtn.configuration?.title = "Send"
    }

    @IBAction func navigateBtnTap(_ sender: UIButton) {
        secondViewModel.validateDate(datePickerValue: datePickerValue.date)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if 
        let thirdViewController = segue.destination as? ThirdViewController ,
        let date = sender as? Int
        {
            thirdViewController.userDateValue = date
            thirdViewController.userNameValue = userNameValue
        }
    }
}


extension SecondViewController: SecondViewModelDelegate {
    
    func validateResult() {
        let alertDateIsInvalidate = UIAlertController(title: "Error", message: "Type a valid date", preferredStyle: UIAlertController.Style.alert)
        alertDateIsInvalidate.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.default, handler: nil))
        self.present(alertDateIsInvalidate, animated: true, completion: nil)
        
    }
    
    func navigationNextView(date: Int) {
        performSegue(withIdentifier: "goToThirdView", sender: date)
    }
}
  

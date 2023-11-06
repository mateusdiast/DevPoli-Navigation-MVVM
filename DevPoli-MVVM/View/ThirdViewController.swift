//
//  ThirdViewController.swift
//  DevPoli-MVVM
//
//  Created by mateusdias on 03/11/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var passViewBtn: UIButton!
    @IBOutlet weak var titleViewLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let thirdViewModal = ThirdViewModel()
        thirdViewModal.delegate = self
        thirdViewModal.onLoad()
        passViewBtn.configuration?.title = "Return to first view"
    }
    
    @IBAction func navigateBtnTap(_ sender: UIButton){
        navigationController?.popToRootViewController(animated: true)
        }
    }
    


extension ThirdViewController: ThirdViewModelDelegate {
    func getNameOfTheView(nameOfTheView: String) {
        titleViewLabel.text = nameOfTheView
    }
}

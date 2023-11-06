//
//  ThirdViewModel.swift
//  DevPoli-MVVM
//
//  Created by mateusdias on 03/11/23.
//

import Foundation

protocol ThirdViewModelDelegate: AnyObject {
    func getNameOfTheView(nameOfTheView: String)
}

class ThirdViewModel {
    
    let nameOfTheView = NameViewsModel()
    
    weak var delegate: ThirdViewModelDelegate?
    
    func onLoad(){
        delegate?.getNameOfTheView(nameOfTheView: nameOfTheView.thirdViewName)
    }
    
    func teste() {
        
    }
        
}

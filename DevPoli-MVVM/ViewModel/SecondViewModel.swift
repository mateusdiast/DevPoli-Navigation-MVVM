//
//  SecondViewModel.swift
//  DevPoli-MVVM
//
//  Created by mateusdias on 03/11/23.
//

import Foundation

protocol SecondViewModelDelegate: AnyObject{
    func getNameOfTheView(nameOfTheView: String)
}

class SecondViewModel {
    
    let nameOfTheView = NameViewsModel()
    
    weak var delegate: SecondViewModelDelegate?
    
    func onLoad() {
        delegate?.getNameOfTheView(nameOfTheView: nameOfTheView.secondViewName)
    }
    
    
}

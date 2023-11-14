//
//  FirstViewModel.swift
//  DevPoli-MVVM
//
//  Created by mateusdias on 02/11/23.
//

import Foundation

protocol FirstViewModelDelegate: AnyObject{
    func validateResult()
    func navigationNextView()
}

class FirstViewModel {
    
    weak var delegate: FirstViewModelDelegate?
    
    func userNameValidation(userName: String?){
        
        let userNameRegex = UserNameRegex()
        let result = userName?.range(of: userNameRegex.userNamePattern, options: .regularExpression)
        
        if result != nil {
            delegate?.navigationNextView()
        }else{
            delegate?.validateResult()
        }
    }

    
    
}

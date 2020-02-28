//
//  HomePresenter.swift
//  Generated using vipergen
//
//  Created by Kynan Song on 28/02/2020.
//  Copyright © 2020 xDesign. All rights reserved.
//

import Foundation

protocol HomeViewOutput: class {
    func validateText(textField: String?)
}

protocol HomeInteractorOutput: class { }

class HomePresenter {
    
    private let wireframe: IHomeWireframe
    private let interactor: HomeInteractorInput
    private weak var userInterface: HomeViewInput!
    
    init(wireframe: IHomeWireframe, interactor: HomeInteractorInput, userInterface: HomeViewInput) {
        self.wireframe = wireframe
        self.interactor = interactor
        self.userInterface = userInterface
    }
    
    func validateText(textField: String?) {
        guard let testText = textField, !testText.isEmpty else {
            userInterface.showButton(bool: false)
            return
        }
        
        if testText.count == 4 {
            userInterface.showButton(bool: true)
        }
    }
    
}

// MARK: - HomeViewOutput

extension HomePresenter: HomeViewOutput {
}

// MARK: - HomeInteractorOutput

extension HomePresenter: HomeInteractorOutput { }

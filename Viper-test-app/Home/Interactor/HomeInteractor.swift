//
//  HomeInteractor.swift
//  Generated using vipergen
//
//  Created by Kynan Song on 28/02/2020.
//  Copyright © 2020 xDesign. All rights reserved.
//

import Foundation

protocol HomeInteractorInput: class { }

class HomeInteractor {
    
    weak var presenter: HomeInteractorOutput!
    
}

extension HomeInteractor: HomeInteractorInput { }

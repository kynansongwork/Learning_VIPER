//
//  HomeModuleBuilder.swift
//  Generated using vipergen
//
//  Created by Kynan Song on 28/02/2020.
//  Copyright © 2020 xDesign. All rights reserved.
//

import Foundation
import UIKit

struct HomeModule {

    let viewController: HomeViewController
    let wireframe: HomeWireframe
    
    static func build(viewController: HomeViewController) -> HomeModule {
        let wireframe = HomeWireframe()
        let interactor = HomeInteractor()
        let presenter = HomePresenter(wireframe: wireframe,
                                            interactor: interactor,
                                            userInterface: viewController)
        
        wireframe.presenter = presenter
        wireframe.viewController = viewController
        
        interactor.presenter = presenter
        
        viewController.presenter = presenter
        
        return HomeModule(viewController: viewController, wireframe: wireframe)
    }
    
}

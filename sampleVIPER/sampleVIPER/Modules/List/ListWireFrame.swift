//
//  ListWireFrame.swift
//  sampleVIPER
//
//  Created by luc Casimir on 04/07/2017.
//  Copyright © 2017 Owee. All rights reserved.
//

import Foundation
import UIKit


class ListWireframe {

    
    // MARK: Class methods

    class func setupModule(with delegate:ListDelegate? = nil ) -> UIViewController {
        
        guard let viewController = UIStoryboard(name: "List", bundle: nil).instantiateInitialViewController() as? ListViewController
            else {
            return UIViewController()
        }
        
        // Generating module components
        let presenter = ListPresenter()
        let wireframe = ListWireframe()
        let interactor = ListInteractor()
        let dataManager = ListDataManager()
     
        // Connecting
        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.wireframe = wireframe
        presenter.interactor = interactor
        presenter.delegate = delegate
        
        interactor.dataManager = dataManager
        interactor.presenter = presenter

        return viewController
    }
    
}


//MARK: Protocol used by Presenter
extension ListWireframe : ListPresenterToWireframeProtocol{

}

//
//  AddWireFrame.swift
//  sampleVIPER
//
//  Created by luc Casimir on 04/07/2017.
//  Copyright © 2017 Owee. All rights reserved.
//

import Foundation
import UIKit


class AddWireframe {

    
    // MARK: Class methods

    class func setupModule(with delegate:AddDelegate? = nil ) -> UIViewController {
        
        guard let viewController = UIStoryboard(name: "Add", bundle: nil).instantiateInitialViewController() as? AddViewController
            else {
            return UIViewController()
        }
        
        // Generating module components
        let presenter = AddPresenter()
        let wireframe = AddWireframe()
        let interactor = AddInteractor()
        let dataManager = AddDataManager()
     
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
extension AddWireframe : AddPresenterToWireframeProtocol{

}

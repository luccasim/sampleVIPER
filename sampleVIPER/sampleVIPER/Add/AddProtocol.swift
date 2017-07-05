//
//  AddProtocol.swift
//  sampleVIPER
//
//  Created by luc Casimir on 04/07/2017.
//  Copyright © 2017 Owee. All rights reserved.
//

import Foundation


//MARK: Module Delegate used by others modules (optional)
protocol AddDelegate: class {
    
}


//MARK: Presenter -> View
protocol AddPresenterToViewProtocol: class {
    // TODO: Declare methods in View 
}


//MARK: View -> Presenter
protocol AddViewToPresenterProtocol: class {
    // TODO: Declare methods in Presenter
    func addNewDevelopper(Name name:String, Client client:String)
}


//MARK: Interactor -> Presenter
protocol AddInteractorToPresenterProtocol: class {
    // TODO: Declare methods in Presenter
}


//MARK: Presenter -> Interactor
protocol AddPresenterToInteractorProtocol: class {
    // TODO: Declare methods in Interactor
    func saveNewDevelopper(Name name:String, Client client:String) -> Developper?
}


//MARK: Presenter -> Wireframe
protocol AddPresenterToWireframeProtocol: class {
    // TODO: Declare methods in Wireframe
}


//MARK: Interactor -> DataManager
protocol AddInteractorToDataManagerProtocol: class {
    // TODO: Declare methods in DataManager
    func createNewDevelopper(Name name:String, Client client:String) -> Developper?
}

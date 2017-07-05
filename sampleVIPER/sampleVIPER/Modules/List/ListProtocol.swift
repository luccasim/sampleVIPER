//
//  ListProtocol.swift
//  sampleVIPER
//
//  Created by luc Casimir on 04/07/2017.
//  Copyright © 2017 Owee. All rights reserved.
//

import Foundation


//MARK: Module Delegate used by others modules (optional)
protocol ListDelegate: class {
    
}


//MARK: Presenter -> View
protocol ListPresenterToViewProtocol: class {
    // TODO: Declare methods in View
    func reloadInterface(with devs:[DevelopperViewModel])
    func insert(Developper developper:DevelopperViewModel)
}


//MARK: View -> Presenter
protocol ListViewToPresenterProtocol: class {
    // TODO: Declare methods in Presenter
    func loadDevelopper()
    func displayAddModule(from view:ListViewToPresenterProtocol)
}


//MARK: Interactor -> Presenter
protocol ListInteractorToPresenterProtocol: class {
    // TODO: Declare methods in Presenter
    func didRetrieveDevelopper(_ developpers:[Developper])
}


//MARK: Presenter -> Interactor
protocol ListPresenterToInteractorProtocol: class {
    // TODO: Declare methods in Interactor
    func retrieveDeveloppers()
}


//MARK: Presenter -> Wireframe
protocol ListPresenterToWireframeProtocol: class {
    // TODO: Declare methods in Wireframe
}


//MARK: Interactor -> DataManager
protocol ListInteractorToDataManagerProtocol: class {
    // TODO: Declare methods in DataManager
    func fetchDeveloppers() -> [Developper]
}

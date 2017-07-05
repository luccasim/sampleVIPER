//
//  ListPresenter.swift
//  sampleVIPER
//
//  Created by luc Casimir on 04/07/2017.
//  Copyright © 2017 Owee. All rights reserved.
//

import Foundation

class ListPresenter {

    // MARK: Properties
    weak var view:  ListPresenterToViewProtocol?
    var interactor: ListPresenterToInteractorProtocol?
    var wireframe:  ListPresenterToWireframeProtocol?
    weak var delegate: ListDelegate?
   
    #if DEBUG
    deinit{ print("🗑: ListPresenter") }
    #endif
}


//MARK : View (Call) -> Presenter(Implement)
extension ListPresenter: ListViewToPresenterProtocol {
    func loadDevelopper() {
        interactor?.retrieveDeveloppers()
    }
    
    func displayAddModule(from view: ListViewToPresenterProtocol) {
    }
}

//MARK : Interactor (Call) -> Presenter(Implement)
extension ListPresenter: ListInteractorToPresenterProtocol {
    func didRetrieveDevelopper(_ developpers: [Developper]) {
        let viewModels = developpers.map() { dev -> DevelopperViewModel in
            let name = dev.name ?? "Unknow"
            let client = dev.client ?? "Unknow"
            return DevelopperViewModel(name: name, client: client)
        }
        view?.reloadInterface(with: viewModels)
    }
}

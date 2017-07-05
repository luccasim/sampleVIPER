//
//  AddInteractor.swift
//  sampleVIPER
//
//  Created by luc Casimir on 04/07/2017.
//  Copyright © 2017 Owee. All rights reserved.
//

import Foundation


class AddInteractor {

    // MARK: Properties

    weak var presenter: AddInteractorToPresenterProtocol?
    var dataManager:    AddInteractorToDataManagerProtocol?
    
   
    #if DEBUG
    deinit{ print("🗑: AddInteractor") }
    #endif
}

extension AddInteractor: AddPresenterToInteractorProtocol {
    // TODO: Implement use case methods
    // Presenter ->  Interactor
    func saveNewDevelopper(Name name: String, Client client: String) -> Developper? {
        return dataManager?.createNewDevelopper(Name: name, Client: client)
    }
}

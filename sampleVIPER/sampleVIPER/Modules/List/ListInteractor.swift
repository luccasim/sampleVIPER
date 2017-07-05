//
//  ListInteractor.swift
//  sampleVIPER
//
//  Created by luc Casimir on 04/07/2017.
//  Copyright © 2017 Owee. All rights reserved.
//

import Foundation


class ListInteractor {

    // MARK: Properties

    weak var presenter: ListInteractorToPresenterProtocol?
    var dataManager:    ListInteractorToDataManagerProtocol?
    
   
    #if DEBUG
    deinit{ print("🗑: ListInteractor") }
    #endif
}

extension ListInteractor: ListPresenterToInteractorProtocol {
    // TODO: Implement use case methods
    // Presenter ->  Interactor
    func retrieveDeveloppers() {
        let devs = dataManager?.fetchDeveloppers()
        presenter?.didRetrieveDevelopper(devs ?? [])
    }
}

//
//  AddPresenter.swift
//  sampleVIPER
//
//  Created by luc Casimir on 04/07/2017.
//  Copyright © 2017 Owee. All rights reserved.
//

import Foundation

class AddPresenter {

    // MARK: Properties
    weak var view:  AddPresenterToViewProtocol?
    var interactor: AddPresenterToInteractorProtocol?
    var wireframe:  AddPresenterToWireframeProtocol?
    weak var delegate: AddDelegate?
   
    #if DEBUG
    deinit{ print("🗑: AddPresenter") }
    #endif
}


//MARK : View (Call) -> Presenter(Implement)
extension AddPresenter: AddViewToPresenterProtocol {
    func addNewDevelopper(Name name: String, Client client: String) {
        interactor?.saveNewDevelopper(Name: name, Client: client)
    }
}

//MARK : Interactor (Call) -> Presenter(Implement)
extension AddPresenter: AddInteractorToPresenterProtocol {
    // TODO: implement interactor output methods

}

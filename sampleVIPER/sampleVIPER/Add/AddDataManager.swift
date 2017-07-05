//
//  AddDataManager.swift
//  sampleVIPER
//
//  Created by luc Casimir on 04/07/2017.
//  Copyright © 2017 Owee. All rights reserved.
//

import Foundation
import CoreData


class AddDataManager {

}

//MARK: Interactor ->  DataManager
extension AddDataManager: AddInteractorToDataManagerProtocol {
    func createNewDevelopper(Name name: String, Client client: String) -> Developper? {
        guard let context = CoreDataStore.context, let entity = NSEntityDescription.entity(forEntityName: "Developper", in: context) else {
            return nil
        }
        let dev = Developper(entity: entity, insertInto: context)
        dev.name = name
        dev.client = client
        try? context.save()
        return dev
    }
}

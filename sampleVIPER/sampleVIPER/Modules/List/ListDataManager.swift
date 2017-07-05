//
//  ListDataManager.swift
//  sampleVIPER
//
//  Created by luc Casimir on 04/07/2017.
//  Copyright © 2017 Owee. All rights reserved.
//

import Foundation
import CoreData

class ListDataManager {

}

//MARK: Interactor ->  DataManager
extension ListDataManager: ListInteractorToDataManagerProtocol {
    // TODO: Implement methods
    func fetchDeveloppers() -> [Developper] {
        guard let context = CoreDataStore.context else {
            return []
        }
        let fetchRequest = NSFetchRequest<Developper>.init(entityName: String(describing: Developper.self))
        var result : [Developper] = []
        do {
            result = try context.fetch(fetchRequest)
        }
        catch let err {
            print(err)
        }
        return result
    }
}

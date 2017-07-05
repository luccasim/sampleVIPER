//
//  Developper+CoreDataProperties.swift
//  sampleVIPER
//
//  Created by luc Casimir on 04/07/2017.
//  Copyright © 2017 Owee. All rights reserved.
//

import Foundation
import CoreData


extension Developper {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Developper> {
        return NSFetchRequest<Developper>(entityName: "Developper")
    }

    @NSManaged public var name: String?
    @NSManaged public var client: String?

}

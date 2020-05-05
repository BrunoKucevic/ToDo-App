//
//  Item.swift
//  ToDoApp
//
//  Created by Bruno Kučević on 05/05/2020.
//  Copyright © 2020 Bruno Kučević. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object{
    @objc dynamic var name : String = ""
    var linkingCategory = LinkingObjects(fromType: Category.self, property: "items")
}

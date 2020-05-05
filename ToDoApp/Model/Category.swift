//
//  Category.swift
//  ToDoApp
//
//  Created by Bruno Kučević on 02/05/2020.
//  Copyright © 2020 Bruno Kučević. All rights reserved.
//

import Foundation
import RealmSwift

class Category : Object{
    @objc dynamic var name : String = ""
    @objc dynamic var color : String = ""
    //add relationships as simple as
    var items = List<Item>()
    
}

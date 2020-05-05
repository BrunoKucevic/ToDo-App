//
//  ToDoItemsViewController.swift
//  ToDoApp
//
//  Created by Bruno Kučević on 05/05/2020.
//  Copyright © 2020 Bruno Kučević. All rights reserved.
//

import Foundation
import RealmSwift

class ToDoItemsViewController: TableViewSuperClass<Item> {
    
    let realm = try! Realm()
    var linkingCategory : Category?{
        didSet{
            loadItems();
        }
    }
    
    func loadItems(){
        entityArray = linkingCategory?.items.sorted(byKeyPath: "name", ascending: true)
    }
}

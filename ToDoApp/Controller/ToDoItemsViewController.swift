//
//  ToDoItemsViewController.swift
//  ToDoApp
//
//  Created by Bruno Kučević on 05/05/2020.
//  Copyright © 2020 Bruno Kučević. All rights reserved.
//

import Foundation
import RealmSwift

class ToDoItemsViewController: TableViewSuperClass<Item, Category> {
    
//    var linkingCategory : Category?{
//        didSet{
//            loadItems();
//        }
//    }
    
    override func loadData() {
        entityArray = parentEntity?.items.sorted(byKeyPath: "name", ascending: true)
    }
    
    override func buttonTapped() {
        print("pero")
    }
//    func loadItems(){
//        entityArray = linkingCategory?.items.sorted(byKeyPath: "name", ascending: true)
//    }
}

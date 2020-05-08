//
//  TableViewSuperClass.swift
//  ToDoApp
//
//  Created by Bruno Kučević on 02/05/2020.
//  Copyright © 2020 Bruno Kučević. All rights reserved.
//

import Foundation
import RealmSwift

class TableViewSuperClass<T: Object>: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var entity = T()
    var entityArray : Results<T>?
    var notificationToken : NotificationToken?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //reloadData()
        loadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        notificationToken = RealmService.shared.realm.observe { (notification, realm) in
            self.reloadData()
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        notificationToken?.invalidate()
    }
    
    //    override func viewWillAppear(_ animated: Bool) {
    //        //entityArray = RealmService.shared.realm.objects(T.self)
    //        reloadData()
    //    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init? (coder decoder: NSCoder, _ entity: T) {
        super.init(coder: decoder)
        self.entity = entity
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entityArray?.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as! CustomCellTableViewCell
        //        cell.layer.borderWidth = 0.2
        //        cell.layer.borderColor = UIColor.black.cgColor
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didSelectRowAtLogic(indexPath)
    }
    
    func reloadData(){
        
    }
    
    func loadData(){
        
    }
    
    func didSelectRowAtLogic(_ indexPath : IndexPath){
        
    }
}

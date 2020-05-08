//
//  ViewController.swift
//  ToDoApp
//
//  Created by Bruno Kučević on 01/05/2020.
//  Copyright © 2020 Bruno Kučević. All rights reserved.
//

import UIKit

class ToDoCategoryViewController: TableViewSuperClass<Category> {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "CustomCellTableViewCell", bundle: nil), forCellReuseIdentifier: "CategoryCell")
        //self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
    }
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        /*TODO: open alert controller*/
        self.showAlertController(title: "Pero", message: "Message") { (string) in
            guard let str = string else {return}
            let category = Category()
            category.name = str
            category.color = "Black"
            RealmService.shared.save(category)
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = super.tableView(tableView, cellForRowAt: indexPath) as! CustomCellTableViewCell
        cell.titleLabel.text = entityArray?[indexPath.row].name
        //cell.subTitleLabel.text = entityArray?[indexPath.row].name
        cell.delegate = self
        return cell
    }
    
    override func reloadData(){
        self.tableView.reloadData()
        
        //self.tableView.backgroundColor = UIColor.gray
    }
    
    override func loadData(){
        entityArray = RealmService.shared.realm.objects(Category.self)
        self.tableView.rowHeight = 80
    }
    
    override func didSelectRowAtLogic(_ indexpath : IndexPath){
        performSegue(withIdentifier: "goToItems", sender: self)
        tableView.deselectRow(at: indexpath, animated: false)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ToDoItemsViewController
        
        guard let currentIndex = tableView.indexPathForSelectedRow else {return}
        
        destinationVC.linkingCategory = entityArray?[currentIndex.row]
    }
}

extension ToDoCategoryViewController : CustomCellTableViewCellDelegate{
    func addQuantityButtonTapped() {
        print("added")
    }
    
    func subtractQuantityButtonTapped() {
        print("removed")
    }
}


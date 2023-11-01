//
//  TableViewController.swift
//  FoodApp
//
//  Created by maks on 30.10.2023.
//

import UIKit

class TableViewController: UITableViewController {

    var typeDishes = TypeDishes.getDihes()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        typeDishes[section].title
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        typeDishes.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        typeDishes[section].dishes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let text = typeDishes[indexPath.section].dishes[indexPath.row]
        
        
        cell.textLabel?.text = text
        return cell
    }
}

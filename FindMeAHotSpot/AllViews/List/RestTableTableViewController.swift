//
//  RestTableTableViewController.swift
//  FindMeAHotSpot
//
//  Created by Mohammad Farzane on 2019-03-15.
//  Copyright © 2019 ShahinFarzane. All rights reserved.
//

import UIKit


protocol ListActions: class {
    func didTapCell(_ viewController: UIViewController, viewModel: RestaurantListViewModel)
}

class RestTableTableViewController: UITableViewController {
    var viewModels = [RestaurantListViewModel]() {
        didSet {
            tableView.reloadData()
        }
    }
    weak var delegete: ListActions?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModels.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantCell", for: indexPath) as! RestTableViewCell
        
        let viewModel = viewModels[indexPath.row]
        cell.configure(with: viewModel)
        
        return cell
    }
    
    // MARK: - Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let detailsViewController = storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") else { return }
        navigationController?.pushViewController(detailsViewController, animated: true)
        let viewModel = viewModels[indexPath.row]
        delegete?.didTapCell(detailsViewController, viewModel: viewModel)
    }
}

//
//  CartViewController.swift
//  ThirdMission
//
//  Created by Rafael on 10/12/23.
//

import UIKit

class CartViewController: UIViewController {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(DescriptionCell.self, forCellReuseIdentifier: DescriptionCell.cellID)
        tableView.register(MainOptionCell.self, forCellReuseIdentifier: MainOptionCell.cellID)
        tableView.register(SubOptionCell.self, forCellReuseIdentifier: SubOptionCell.cellID)
        tableView.separatorStyle = .none
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(tableView)
    }

}

extension CartViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension CartViewController: UITableViewDelegate {
}

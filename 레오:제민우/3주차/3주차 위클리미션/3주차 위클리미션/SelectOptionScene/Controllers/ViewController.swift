//
//  ViewController.swift
//  3주차 위클리미션
//
//  Created by 제민우 on 2023/10/11.
//

import UIKit

final class ViewController: UIViewController {

    private let optionTalbeView = UITableView()
    private let optionDataManager = OptionModelDataManager()
    private let productTitleHeaderView = ProductTitleHeaderView()
    private let addCartButtonView = AddCartButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureInitialSetting()
        configureSubviews()
        configureLayout()

    }
}

// MARK: Implement TableView DataSource

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 0 
        } else if section == 1 {
            return 0
        } else if section == 2 {
            return optionDataManager.fetchOptionsData(options: "part").count
        } else if section == 3 {
            return optionDataManager.fetchOptionsData(options: "topping").count
        } else if section == 4 {
            return optionDataManager.fetchOptionsData(options: "sideMenu").count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "optionTableViewCell", for: indexPath) as! OptionTableViewCell
        cell.selectionStyle = .none
        
        if indexPath.section == 0 {
            
        } else if indexPath.section == 1 {
        } else if indexPath.section == 2 {
            let partOptionsArray = optionDataManager.fetchOptionsData(options: "part")
            cell.optionLabel.text = partOptionsArray[indexPath.row].optionLabel
            cell.priceLabel.text = "+\(partOptionsArray[indexPath.row].optionPrice)원"
            return cell
        } else if indexPath.section == 3 {
            let toppingOptionsArray = optionDataManager.fetchOptionsData(options: "topping")
            cell.optionLabel.text = toppingOptionsArray[indexPath.row].optionLabel
            cell.priceLabel.text = "+\(toppingOptionsArray[indexPath.row].optionPrice)원"
            return cell
        } else if indexPath.section == 4 {
            let sideMenuOptionsArray = optionDataManager.fetchOptionsData(options: "sideMenu")
            cell.optionLabel.text = sideMenuOptionsArray[indexPath.row].optionLabel
            cell.priceLabel.text = "+\(sideMenuOptionsArray[indexPath.row].optionPrice)원"
            return cell
        }
        return cell
    }
}

// MARK: Implement TableView Delegate

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 100
        } else {
            return 50
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            return productTitleHeaderView
        } else if section == 1 {
            return OptionHeaderView(optionTitle: "가격", price: "20000원")
        } else if section == 2 {
            return OptionHeaderView(optionTitle: "부위 선택", price: "")
        } else if section == 3 {
            return OptionHeaderView(optionTitle: "토핑 추가", price: "")
        } else if section == 4 {
            return OptionHeaderView(optionTitle: "인기 사이드 메뉴 추가", price: "")
        }
        
        return nil
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        fetchTotalPrice()
    }
}

// MARK: Configure InitialSetting

extension ViewController {
    private func configureInitialSetting() {
        optionTalbeView.register(OptionTableViewCell.self, forCellReuseIdentifier: "optionTableViewCell")
        optionTalbeView.dataSource = self
        optionTalbeView.delegate = self
        optionTalbeView.backgroundColor = .systemGray2
    }
}

// MARK: Configure Layout

extension ViewController {
    
    private func configureSubviews() {
        [optionTalbeView, addCartButtonView].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func configureLayout() {
        let safeArea = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            optionTalbeView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            optionTalbeView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            optionTalbeView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            
            addCartButtonView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08),
            addCartButtonView.topAnchor.constraint(equalTo: optionTalbeView.bottomAnchor),
            addCartButtonView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            addCartButtonView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            addCartButtonView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor)
        ])
    }
}

// MARK: Configure Calculate Logic
extension ViewController {
    private func fetchTotalPrice() {
        CalculateTotalPriceCart.calculateTotalPriceCart.resetCart()
        
            if let selectedIndexPaths = optionTalbeView.indexPathsForSelectedRows {
                for indexPath in selectedIndexPaths {
                    switch indexPath.section {
                    case 2:
                        CalculateTotalPriceCart.calculateTotalPriceCart.totalPrice +=  optionDataManager.partOfChickenOptionsArray[indexPath.row].optionPrice
                    case 3:
                        CalculateTotalPriceCart.calculateTotalPriceCart.totalPrice += optionDataManager.toppingOptionsArray[indexPath.row].optionPrice
                    case 4:
                        CalculateTotalPriceCart.calculateTotalPriceCart.totalPrice += optionDataManager.sideMenuOptionsArray[indexPath.row].optionPrice
                    default:
                        break
                    }
                }
            }

        addCartButtonView.addCartButton.setTitle(
            "\(CalculateTotalPriceCart.calculateTotalPriceCart.totalPrice)원 담기", for: .normal
        )
    }
}

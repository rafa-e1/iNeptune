//
//  DetailViewController.swift
//  ThirdMission
//
//  Created by Rafael on 10/6/23.
//

import UIKit

protocol SubOptionCellDelegate: AnyObject {
    func didToggleCheckBoxInCell(_ cell: SubOptionCell)
}

class DetailViewController: UIViewController {
    
    private lazy var backButton: UIButton = {
        return configureButton(systemName: "arrow.backward")
    }()
    
    private lazy var homeButton: UIButton = {
        return configureButton(systemName: "house")
    }()
    
    private lazy var shareButton: UIButton = {
        return configureButton(systemName: "square.and.arrow.up")
    }()
    
    private lazy var cartButton: UIButton = {
        return configureButton(systemName: "cart")
    }()
    
    private lazy var rightButtonsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [homeButton, shareButton, cartButton])
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .fill
        stackView.spacing = 20
        return stackView
    }()
    
    private lazy var leftButton: UIBarButtonItem = {
        let button = UIBarButtonItem(customView: backButton)
        return button
    }()
    
    private lazy var rightButtons: UIBarButtonItem = {
        let buttons = UIBarButtonItem(customView: rightButtonsStackView)
        return buttons
    }()
    
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
    
    private lazy var orderView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        let topLineView = UIView()
        topLineView.backgroundColor = #colorLiteral(red: 0.8784906329, green: 0.8815784782, blue: 0.8908420139, alpha: 1)
        
        view.addSubview(topLineView)
        
        topLineView.translatesAutoresizingMaskIntoConstraints = false
        
        topLineView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topLineView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topLineView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        return view
    }()
    
    private lazy var minimumPrice: UILabel = {
        let label = UILabel()
        label.text = "배달최소주문금액"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 12.0, weight: .medium)
        return label
    }()
    
    private lazy var price: UILabel = {
        let label = UILabel()
        label.text = "17,000원"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 13.0, weight: .medium)
        return label
    }()
    
    private lazy var priceStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [minimumPrice, price])
        stackView.axis = .vertical
        stackView.spacing = 5.0
        stackView.alignment = .fill
        stackView.distribution = .fill
        return stackView
    }()
    
    private lazy var orderButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.3685133457, green: 0.7451101542, blue: 0.7333264947, alpha: 1)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(orderButtonDidTapped), for: .touchUpInside)
        return button
    }()
    
    private let items = SettingSection.generateData()
    private var mainOptionCell: MainOptionCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
        setupUI()
        
        mainOptionCell?.firstRadioButtonTapped = { [weak self] in
            self?.updateOrderPrice()
        }
        
        mainOptionCell?.secondRadioButtonTapped = { [weak self] in
            self?.updateOrderPrice()
        }
        
        // Update the button title initially
        updateOrderPrice()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        tableView.tableHeaderView?.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 200)
    }
    
    private func configureButton(systemName: String) -> UIButton {
        let button = UIButton(type: .system)
        let image = UIImage(systemName: systemName)?
            .withTintColor(.white, renderingMode: .alwaysOriginal)
            .withConfiguration(UIImage.SymbolConfiguration(pointSize: 17.0))
        button.setImage(image, for: .normal)
        return button
    }
    
    private func setupNavBar() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .clear
        appearance.configureWithTransparentBackground()
        navigationController?.navigationBar.standardAppearance = appearance
        
        navigationItem.leftBarButtonItem = leftButton
        navigationItem.rightBarButtonItem = rightButtons
    }
    
    private func setupUI() {
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.addSubview(tableView)
        view.addSubview(orderView)
        view.addSubview(priceStackView)
        view.addSubview(orderButton)
        
        tableView.tableHeaderView = StretchyHeaderView()
        
        orderView.translatesAutoresizingMaskIntoConstraints = false
        priceStackView.translatesAutoresizingMaskIntoConstraints = false
        orderButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            orderView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            orderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            orderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            priceStackView.centerYAnchor.constraint(equalTo: orderButton.centerYAnchor),
            priceStackView.leadingAnchor.constraint(equalTo: orderView.leadingAnchor, constant: 20),
            
            orderButton.topAnchor.constraint(equalTo: orderView.topAnchor, constant: 8),
            orderButton.bottomAnchor.constraint(equalTo: orderView.bottomAnchor, constant: -30),
            orderButton.leadingAnchor.constraint(equalTo: priceStackView.trailingAnchor, constant: 20),
            orderButton.trailingAnchor.constraint(equalTo: orderView.trailingAnchor, constant: -20),
            orderButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func updateOrderPrice() {
        var orderPrice = 20000 // Initial order price
        
        if mainOptionCell?.secondRadioButton.isSelected == true {
            orderPrice += 3000
        } else if mainOptionCell?.firstRadioButton.isSelected == true {
            orderPrice -= 3000
        }
        
        let formattedPrice = NumberFormatter.localizedString(from: NSNumber(value: orderPrice), number: .decimal)
        let title = "\(formattedPrice)원 담기"
        orderButton.setAttributedTitle(NSAttributedString(string: title, attributes: [.font: UIFont.systemFont(ofSize: 20.0, weight: .semibold), .foregroundColor: UIColor.white]), for: .normal)
    }
    
    @objc private func orderButtonDidTapped() {
        let cartVC = CartViewController()
        navigationController?.pushViewController(cartVC, animated: true)
    }
    
}

extension DetailViewController: UITableViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        guard let header = tableView.tableHeaderView as? StretchyHeaderView else { return }
        header.scrollViewDidScroll(scrollView: scrollView)
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9529394507, green: 0.9607848525, blue: 0.9686267972, alpha: 1)
        return view
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
}

extension DetailViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath {
        case IndexPath(row: 0, section: 0):
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: DescriptionCell.cellID,
                for: indexPath
            ) as? DescriptionCell else {
                return UITableViewCell()
            }
            let cellData = items[indexPath.section].items[indexPath.row]
            cell.configure(data: cellData)
            cell.selectionStyle = .none
            return cell
        case IndexPath(row: 0, section: 1):
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: MainOptionCell.cellID,
                for: indexPath
            ) as? MainOptionCell else {
                return UITableViewCell()
            }
            let cellData = items[indexPath.section].items[indexPath.row]
            cell.configure(data: cellData)
            cell.selectionStyle = .none
            return cell
        case IndexPath(row: 0, section: 2):
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: SubOptionCell.cellID,
                for: indexPath
            ) as? SubOptionCell else {
                return UITableViewCell()
            }
            let cellData = items[indexPath.section].items[indexPath.row]
            cell.delegate = self
            cell.configure(data: cellData)
            cell.selectionStyle = .none
            cell.heightAnchor.constraint(equalToConstant: 15).isActive = true
            return cell
        default:
            break
        }
        
        return UITableViewCell()
    }
}

extension DetailViewController: SubOptionCellDelegate {
    func didToggleCheckBoxInCell(_ cell: SubOptionCell) {
        if cell.checkBoxButton.isSelected {
            orderButton.setAttributedTitle(
                NSAttributedString(
                    string: "24,500원 담기",
                    attributes: [
                        .font: UIFont.systemFont(
                            ofSize: 20.0,
                            weight: .semibold
                        ),
                        .foregroundColor: UIColor.white
                    ]
                ), 
                for: .normal
            )
        } else {
            orderButton.setAttributedTitle(
                NSAttributedString(
                    string: "20,000원 담기",
                    attributes: [
                        .font: UIFont.systemFont(
                            ofSize: 20.0,
                            weight: .semibold
                        ),
                        .foregroundColor: UIColor.white
                    ]
                ),
                for: .normal
            )
        }
    }
}

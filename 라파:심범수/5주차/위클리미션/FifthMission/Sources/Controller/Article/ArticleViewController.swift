//
//  ArticleViewController.swift
//  FifthMission
//
//  Created by Rafael on 10/30/23.
//

import UIKit

class ArticleViewController: UIViewController {
    
    private let refreshControl = UIRefreshControl()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.separatorStyle = .none
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(ArticleCell.self, forCellReuseIdentifier: ArticleCell.id)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private var articles = [Article]()
    private var model = ArticleModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBar()
        setupUI()
        
        model.delegate = self
        model.getArticles()
    }
    
    private func setupNavBar() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .systemBackground
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.hidesBarsOnSwipe = false
        
        if let nickname = UserDefaults.standard.string(forKey: "nickname") {
            navigationItem.title = "\(nickname)님 환영합니다!"
        } else if let idNickname = UserDefaults.standard.string(forKey: "idNickname") {
            navigationItem.title = "\(idNickname)님 환영합니다!"
        }

        let backBarButtonItem = UIBarButtonItem(
            title: "",
            style: .plain,
            target: self,
            action: nil
        )
        self.navigationItem.backBarButtonItem = backBarButtonItem
    }
    
    private func setupUI() {
        view.addSubview(tableView)
        setupRefreshControl()
        tableView.addSubview(refreshControl)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    private func setupRefreshControl() {
        refreshControl.tintColor = .label
        refreshControl.addTarget(self, action: #selector(refresh), for: .valueChanged)
    }
    
    @objc private func refresh(send: UIRefreshControl) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.tableView.reloadData()
            self.refreshControl.endRefreshing()
        }
    }
    
}

extension ArticleViewController: ArticleModelProtocol {
    func articlesRetrieved(articles: [Article]) {
        print("Articles retrieved from article model")
        self.articles = articles
        tableView.reloadData()
    }
}

extension ArticleViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: ArticleCell.id,
            for: indexPath
        ) as? ArticleCell else {
            return UITableViewCell()
        }
        let article = articles[indexPath.row]
        cell.displayArticle(article: article)
        cell.selectionStyle = .none
        cell.separatorInset = .zero
        return cell
    }
}

extension ArticleViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let selectedArticle = articles[indexPath.row]
            let articleDetailVC = ArticleDetailViewController()
            articleDetailVC.url = selectedArticle.url
            self.navigationController?.pushViewController(articleDetailVC, animated: true)
        }
    }
}

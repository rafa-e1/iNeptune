//
//  ArticleCell.swift
//  FifthMission
//
//  Created by Rafael on 10/30/23.
//

import UIKit

class ArticleCell: UITableViewCell {
    
    static let id = "ArticleCell"
    
    private lazy var headLineText: UILabel = {
        let label = UILabel()
        label.numberOfLines = 4
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var headLineImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private var articleToDisplay: Article?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = contentView.frame.inset(
            by: UIEdgeInsets(
                top: 0,
                left: 10,
                bottom: 10,
                right: 10
            )
        )
    }
    
    private func setupUI() {
        contentView.addSubview(headLineImageView)
        contentView.addSubview(headLineText)
        
        NSLayoutConstraint.activate([
            headLineImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            headLineImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            headLineImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            headLineImageView.trailingAnchor.constraint(equalTo: headLineText.leadingAnchor, constant: -10),
            headLineImageView.heightAnchor.constraint(equalTo: headLineImageView.widthAnchor),
            headLineImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            headLineText.topAnchor.constraint(equalTo: headLineImageView.topAnchor),
            headLineText.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
    
    func displayArticle(article: Article) {
        headLineText.alpha = 0
        headLineImageView.alpha = 0
        
        articleToDisplay = article
        
        headLineText.text = articleToDisplay?.title
        
        UIView.animate(withDuration: 0.6, delay: 0, options: .curveEaseOut) {
            self.headLineText.alpha = 1
        }
        
        guard let urlString = articleToDisplay?.urlToImage, let imageURL = URL(string: urlString) else {
            self.headLineImageView.image = UIImage(
                systemName: "xmark.seal"
            )?.withTintColor(
                .systemBlue,
                renderingMode: .alwaysOriginal
            )
            self.headLineImageView.alpha = 1
            return
        }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: imageURL) { data, response, error in
            if error == nil, let imageData = data, self.articleToDisplay?.urlToImage == urlString {
                DispatchQueue.main.async {
                    self.headLineImageView.image = UIImage(data: imageData)
                    
                    UIView.animate(withDuration: 0.6, delay: 0, options: .curveEaseOut) {
                        self.headLineImageView.alpha = 1
                    }
                }
            }
        }
        
        dataTask.resume()
    }

}

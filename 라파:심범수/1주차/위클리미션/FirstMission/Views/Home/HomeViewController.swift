//
//  HomeViewController.swift
//  FirstMission
//
//  Created by Rafael on 2023/09/24.
//

import UIKit

import SafeAreaBrush
import SnapKit

class HomeViewController: UIViewController {
    
    private var collectionView: UICollectionView?
    private let refreshControl = UIRefreshControl()
    private let homeCoupon = Coupon.items
    private let homeOption = Option.items
    private let homeCategory = Category.items
    private let homeBanner = Banner.items
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
        setupNavBar()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        collectionView?.frame = view.bounds
    }
    
    private func setupCollectionView() {
        let layout = UICollectionViewCompositionalLayout {
            (sectionIndex, _) -> NSCollectionLayoutSection in
            if sectionIndex == 0 {
                return self.searchViewLayoutSection()
            } else if sectionIndex == 1 {
                return self.firstLayoutSection()
            } else if sectionIndex == 2 {
                return self.secondLayoutSection()
            } else if sectionIndex == 3 {
                return self.thirdLayoutSection()
            } else {
                return self.bannerLayoutSection()
            }
        }
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView?.dataSource = self
        collectionView?.delegate = self
        
        collectionView?.register(
            SearchViewCell.nib(),
            forCellWithReuseIdentifier: SearchViewCell.identifier
        )
        
        collectionView?.register(
            CouponCell.nib(),
            forCellWithReuseIdentifier: CouponCell.identifier
        )
        
        collectionView?.register(
            OptionCell.nib(),
            forCellWithReuseIdentifier: OptionCell.identifier
        )
        
        collectionView?.register(
            CategoryCell.nib(),
            forCellWithReuseIdentifier: CategoryCell.identifier
        )
        
        collectionView?.register(
            BannerCell.nib(),
            forCellWithReuseIdentifier: BannerCell.identifier
        )
        
        collectionView?.backgroundColor = #colorLiteral(red: 0.956861794, green: 0.9607846141, blue: 0.9686269164, alpha: 1)
        
        view.addSubview(collectionView!)
        
        collectionView?.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        refreshControl.tintColor = .black
        refreshControl.backgroundColor = #colorLiteral(red: 0.16434443, green: 0.7568776608, blue: 0.737246573, alpha: 1)
        refreshControl.addTarget(self, action: #selector(refresh), for: .valueChanged)
        collectionView?.addSubview(refreshControl)
    }
    
    @objc private func refresh(send: UIRefreshControl) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.collectionView?.reloadData()
            self.refreshControl.endRefreshing()
        }
    }
    
    private func searchViewLayoutSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .absolute(80)
        )
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .absolute(80)
        )
        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: groupSize,
            repeatingSubitem: item,
            count: 1
        )
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(
            top: -15,
            leading: 0,
            bottom: 0,
            trailing: 0
        )
        return section
    }
    
    private func firstLayoutSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalWidth(0.2)
        )
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalWidth(0.2)
        )
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(
            top: 10,
            leading: 16,
            bottom: 10,
            trailing: 16
        )
        return section
    }
    
    private func secondLayoutSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(0.33),
            heightDimension: .fractionalHeight(0.95)
        )
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalWidth(0.33)
        )
        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: groupSize,
            repeatingSubitem: item,
            count: 3
        )
        group.interItemSpacing = NSCollectionLayoutSpacing.fixed(10)
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(
            top: 0,
            leading: 16,
            bottom: 10,
            trailing: 16
        )
        return section
    }
    
    private func thirdLayoutSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalWidth(0.55)
        )
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalWidth(1)
        )
        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: groupSize,
            repeatingSubitem: item,
            count: 1
        )
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(
            top: 0,
            leading: 16,
            bottom: -145,
            trailing: 16
        )
        return section
    }
    
    private func bannerLayoutSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .absolute(140)
        )
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(
            top: 0,
            leading: 16,
            bottom: 10,
            trailing: 16
        )
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .absolute(140)
        )
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        section.contentInsets = NSDirectionalEdgeInsets(
            top: 0,
            leading: 0,
            bottom: 20,
            trailing: 0
        )
        return section
    }
    
    private func setupNavBar() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = #colorLiteral(red: 0.16434443, green: 0.7568776608, blue: 0.737246573, alpha: 1)
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.hidesBarsOnSwipe = false
        
        fillSafeArea(
            position: .top,
            color: UIColor(
                red: 42/255,
                green: 193/255,
                blue: 188/255,
                alpha: 1.0
            )
        )
        
        let customTitleView = UIView()
        
        let titleLabel = UILabel()
        titleLabel.text = "우리집"
        titleLabel.font = UIFont.systemFont(ofSize: 18.0, weight: .bold)
        titleLabel.textColor = .white
        
        let arrowImageView = UIImageView(image: UIImage(named: "down-arrow"))
        arrowImageView.tintColor = .white
        
        customTitleView.addSubview(titleLabel)
        customTitleView.addSubview(arrowImageView)
        
        titleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        
        arrowImageView.snp.makeConstraints { make in
            make.leading.equalTo(titleLabel.snp.trailing).offset(4)
            make.centerY.equalToSuperview()
        }
        
        let customTitleButton = UIBarButtonItem(customView: customTitleView)
        navigationItem.leftBarButtonItem = customTitleButton
        
        let gridButton = UIButton()
        gridButton.setImage(
            UIImage(systemName: "square.grid.2x2")?
                .withTintColor(.white, renderingMode: .alwaysOriginal)
                .withConfiguration(
                    UIImage.SymbolConfiguration(
                        pointSize: 18.0,
                        weight: .bold
                    )
                ),
            for: .normal
        )
        
        let bellButton = UIButton()
        bellButton.setImage(
            UIImage(systemName: "bell")?
                .withTintColor(.white, renderingMode: .alwaysOriginal)
                .withConfiguration(UIImage.SymbolConfiguration(
                    pointSize: 18.0,
                    weight: .bold
                )),
            for: .normal
        )
        
        let cartButton = UIButton()
        cartButton.setImage(
            UIImage(systemName: "cart")?
                .withTintColor(.white, renderingMode: .alwaysOriginal)
                .withConfiguration(UIImage.SymbolConfiguration(
                    pointSize: 18.0,
                    weight: .bold
                )),
            for: .normal
        )
        
        let rightBarButtonStackView = UIStackView.init(
            arrangedSubviews: [
                gridButton,
                bellButton,
                cartButton
            ]
        )
        rightBarButtonStackView.distribution = .equalSpacing
        rightBarButtonStackView.axis = .horizontal
        rightBarButtonStackView.alignment = .fill
        rightBarButtonStackView.spacing = 16
        
        let rightBarButtons = UIBarButtonItem(customView: rightBarButtonStackView)
        navigationItem.rightBarButtonItem = rightBarButtons
    }
    
}

extension HomeViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return homeCoupon.count
        } else if section == 2 {
            return homeOption.count
        } else if section == 3 {
            return homeCategory.count
        } else {
            return homeBanner.count
        }
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        if indexPath.section == 0 {
            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: SearchViewCell.identifier,
                for: indexPath
            ) as? SearchViewCell else {
                return UICollectionViewCell()
            }
            cell.layer.cornerRadius = 20
            cell.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
            return cell
        } else if indexPath.section == 1 {
            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: CouponCell.identifier,
                for: indexPath
            ) as? CouponCell else {
                return UICollectionViewCell()
            }
            let cellData = homeCoupon[indexPath.item]
            cell.configureButtonImage(cellData)
            cell.layer.masksToBounds = false
            cell.layer.shadowColor = UIColor.gray.cgColor
            cell.layer.shadowOpacity = 0.2
            cell.layer.shadowOffset = CGSize(width: 0, height: 3)
            cell.layer.shadowRadius = 5
            return cell
        } else if indexPath.section == 2 {
            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: OptionCell.identifier,
                for: indexPath
            ) as? OptionCell else {
                return UICollectionViewCell()
            }
            let cellData = homeOption[indexPath.item]
            cell.configureButtonImage(cellData)
            cell.layer.masksToBounds = false
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOpacity = 0.2
            cell.layer.shadowOffset = CGSize(width: 0, height: 3)
            cell.layer.shadowRadius = 5
            return cell
        } else if indexPath.section == 3 {
            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: CategoryCell.identifier,
                for: indexPath
            ) as? CategoryCell else {
                return UICollectionViewCell()
            }
            let cellData = homeCategory[indexPath.item]
            cell.configureButtonImage(cellData)
            cell.layer.masksToBounds = false
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOpacity = 0.2
            cell.layer.shadowOffset = CGSize(width: 0, height: 3)
            cell.layer.shadowRadius = 5
            return cell
        } else {
            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: BannerCell.identifier,
                for: indexPath
            ) as? BannerCell else {
                return UICollectionViewCell()
            }
            let cellData = homeBanner[indexPath.item]
            cell.configureButtonImage(cellData)
            cell.layer.masksToBounds = false
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOpacity = 0.2
            cell.layer.shadowOffset = CGSize(width: 0, height: 3)
            cell.layer.shadowRadius = 5
            return cell
        }
    }
}

extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch (indexPath.section, indexPath.item) {
        case (1, 0):
            print("Coupon view did tapped")
        case (2, 0):
            print("Delivery view did tapped")
        case (2, 1):
            print("Store view did tapped")
        case (2, 2):
            print("Cheap view did tapped")
        case (3, 0):
            print("Category view did tapped")
        case (4, 0...11):
            print("Banner\(indexPath.item + 1) view did tapped")
        default:
            print("Wrong")
        }
    }
}

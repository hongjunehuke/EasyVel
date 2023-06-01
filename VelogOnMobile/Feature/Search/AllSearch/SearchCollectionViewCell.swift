//
//  SearchCollectionViewCell.swift
//  VelogOnMobile
//
//  Created by JuHyeonAh on 2023/05/29.
//

import UIKit

import SnapKit
import Then

final class SearchCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "SearchCell"
    
    private let searchwordLabel : UILabel = {
        let label = UILabel()
        
        label.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .center
        label.textColor = .black
        label.layer.borderWidth = 1.5
        label.layer.borderColor = UIColor.gray.cgColor
        label.layer.cornerRadius = 10.0
        label.layer.masksToBounds = true
        return label
    }()
    
    
    override init(frame: CGRect) {
           super.init(frame: frame)
       
        setLayout()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setLayout() {
        
        contentView.addSubview(searchwordLabel)
        
        searchwordLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(3)
            $0.trailing.equalToSuperview().offset(-3)
            $0.height.equalTo(25)
        }
        
    }
    
    func configCell(_ trend: Trend) {
        
        searchwordLabel.text = trend.keyword
    }
    
}

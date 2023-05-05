//
//  StorageView.swift
//  VelogOnMobile
//
//  Created by 홍준혁 on 2023/05/04.
//

import UIKit

import SnapKit

final class StorageView: BaseUIView {
    
    let listTableView = StorageTableView()
    let storageHeadView = StorageHeadView()
    
    override func render() {
        self.addSubviews(
            storageHeadView,
            listTableView
        )
        
        storageHeadView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(120)
        }
        
        listTableView.snp.makeConstraints {
            $0.top.equalTo(storageHeadView.snp.bottom)
            $0.leading.trailing.bottom.equalToSuperview()
        }
    }
}

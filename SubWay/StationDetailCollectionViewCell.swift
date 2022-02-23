//
//  StationDetailCollectionViewCell.swift
//  SubWay
//
//  Created by LeeHsss on 2022/02/23.
//

import SnapKit
import UIKit

class StationDetailCollectionViewCell: UICollectionViewCell {
    
    private lazy var lineLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15.0, weight: .bold)
        
        return label
    }()
    
    private lazy var remainTimeLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15.0, weight: .medium)
        
        return label
    }()
    
    
    
    func setUp(with realTimeArrival: StationArrivalResponseDataModel.RealTimeArrival) {
        
        layer.cornerRadius = 12.0
        layer.shadowColor = UIColor.black.cgColor //배경색의 대해서 그림자가 생김? 그래서 배경색을 필수적으로 설정해주어야 함
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 10
        
        backgroundColor = .systemBackground
        
        [lineLabel, remainTimeLabel].forEach {
            addSubview($0)
        }
        
        lineLabel.snp.makeConstraints {
            $0.leading.top.equalToSuperview().inset(16.0)
        }
        
        remainTimeLabel.snp.makeConstraints {
            $0.leading.equalTo(lineLabel.snp.leading)
            $0.top.equalTo(lineLabel.snp.bottom).offset(16.0)
            $0.bottom.equalToSuperview().inset(16.0)
        }
        
        lineLabel.text = realTimeArrival.trainLineNm
        remainTimeLabel.text = realTimeArrival.arvlMsg2
    }
}

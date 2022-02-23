//
//  StationArrivalResopnseDataModel.swift
//  SubWay
//
//  Created by LeeHsss on 2022/02/23.
//

import Foundation


struct StationArrivalResponseDataModel: Decodable {
    
    var realtimeArrivalList: [RealTimeArrival]
    
    struct RealTimeArrival: Decodable {
        let trainLineNm: String
        let arvlMsg2: String
        let arvlMsg3: String
        
    }
}


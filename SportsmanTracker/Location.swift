//
//  Location.swift
//  SportsmanTracker
//
//  Created by Leng Trang on 6/27/16.
//  Copyright © 2016 Sportsman Tracker. All rights reserved.
//

import Foundation

class Location : NSObject {
    
    var latitude : NSNumber = NSNumber()
    var longitude : NSNumber = NSNumber()
    var title : String = String()
    var subTitle : String = String()
    
    init(latitude : NSNumber, longitude : NSNumber, title : String, subTitle : String) {
        self.latitude = latitude
        self.longitude = longitude
        self.title = title
        self.subTitle = subTitle
    }
}

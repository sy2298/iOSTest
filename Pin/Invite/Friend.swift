//
//  Friend.swift
//  View3
//
//  Created by Emily Nan on 2020/02/03.
//  Copyright © 2020 Emily Nan. All rights reserved.
//

import SwiftUI

struct Friend: Codable,Equatable,Identifiable {
    var id:Int
    var name:String
    var imageName:String
     var goOnTrip : Bool
    #if DEBUG
    static let example = Friend(id:1,name: "Ford",imageName: "Ford",goOnTrip: false)
     #endif
}

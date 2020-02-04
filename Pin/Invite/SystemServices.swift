//
//  SystemServices.swift
//  View3
//
//  Created by Emily Nan on 2020/02/03.
//  Copyright © 2020 Emily Nan. All rights reserved.
//

import SwiftUI

struct SystemServices: ViewModifier{
   
    static var cotraveler = CoTraveler()
    static var trip = Trip()
    static var poiList = POIList()
    func body(content:Content)->some View{
        content.environmentObject(SystemServices.self.trip)
            .environmentObject(SystemServices.self.cotraveler)
      .environmentObject(SystemServices.self.poiList)
    }
}

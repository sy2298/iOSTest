//
//  CoTraveler.swift
//  View3
//
//  Created by Emily Nan on 2020/02/03.
//  Copyright © 2020 Emily Nan. All rights reserved.
//

import SwiftUI
import Foundation
import Combine

 class CoTraveler: ObservableObject{
    @Published var onClick: Bool = false
    @Published var items = [Friend]()
    @Published var friends = friend
    @Published var count = 0
}

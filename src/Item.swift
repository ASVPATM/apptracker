//
//  Item.swift
//  ApplicationTracker
//
//  Created by Abeil Melles on 3/29/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

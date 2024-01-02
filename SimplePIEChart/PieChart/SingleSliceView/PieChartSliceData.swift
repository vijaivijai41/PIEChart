//
//  PieChartSliceData.swift
//  SimplePIEChart
//
//  Created by vijay kumar on 17/11/23.
//

import Foundation
import SwiftUI

struct PieChartSliceData: Identifiable {
    
    var id: UUID { UUID() }
    let startAngle: Double
    let endAnge: Double
    
    init(startAngle: Double,
         endAnge: Double) {
        self.startAngle = startAngle
        self.endAnge = endAnge
    }
}

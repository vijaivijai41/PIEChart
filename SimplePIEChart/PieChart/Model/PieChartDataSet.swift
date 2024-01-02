//
//  PieChartDataSet.swift
//  SimplePIEChart
//
//  Created by vijay kumar on 17/11/23.
//

import Foundation
import SwiftUI

struct PieChartDataSet: Identifiable {
    var id: UUID { return UUID() }
    
    let sliceData: PieChartSliceData
    let color: Color
    
    init(sliceData: PieChartSliceData, color: Color) {
        self.sliceData = sliceData
        self.color = color
    }
}


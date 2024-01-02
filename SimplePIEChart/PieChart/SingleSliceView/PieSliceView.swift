//
//  PieSliceView.swift
//  SimplePIEChart
//
//  Created by vijay kumar on 17/11/23.
//

import SwiftUI


// Single Slice Piece
struct PieSliceView: Shape {
    let sliceData: PieChartSliceData
    
    func path(in rect: CGRect) -> Path {
        // center point of Rect
        let centerPoint = CGPoint(x: rect.width/2, y: rect.height/2)
        
        // Calculate radius of rect
        let radius = Double(min(rect.width, rect.height))/2
      
        var path = Path()
        path.move(to: centerPoint)
        path.addArc(center: centerPoint, 
                    radius: radius,
                    startAngle: .degrees(sliceData.startAngle),
                    endAngle: .degrees(sliceData.endAnge),
                    clockwise: false)
        
        return path
    }
}

#Preview {
    PieSliceView(sliceData: PieChartSliceData(startAngle: 0, endAnge: 90))
        .fill(Color.red)
}

//
//  PieChartView.swift
//  SimplePIEChart
//
//  Created by vijay kumar on 17/11/23.
//

import SwiftUI


struct PieChartView: View {
    
    let angleStartingPoint: CGFloat = 90 // Degree value for circle starting point
    let chartData: [ChartDataSet]
  
    var body: some View {
        // Include ZStack for appear on above the view
        GeometryReader(content: { geometry in
            ZStack {
                ForEach(pieChartData) { value in
                    PieSliceView(sliceData: value.sliceData)
                        .fill(value.color)
                    // Shape color apply.
                        .animation(.easeOut, value: value.id)

                }
                Circle()
                    .fill(Color.white)
                    .frame(width: geometry.size.width/3.5, height: geometry.size.width/3.5)
                    .shadow(color: .white.opacity(10), radius: 10)
                    .overlay {
                        Text("totalValue")
                    }
            }
           
            .padding(20)
        })
    }
    
    
    private var pieChartData: [PieChartDataSet] {
        self.computeSliceData(chartData: chartData)
    }
    
    func computeSliceData(chartData: [ChartDataSet]) -> [PieChartDataSet] {
        
        var pieChartDataSet: [PieChartDataSet] = []
        
        // Total Value calculation
        let totalSliceSet = chartData.reduce(0.0) { $0 + $1.data }
        
        // Initial sum set as 0
        var sum = 0.0
        
        chartData.forEach { value in
            let initialValue = sum
            // Sum compute with next set data for consider as end angle
            sum += value.data
            let finalValue = sum
           
            // start point angle default as starting point '90'
            let startAngle = (initialValue * 360/totalSliceSet) - angleStartingPoint
           
            //End angle calculate..
            let endAngle = (finalValue * 360/totalSliceSet) - angleStartingPoint
            
            let modelData = PieChartDataSet(sliceData: PieChartSliceData(startAngle: startAngle, endAnge: endAngle), color: value.color)
            
            pieChartDataSet.append(modelData)
            
        }
        return pieChartDataSet
    }

}




#Preview {
    PieChartView(chartData: [
        ChartDataSet(data: 20, color: .red),
        ChartDataSet(data: 20, color: .green),
        ChartDataSet(data: 20, color: .brown),
        ChartDataSet(data: 20, color: .yellow),
        ChartDataSet(data: 20, color: .accentColor),
        ChartDataSet(data: 20, color: .purple),
        
    ])
}

//
//  ContentView.swift
//  SimplePIEChart
//
//  Created by vijay kumar on 17/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            PieChartView(chartData: [
                ChartDataSet(data: 20, color: .red),
                ChartDataSet(data: 20, color: .green),
                ChartDataSet(data: 20, color: .brown),
                ChartDataSet(data: 20, color: .yellow),
                ChartDataSet(data: 20, color: .accentColor),
                ChartDataSet(data: 20, color: .purple),
                
            ])
        }
        .padding()
    }
}




#Preview {
    ContentView()
}

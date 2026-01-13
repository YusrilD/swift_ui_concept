//
//  PiewGraph.swift
//  swift_ui_concept
//
//  Created by Triv on 13/01/26.
//

import SwiftUI

struct PieGraph: View {
    let values: [Double]

    private var total: Double {
        values.reduce(0, +)
    }

    var body: some View {
        GeometryReader { geo in
            ZStack {
                ForEach(values.indices, id: \.self) { index in
                    PieSlice(
                        startAngle: startAngle(for: index),
                        endAngle: endAngle(for: index)
                    )
                    .fill(color(for: index))
                }
            }
        }
    }

    private func startAngle(for index: Int) -> Angle {
        let sum = values.prefix(index).reduce(0, +)
        return .degrees(360 * sum / total)
    }

    private func endAngle(for index: Int) -> Angle {
        let sum = values.prefix(index + 1).reduce(0, +)
        return .degrees(360 * sum / total)
    }

    private func color(for index: Int) -> Color {
        let colors: [Color] = [.blue, .green, .orange, .purple, .red]
        return colors[index % colors.count]
    }
}

#Preview{
    @Previewable @State var data: [Double] = [1,2,4,8,16]
    
    PieGraph(values: data)
}

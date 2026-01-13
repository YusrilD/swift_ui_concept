//
//  LineGraph.swift
//  swift_ui_concept
//
//  Created by Triv on 13/01/26.
//

import SwiftUI

struct LineGraph: View {
    let values: [Double]

    private var normalizedValues: [CGFloat] {
        guard let max = values.max(), max > 0 else { return [] }
        return values.map { CGFloat($0 / max) }
    }

    var body: some View {
        GeometryReader { geo in
            Path { path in
                guard normalizedValues.count > 1 else { return }

                let width = geo.size.width
                let height = geo.size.height
                let stepX = width / CGFloat(normalizedValues.count - 1)

                for index in normalizedValues.indices {
                    let x = CGFloat(index) * stepX
                    let y = height - (normalizedValues[index] * height)

                    if index == 0 {
                        path.move(to: CGPoint(x: x, y: y))
                    } else {
                        path.addLine(to: CGPoint(x: x, y: y))
                    }
                }
            }
            .stroke(
                Color.blue,
                style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round)
            )
        }
    }
}

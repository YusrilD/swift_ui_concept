//
//  GraphView.swift
//  swift_ui_concept
//
//  Created by Triv on 11/01/26.
//

import SwiftUI

enum GraphType {
    case line
    case pie
}

struct GraphView: View {
    let type: GraphType
    let values: [Double]

    var body: some View {
//        switch type {
//        case .line:
//            LineGraph(values: values)
//        case .pie:
//            PieGraph(values: values)
//        }
    }
}

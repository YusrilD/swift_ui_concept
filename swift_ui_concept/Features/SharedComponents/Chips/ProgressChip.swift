//
//  ProgressChip.swift
//  swift_ui_concept
//
//  Created by Triv on 11/01/26.
//

import SwiftUI

struct ProgressChip: View {
    let title: String
    let progress: Double

    var body: some View {
        HStack {
            Text(title)
            ProgressView(value: progress)
                .frame(width: 60)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 6)
        .background(Color.blue.opacity(0.1))
        .clipShape(Capsule())
    }
}



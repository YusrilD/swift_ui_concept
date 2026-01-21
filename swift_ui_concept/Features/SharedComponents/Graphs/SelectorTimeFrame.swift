//
//  SelectorTimeFrame.swift
//  swift_ui_concept
//
//  Created by Triv on 11/01/26.
//

import SwiftUI

struct SelectorTimeFrame: View {
    let options: [String]
    @Binding var selected: String

    var body: some View {
        HStack {
            ForEach(options, id: \.self) { option in
                Button(option) {
                    selected = option
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background(selected == option ? Color.blue : Color.gray.opacity(0.2))
                .foregroundColor(.white)
                .cornerRadius(8)
            }
        }
    }
}

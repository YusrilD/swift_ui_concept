//
//  RecipientFrame.swift
//  swift_ui_concept
//
//  Created by Triv on 11/01/26.
//

import SwiftUI

struct RecipientFrame: View {
    let name: String
    let address: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(name).bold()
            Text(address)
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray.opacity(0.3))
        )
    }
}

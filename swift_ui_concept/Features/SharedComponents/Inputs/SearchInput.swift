//
//  SearchInput.swift
//  swift_ui_concept
//
//  Created by Triv on 11/01/26.
//

import SwiftUI

struct SearchInput: View {
    @Binding var text: String

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("Search...", text: $text)
        }
        .padding(10)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

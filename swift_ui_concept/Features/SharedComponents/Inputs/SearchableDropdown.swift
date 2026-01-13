//
//  SearchableDropdown.swift
//  swift_ui_concept
//
//  Created by Triv on 11/01/26.
//

import SwiftUI

struct SearchableDropdown<Item: Identifiable & Hashable>: View {
    let title: String
    let items: [Item]
    let display: (Item) -> String
    @Binding var selectedItem: Item?

    @State private var searchText = ""
    @State private var isExpanded = false

    var filteredItems: [Item] {
        items.filter {
            searchText.isEmpty || display($0).localizedCaseInsensitiveContains(searchText)
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Button {
                isExpanded.toggle()
            } label: {
                HStack {
                    Text(selectedItem.map(display) ?? title)
                        .foregroundColor(selectedItem == nil ? .gray : .primary)
                    Spacer()
                    Image(systemName: "chevron.down")
                }
            }

            if isExpanded {
                TextField("Search...", text: $searchText)
                    .textFieldStyle(.roundedBorder)

                ScrollView {
                    VStack(alignment: .leading) {
                        ForEach(filteredItems, id: \.self) { item in
                            Button(display(item)) {
                                selectedItem = item
                                isExpanded = false
                            }
                        }
                    }
                }
                .frame(maxHeight: 200)
            }
        }
    }
}

//#Preview {
//    SearchableDropdown()
//}

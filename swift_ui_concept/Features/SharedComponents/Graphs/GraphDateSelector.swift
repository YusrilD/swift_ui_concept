//
//  GraphDateSelector.swift
//  swift_ui_concept
//
//  Created by Triv on 11/01/26.
//

import SwiftUI

struct GraphDateSelector: View {
    @Binding var date: Date

    var body: some View {
        DatePicker("", selection: $date, displayedComponents: .date)
            .labelsHidden()
    }
}

//
//  AppButton.swift
//  swift_ui_concept
//
//  Created by Triv on 11/01/26.
//

import SwiftUI

struct AppButton: View {
    let title: String
    let action: () -> Void
    var isDisabled: Bool = false

    var body: some View {
        Button(action: action) {
            Text(title)
                .frame(maxWidth: .infinity)
                .padding()
                .background(isDisabled ? Color.gray : Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .disabled(isDisabled)
    }
}

#Preview {
    AppButton(
        title: "Next",
        action: {},
        isDisabled: false
    )
}

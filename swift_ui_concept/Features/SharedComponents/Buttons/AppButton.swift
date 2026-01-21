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
                .font(.system(size: 24.0, weight: .bold))
                .frame(maxWidth: .infinity)
                .padding(.vertical)
                .foregroundStyle(.white)
        }
        
        .background(isDisabled ? .gray : .amber)
        .clipShape(.rect(cornerRadius: 12.0))
        .padding(.horizontal)
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

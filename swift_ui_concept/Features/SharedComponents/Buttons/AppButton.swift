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

struct AppButtonDisable: View {
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
        .background(isDisabled ? .gray : .disableButton)
        .overlay(
            RoundedRectangle(cornerRadius: 20.0).stroke(.buttonBorder, lineWidth: 2.0)
        )
        .clipShape(RoundedRectangle(cornerRadius: 20.0))
        .padding(.horizontal)
        .disabled(isDisabled)
    }
}

#Preview {
    AppButtonDisable(
        title: "Next",
        action: {},
        isDisabled: false
    )
}

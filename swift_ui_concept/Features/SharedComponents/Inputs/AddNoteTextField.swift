//
//  AddNoteTextField.swift
//  swift_ui_concept
//
//  Created by Triv on 11/01/26.
//

import SwiftUI

struct AddNoteTextField: View {
    @Binding var text: String

    var body: some View {
        TextEditor(text: $text)
            .frame(height: 100)
            .padding(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray.opacity(0.3))
            )
    }
}

#Preview {
    PreviewTextEditor()
}

private struct PreviewTextEditor: View {
    @State var text = ""
    
    var body: some View{
        return AddNoteTextField(
            text: $text
        )
        .padding()
    }
}


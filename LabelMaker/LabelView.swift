//
//  LabelView.swift
//  LabelMaker
//
//  Created by 千々岩真吾 on 2025/01/28.
//

import SwiftUI

struct LabelView: View {
    @Environment(\.isEnabled) private var isEnabled
    @Binding var label: Label

    var body: some View {
        TextField("Type to enter text", text: $label.text, axis: .vertical)
            .frame(width: 500, height: isEnabled ? 500 : nil)
            .padding(50)
            .background(
                label.selectedColor(), in: RoundedRectangle(cornerRadius: label.cornerRadius)
            )
            .foregroundStyle(.black)
            .font(.system(size: 40, weight: .semibold))
            .multilineTextAlignment(.center)
    }
}

#Preview("Enabled") {
    @Previewable @State var label = Label(text: "The label's text content")
    LabelView(label: $label)
}

#Preview("Disabled") {
    @Previewable @State var label = Label(text: "The label's text content")
    LabelView(label: $label)
        .disabled(true)
}

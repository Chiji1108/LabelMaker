//
//  LabelView.swift
//  LabelMaker
//
//  Created by 千々岩真吾 on 2025/01/28.
//

import SwiftUI

struct LabelView: View {
    @Binding var label: Label

    var body: some View {
        TextField("Type to enter text", text: $label.text, axis: .vertical)
            .frame(width: 500, height: 500)
            .padding()
            .background(.blue, in: RoundedRectangle(cornerRadius: label.cornerRadius))
            .foregroundStyle(.black)
            .font(.system(size: 40, weight: .semibold))
            .multilineTextAlignment(.center)
    }
}

#Preview {
    @Previewable @State var label = Label()
    LabelView(label: $label)
}

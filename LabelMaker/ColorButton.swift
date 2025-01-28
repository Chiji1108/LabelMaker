//
//  ColorButton.swift
//  LabelMaker
//
//  Created by 千々岩真吾 on 2025/01/28.
//

import SwiftUI

struct ColorButton: View {
    @State var color: Color
    var selectColor: () -> Void

    var body: some View {
        Button {
            selectColor()
        } label: {
            Circle()
                .foregroundStyle(color)
                .frame(height: 34)
        }
        .buttonBorderShape(.circle)
    }
}

#Preview {
    ColorButton(color: .cyan) {

    }
}

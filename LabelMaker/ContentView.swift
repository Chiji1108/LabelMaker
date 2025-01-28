//
//  ContentView.swift
//  LabelMaker
//
//  Created by 千々岩真吾 on 2025/01/28.
//

import RealityKit
import RealityKitContent
import SwiftUI

struct ContentView: View {
    @Environment(\.openWindow) private var openWindow
    @State private var label = Label()

    var body: some View {
        LabelView(label: $label)
            .padding()
            .ornament(attachmentAnchor: .scene(.bottom)) {
                HStack(spacing: 30) {
                    Slider(value: $label.cornerRadius, in: 0...100)
                        .frame(width: 100)
                    HStack(spacing: 10) {
                        ForEach(Label.colors.indices, id: \.self) { index in
                            ColorButton(color: Label.colors[index]) {
                                label.colorIndex = index
                            }
                        }
                    }
                    Button("Create") {
                        openWindow(value: label)
                        label = Label()
                    }
                }
                .padding()
                .glassBackgroundEffect()
            }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}

//
//  LabelMakerApp.swift
//  LabelMaker
//
//  Created by 千々岩真吾 on 2025/01/28.
//

import SwiftUI

@main
struct LabelMakerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowResizability(.contentSize)

        WindowGroup(for: Label.self) { $label in
            LabelView(label: $label)
        } defaultValue: {
            Label(text: "", cornerRadius: 20)
        }
        .windowResizability(.contentSize)
        .windowStyle(.plain)
    }
}

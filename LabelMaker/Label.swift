//
//  Label.swift
//  LabelMaker
//
//  Created by 千々岩真吾 on 2025/01/28.
//

import Foundation

struct Label: Hashable, Codable {
    var id = UUID()
    var text = ""
    var cornerRadius = 20.0
}

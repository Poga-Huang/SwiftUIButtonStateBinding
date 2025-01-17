//
//  GradientStyleButton.swift
//  JayChouAlbum-SwiftUI
//
//  Created by 黃柏嘉 on 2025/01/16.
//

import SwiftUI

struct GradientStyleButton: ButtonStyle {
    
    var colors: [Color]
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, maxHeight: 44)
            .foregroundColor(.white)
            .font(.system(size: 17, weight: .bold, design: .rounded))
            .background(LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom))
            .clipShape(.rect(cornerRadius: 10))
            
    }
}

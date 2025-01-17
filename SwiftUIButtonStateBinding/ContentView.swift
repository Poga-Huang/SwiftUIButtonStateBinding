//
//  ContentView.swift
//  SwiftUIButtonStateBinding
//
//  Created by 黃柏嘉 on 2025/01/16.
//

import SwiftUI

struct ContentView: View {
    
    @State var button1: Int = 0
    @State var button2: Int = 0
    @State var button3: Int = 0
    
    var body: some View {
        VStack {
            Text("\(button1+button2+button3)")
                .font(.system(size: 100, weight: .bold, design: .rounded))
            
            HStack {
                ButtonView(buttonCount: $button1)
                ButtonView(buttonCount: $button2)
                ButtonView(buttonCount: $button3)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var buttonCount: Int
    
    var body: some View {
        Button {
            buttonCount += 1
        } label: {
            Circle()
                .overlay {
                    Text("\(buttonCount)")
                        .foregroundStyle(.white)
                        .font(.system(size: 100, design: .rounded))
            }
        }
    }
}

#Preview {
    ContentView()
}

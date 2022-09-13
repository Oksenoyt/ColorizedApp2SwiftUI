//
//  ContentView.swift
//  ColorizedApp2SwiftUI
//
//  Created by Elenka on 12.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var slidetRedValue = Double.random(in: 1...255)
    @State private var slidetGreenValue = Double.random(in: 1...255)
    @State private var slidetBlueValue = Double.random(in: 1...255)
    
    var body: some View {
        
        ZStack {
            Color.black.opacity(0.9)
                .ignoresSafeArea()
            VStack(spacing: 15.0) {
                Text("ColorizeApp")
                    .foregroundColor(.green)
                    .bold()
                    .font(.largeTitle)
                DisplayView(color: Color(
                    red: slidetRedValue/255,
                    green: slidetGreenValue/255,
                    blue: slidetBlueValue/255),
                            strokeColor: .green
                )
                SliderView(value: $slidetRedValue, color: .red)
                SliderView(value: $slidetGreenValue, color: .green)
                SliderView(value: $slidetBlueValue, color: .blue)
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

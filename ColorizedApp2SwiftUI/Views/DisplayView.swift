//
//  DisplayView.swift
//  ColorizedApp2SwiftUI
//
//  Created by Elenka on 12.09.2022.
//

import SwiftUI

struct DisplayView: View {
    var color: Color
    var strokeColor: Color
    let rgbColor = Color(red: 1.0, green: 0.5, blue: 0.5)
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(color)
            .frame(height: 200)
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(strokeColor, lineWidth: 5))
    }
}

struct DisplayView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayView(color: .red, strokeColor: .blue)
    }
}

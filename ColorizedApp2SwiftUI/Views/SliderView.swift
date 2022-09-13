//
//  SliderView.swift
//  ColorizedApp2SwiftUI
//
//  Created by Elenka on 12.09.2022.
//

import SwiftUI

struct SliderView: View {
    @State var textField = ""
    @State var alertPresented = true
    
    @Binding var value: Double
    
    var color: Color
    var body: some View {
        
        HStack{
            Text("0")
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
            Text("255")
            TextField("\(lround(value))", text: $textField, onEditingChanged: { isBegin in
                if !isBegin {
                    checkValueTF()
                    
                }
            })
            .frame(width: 45)
            .textFieldStyle(.roundedBorder)
        } .foregroundColor(.green)
        
    }
    
    private func checkValueTF() {
        if let textFieldValue = Double(textField) {
            guard textFieldValue > 1, textFieldValue < 255 else {
                textField = ""
                return }
            value = Double(textField) ?? 0
        }
        textField = ""
    }
}




struct SliderView_Previews: PreviewProvider {
    
    static var previews: some View {
        SliderView(value: .constant(155.0), color: .red)
    }
}

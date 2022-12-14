//
//  SliderView.swift
//  ColorizedSwiftUI
//
//  Created by Armen Madoyan on 12.12.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderValue: Double
    @Binding var textField: String
    let sliderColor: Color
    
    var body: some View {
        let formatter = NumberFormatter()
        
        HStack {
            Text("\(lround(sliderValue))")
                .frame(width: 50, height: 20)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(sliderColor)
            TextField(textField, value: $sliderValue, formatter: formatter)
                .textFieldStyle(.roundedBorder)
                .frame(width: 50, height: 20)
        }
    }
}

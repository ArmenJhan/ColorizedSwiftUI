//
//  SliderView.swift
//  ColorizedSwiftUI
//
//  Created by Armen Madoyan on 12.12.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderValue: Double
    let sliderColor: Color
    @Binding var text: String
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
                .frame(width: 50, height: 20)
            Slider(value: $sliderValue, in: 1...255, step: 1)
                .accentColor(sliderColor)
            TextField("0", text: $text)
                .textFieldStyle(.roundedBorder)
                .frame(width: 50, height: 20)
        }
    }
}


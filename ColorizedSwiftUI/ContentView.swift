//
//  ContentView.swift
//  ColorizedSwiftUI
//
//  Created by Armen Madoyan on 12.12.2022.
//

import SwiftUI

enum SliderColor {
    case red
    case green
    case blue
}

struct ContentView: View {
    @State private var redSliderValue = 0.0
    @State private var greenSliderValue = 125.0
    @State private var blueSliderValue = 255.0

    @State private var redColorTF = ""
    @State private var greenColorTF = ""
    @State private var blueColorTF = ""



    var body: some View {
        ZStack {
            Color(.systemGray)
                .ignoresSafeArea()
            VStack {
                Rectangle()
                    .frame(width: 300, height: 150)
                    .cornerRadius(25)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .foregroundColor(
                        Color(
                            red: redSliderValue / 255,
                            green: greenSliderValue / 255 ,
                            blue: blueSliderValue / 255
                        )
                    )

                SliderView(sliderValue: $redSliderValue, sliderColor: .red, text: $redColorTF)
                SliderView(sliderValue: $greenSliderValue, sliderColor: .green, text: $greenColorTF)
                SliderView(sliderValue: $blueSliderValue, sliderColor: .blue, text: $blueColorTF)

                Spacer()
            }
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

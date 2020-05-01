//
//  ContentView.swift
//  swiftUI_ColorFinder
//
//  Created by 薛義郎 on 2020/5/1.
//  Copyright © 2020 薛義郎. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var redValue: Double
    @State var greenValue: Double
    @State var blueValue: Double
    
    var body: some View {
        ZStack {
            Color(red: redValue, green: greenValue, blue: blueValue)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    MyText(color: "R", value: redValue)
                    Spacer()
                    MyText(color: "G", value: greenValue)
                    Spacer()
                    MyText(color: "B", value: blueValue)
                }.offset(x: 0, y: 50)
                
                Spacer()
                
                Slider(value: $redValue)
                Slider(value: $greenValue)
                Slider(value: $blueValue)
            }.frame(width: UIScreen.main.bounds.size.width * 0.7)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(redValue: 1.0, greenValue: 1.0, blueValue: 1.0)
    }
}

struct MyText: View {
    var color: String
    var value: Double
    
    var body: some View {
        HStack {
            Text(color + ": \(Int(value * 255.0))")
                .font(.title)
                .fontWeight(.light)
            Spacer()
        }.frame(width: 100.0).fixedSize()
    }
}

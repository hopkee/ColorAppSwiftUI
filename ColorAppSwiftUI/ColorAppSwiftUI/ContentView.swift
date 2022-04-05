//
//  ContentView.swift
//  ColorAppSwiftUI
//
//  Created by Valya on 4.04.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentColor = CustomColor(red: 200, green: 200, blue: 200)
    @State private var savedColor = CustomColor(red: 200, green: 200, blue: 200)

    
    var body: some View {
        ScrollView {
            VStack {
                VStack(alignment: .leading) {
                    Text("Current color:").bold()
                    Rectangle().frame(width: 350, height: 150).foregroundColor(Color(red: currentColor.red / 255, green: currentColor.green / 255, blue: currentColor.blue / 255))
                    Text("Saved color:").bold()
                    Rectangle().frame(width: 350, height: 150).foregroundColor(Color(red: savedColor.red / 255, green: savedColor.green / 255, blue: savedColor.blue / 255))
                }
                VStack {
                    HStack {
                        ColorSlider(value: $currentColor.red)
                        TextField(lround(currentColor.red).description, text: $currentColor.textRed).textFieldStyle(.roundedBorder).textContentType(.oneTimeCode)
                            .keyboardType(.numberPad).frame(width: 50)
                    }
                    HStack {
                        ColorSlider(value: $currentColor.green)
                        TextField(lround(currentColor.green).description, text: $currentColor.textGreen).textFieldStyle(.roundedBorder).textContentType(.oneTimeCode)
                            .keyboardType(.numberPad).textContentType(.telephoneNumber).frame(width: 50)
                    }
                    HStack {
                        ColorSlider(value: $currentColor.blue)
                        TextField(lround(currentColor.blue).description, text: $currentColor.textBlue).textFieldStyle(.roundedBorder).textContentType(.oneTimeCode)
                            .keyboardType(.numberPad).textContentType(.telephoneNumber).frame(width: 50)
                    }
                }
                VStack {
                    Button("Save color", action: saveData)
                        .padding()
                        .buttonStyle(.borderedProminent)
                }
            }.frame(width: 350)
        }
    }
    
    private func saveData() {
        savedColor = currentColor
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

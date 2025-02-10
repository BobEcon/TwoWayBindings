//
//  ContentView.swift
//  TwoWayBindings
//
//  Created by Robert Beachill on 09/02/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var pressCount: Int = 0
    @State private var toggleISON: Bool = true
    @State private var name: String = ""
    @State private var selectedColor: Color = .red
    @State private var selectedDate: Date = Date()
    @State private var stepperValue = 1
    @State private var sliderValue = 50.0
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Press Count: \(pressCount)")
            
            Button("Press Me") {
                pressCount += 1
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
            
            TextField("Enter a name", text: $name)
                .textFieldStyle(.roundedBorder)
            Text("Name entered: \(name)")
            
            Spacer()
            
            Toggle("Toggle is \(toggleISON ? "on" : "off")", isOn: $toggleISON)
            
            Spacer()
            
            Rectangle()
                .fill(selectedColor)
                .frame(width: 100, height: 100)


            ColorPicker("Pick a color:", selection: $selectedColor)
            
            Spacer()
            
            DatePicker("Date:", selection: $selectedDate)
            Text("Selected date is: \(selectedDate.formatted(date: .abbreviated, time: .shortened))")
            
            Spacer()
            
            Stepper("Stepper Value: \(stepperValue)", value: $stepperValue, in: 1...10)
            
            Spacer()
            
            Slider(value: $sliderValue, in: 0...100) {
                // Accessibility label
            } minimumValueLabel: {
                Image(systemName: "speaker.minus")
//                Text("0")
            } maximumValueLabel: {
                Image(systemName: "speaker.plus")
//                Text("100")
            }

//            Text("Slider \(sliderValue.formatted(.number.precision(.fractionLength(1))))")
//            Text("Slider value: \(String(format: "%.1f", sliderValue))")
            Text("Slider value \(Int(sliderValue))%")
            
            Spacer()
        }
        .font(.title2)
//        .border(Color.gray)
        .padding()
       
    }
}

#Preview {
    ContentView()
}

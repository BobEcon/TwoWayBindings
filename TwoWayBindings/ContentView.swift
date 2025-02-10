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
            Text("Name entered: \(name)")
            
            Spacer()
            
            Toggle("Toggle is \(toggleISON ? "on" : "off")", isOn: $toggleISON)

            Spacer()
        }
        .font(.title2)
        .border(Color.gray)
        .padding()
       
    }
}

#Preview {
    ContentView()
}

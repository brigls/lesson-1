//
//  ContentView.swift
//  lesson-1
//
//  Created by Людмила Бригаднова on 01.06.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green, none
}

struct ContentView: View {
    @State private var startButton = true
    @State private var currentLight = CurrentLight.none
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                trafficLights
                Spacer()
                Button(action: {
                    if startButton {
                        startButton = false
                    }
                    
                    switch currentLight {
                
                    case .red: currentLight = .yellow
                    case .yellow: currentLight = .green
                    default: currentLight = .red
                        
                    }
                    
                }) {
                    Text(startButton ? "START" : "NEXT")
                        .foregroundColor(.white)
                        .font(.title)
                }
                .frame(width: 180, height: 60)
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.blue))
                .overlay(RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 3))
            }
            .padding()
        }
    }
    
    private var trafficLights: some View {
        VStack (spacing: 10) {
            ColorCircle(color: .red, lightIsOn: currentLight == .red ? true : false)
            ColorCircle(color: .yellow, lightIsOn: currentLight == .yellow ? true : false)
            ColorCircle(color: .green, lightIsOn: currentLight == .green ? true : false)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

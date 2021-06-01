//
//  ColorCircle.swift
//  lesson-1
//
//  Created by Людмила Бригаднова on 01.06.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let lightIsOn: Bool
    
    var body: some View {
        Circle()
            .foregroundColor(color.opacity(lightIsOn ? 1 : 0.5))
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, lightIsOn: false)
    }
}

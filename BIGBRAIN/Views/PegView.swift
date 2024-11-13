//
//  PegView.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/13.
//

import SwiftUI

struct PegView: View {
    
    var peg: Peg
    
    var body: some View {
        Circle()
            .fill(RadialGradient(gradient: Gradient(colors: [peg.displayColor, .white]), center: .center, startRadius: 5, endRadius: 50))
            .frame(width: 50, height: 50)
    }
}

#Preview {
    let peg = Peg(color: "yellow")
    PegView(peg: peg)
}

//
//  HintPegView.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/14.
//

import SwiftUI

struct HintPegView: View {
    
    var hintPeg: HintPeg
    
    var body: some View {
        Circle()
            .fill(hintPeg.displayColor)
            .frame(width: 20, height: 20)
    }
}

#Preview {
    let hintPeg = HintPeg(color: "white")
    HintPegView(hintPeg: hintPeg)
        .background(.black)
}

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
            .frame(width: 21, height: 21)
    }
}

#Preview {
    let hintPeg = HintPeg(color: "red")
    HintPegView(hintPeg: hintPeg)
        .background(.black)
}

//
//  RowView.swift
//  BIGBRAIN
//
//  Created by Jackson Merle on 2024/11/13.
//

import SwiftUI

struct RowView: View {
    
    let peg1: Peg? = Optional.none
    let peg2: Peg? = Optional.none
    let peg3: Peg? = Optional.none
    let peg4: Peg? = Optional.none
    
    var body: some View {
        HStack {
            Image(systemName: "circle.slash")
                .font(.largeTitle)
                .foregroundStyle(.tint)
                .opacity(0.2)
                .brightness(-0.4)
                .padding(.leading, 15)
            Image(systemName: "circle.slash")
                .font(.largeTitle)
                .foregroundStyle(.tint)
                .opacity(0.2)
                .brightness(-0.4)
                .padding(.leading, 20)
            Image(systemName: "circle.slash")
                .font(.largeTitle)
                .foregroundStyle(.tint)
                .opacity(0.2)
                .brightness(-0.4)
                .padding(.leading, 20)
            Image(systemName: "circle.slash")
                .font(.largeTitle)
                .foregroundStyle(.tint)
                .opacity(0.2)
                .brightness(-0.4)
                .padding(.leading, 20)
            Spacer()
            HStack {
                VStack {
                    Image(systemName: "circle.slash")
                        .font(.title2)
                        .foregroundStyle(.tint)
                        .opacity(0.2)
                        .brightness(-0.4)
                    Image(systemName: "circle.slash")
                        .font(.title2)
                        .foregroundStyle(.tint)
                        .opacity(0.2)
                        .brightness(-0.4)
                }
                VStack {
                    Image(systemName: "circle.slash")
                        .font(.title2)
                        .foregroundStyle(.tint)
                        .opacity(0.2)
                        .brightness(-0.4)
                    Image(systemName: "circle.slash")
                        .font(.title2)
                        .foregroundStyle(.tint)
                        .opacity(0.2)
                        .brightness(-0.4)
                }
            }
        }
        .padding()
        .background{
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.tint)
                .opacity(0.25)
                .brightness(-0.4)
        }
    }
}

#Preview {
    RowView()
}

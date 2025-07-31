//
//  CustomButtonView.swift
//  HikeApp
//
//  Created by Rodolfo Vasconcelos on 7/30/25.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [.white, .customGreenLight, .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            
            Circle()
                .stroke(
                    LinearGradient(
                        colors: [.customGrayLight, .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom
                    ),
                    lineWidth: 4)
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(
                        colors: [.customGrayLight, .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
        }//: ZStack
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
        .padding()
}

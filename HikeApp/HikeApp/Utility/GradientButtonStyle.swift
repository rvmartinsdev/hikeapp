//
//  GradientButtonStyle.swift
//  HikeApp
//
//  Created by Rodolfo Vasconcelos on 7/31/25.
//

import Foundation
import SwiftUI

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ?
                    LinearGradient(
                        colors: [Color.customGrayMedium, Color.customGrayLight],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                :
                    LinearGradient(
                        colors: [Color.customGrayLight, Color.customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom
                    )
            )
            .cornerRadius(40)
    }
}

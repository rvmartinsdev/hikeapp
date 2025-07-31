//
//  CardView.swift
//  HikeApp
//
//  Created by Rodolfo Vasconcelos on 7/30/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        //MARK: - CARD
        
        ZStack {
            CustomBackgroundView()
            VStack {
                //MARK: - HEADER
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.customGrayLight, .customGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                        Spacer()
                        Button() {
                            //ACTION: show a sheet
                            print("The button was pressed")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    Text("Fun and enjoyable acitivies for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }//: HEADER
                .padding(.horizontal, 30)
                
                //MARK: - MAIN CONTENT
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [Color.customIndigoMedium, Color.customSalmonLight],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                
                //MARK: - FOOTER
            }
        }//: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}

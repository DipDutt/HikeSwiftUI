//
//  CardView.swift
//  HikeSwiftUI
//
//  Created by Dip on 1/7/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [Color("ColorIndigoMedium"), Color("ColorIndigoMedium 1")], startPoint:.topLeading, endPoint: .bottomTrailing))
            VStack {
                Image(.image1)
                    .resizable()
                    .scaledToFit()
               
            }
            .padding()
            
            
        }
    }
}

#Preview {
    CardView()
}

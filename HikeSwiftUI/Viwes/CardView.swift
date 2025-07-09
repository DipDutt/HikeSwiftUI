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
            // MARK: - THIS SECTION For CustomBackgroundView()
            CustomBackgroundView()
            
            
            
            
            
            ZStack {
                // MARK: -  THIS SECTION FOR Circle()
                Circle()
                    .fill(
                        LinearGradient(colors: [Color(.colorIndigoMedium), Color(.colorIndigoMedium1)], startPoint:.topLeading, endPoint: .bottomTrailing))
                    .frame(width: 400, height: 300)
        
                // MARK: -  THIS SECTION FOR IMAGE
                Image(.image1)
                    .resizable()
                    .scaledToFit()
            }// 2nd zstack
        }// 1st zstck
       
    }
}

#Preview {
    CardView()
}

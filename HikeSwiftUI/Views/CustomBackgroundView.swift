//
//  CustomBackgroundView.swift
//  HikeSwiftUI
//
//  Created by Dip on 9/7/25.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - 3rd layer
            Color(.colorGreenDark)
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .offset(y: 12)
                .padding()
            
            // MARK: - 2nd layer
            Color(.colorGreenLight)
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .offset(y: 3)
                .opacity(0.85)
                .padding()
        
            // MARK: - 1st Layer
            Rectangle()
                .fill(LinearGradient(colors: [Color(.colorGreenLight), Color(.colorGreenMedium)], startPoint: .top, endPoint: .leading))
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .padding()
            
            
            
        }
    }
}

#Preview {
    CustomBackgroundView()
}

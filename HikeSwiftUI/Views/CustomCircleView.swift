//
//  CustomCircleView.swift
//  HikeSwiftUI
//
//  Created by Dip on 16/7/25.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    var body: some View {
        ZStack {
            // MARK: - Lower View.
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .colorIndigoMedium,
                            .colorIndigoMedium1
                        ],
                        startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                    )
                )
            
             // MARK: - Upper View.
                .onAppear {
                    withAnimation(Animation.linear(duration: 3).repeatForever(autoreverses: true)) {
                        self.isAnimateGradient.toggle()
                    }
                    
                }
            
            
        }
        .frame(width: 300, height: 300)
    }
}

#Preview {
    CustomCircleView()
}

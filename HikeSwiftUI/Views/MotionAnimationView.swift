//
//  MotionAnimationView.swift
//  HikeSwiftUI
//
//  Created by Dip on 16/7/25.
//

import SwiftUI

struct MotionAnimationView: View {
     // MARK: - Properties
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false
    @State private var isAnimateGradient: Bool = false
     // MARK: - Main Body
    var body: some View {
        ZStack {
            
            Circle()
                .fill()
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
          ForEach(0...randomCircle, id: \.self) { item in
            Circle()
              .foregroundColor(.white)
              .opacity(0.25)
              .frame(width:randomSize())
              .position(
                x: randomCoordinate(),
                y: randomCoordinate()
              )
              .scaleEffect(isAnimating ? randomScale() : 1)
              .onAppear {
                withAnimation(
                  .interpolatingSpring(stiffness: 0.25, damping: 1)
                  .repeatForever()
                  .speed(randomSpeed())
                  .delay(randomDelay())
                ) {
                    isAnimating.toggle()
                }
                  withAnimation(Animation.linear(duration: 3).repeatForever(autoreverses: true)) {
                      self.isAnimateGradient.toggle()
                  }
                  
              }
          }
        }
        .frame(width: 300, height: 300)
        .mask(Circle())
        .drawingGroup()
    }
}

 // MARK: - Create Extension of MotionAnimationView.
extension MotionAnimationView {
    // MARK: - FUNCTIONS
    
    // 1. RANDOM COORDINATE
    func randomCoordinate() -> CGFloat {
      return CGFloat.random(in: 0...256)
    }
    
    // 2. RANDOM SIZE
    func randomSize() -> CGFloat {
      return CGFloat(Int.random(in: 4...80))
    }
    
    // 3. RANDOM SCALE
    func randomScale() -> CGFloat {
      return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    // 4. RANDOM SPEED
    func randomSpeed() -> Double {
      return Double.random(in: 0.05...1.0)
    }
    
    // 5. RANDOM DELAY
    func randomDelay() -> Double {
      return Double.random(in: 0...2)
    }
    
}

#Preview {
    MotionAnimationView()
   
}

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
            // MARK: - HeaderView.
            VStack(alignment: .leading) {
                Text("Hiking")
                    .fontWeight(.black)
                    .font(.system(size:52))
                    .foregroundStyle(LinearGradient(colors: [.colorGrayLight, .colorGrayMedium], startPoint: .top, endPoint: .bottom))
                Text("Fun and enjoyable outdoor activity for friends and families.")
                  .multilineTextAlignment(.leading)
                  .italic()
                  .foregroundColor(.colorGrayMedium)
                
            }// end of vstack
            .frame(maxHeight: .infinity, alignment: .top)
            .padding(.vertical, 30)
            .padding(.horizontal, 30)
            
            
        }
    }
}

#Preview {
    CustomBackgroundView()
}

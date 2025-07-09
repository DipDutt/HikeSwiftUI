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
            
            // MARK: - HeaderView.
            VStack(alignment: .leading) {
                HStack() {
                    Text("Hiking")
                        .fontWeight(.black)
                        .font(.system(size:52))
                        .foregroundStyle(LinearGradient(colors: [.colorGrayLight, .colorGrayMedium], startPoint: .top, endPoint: .bottom))
                    
                    Button {
                        //
                    } label: {
                        CustomButtonView()
                    }
                    
                }// end of the hstack
                Text("Fun and enjoyable outdoor activity for friends and families.")
                    .multilineTextAlignment(.leading)
                    .italic()
                    .foregroundColor(.colorGrayMedium)
                
            }// end of vstack
            .frame(maxHeight: .infinity, alignment: .top)
            .padding(.vertical, 30)
            .padding(.horizontal, 30)
            
            
            
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

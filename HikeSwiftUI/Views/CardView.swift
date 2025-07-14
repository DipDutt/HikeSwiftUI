//
//  CardView.swift
//  HikeSwiftUI
//
//  Created by Dip on 1/7/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARK: - THIS SECTION For CustomBackgroundView() and HeaderView.
        ZStack {
            CustomBackgroundView()
            
            // MARK: - HeaderView.
            VStack {
                VStack(alignment: .leading) {
                    HStack() {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size:52))
                            .foregroundStyle(LinearGradient(colors: [.colorGrayLight, .colorGrayMedium], startPoint: .top, endPoint: .bottom))
                        Spacer()
                        // MARK: - Create ButtonView.
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
                    
                }
                .padding(.horizontal, 40)
                .frame(maxHeight: .infinity,alignment: .top)
                .padding(.vertical, 30)
                // end of inner vstack.
            }
            // end of outer vstack.
            
            
            // MARK: - This section for image and circle.
            ZStack {
                // MARK: -  THIS section for  Circle().
                Circle()
                    .fill(
                        LinearGradient(colors: [Color(.colorIndigoMedium), Color(.colorIndigoMedium1)], startPoint:.topLeading, endPoint: .bottomTrailing))
                    .frame(width: 400, height: 300)
                
                // MARK: -  This section for image.
                Image(.image1)
                    .resizable()
                    .scaledToFit()
            }
            // 2nd zstack
            
             // MARK: - FooterView
            
            VStack {
                Button("press the button") {
                    //
                }
                .buttonStyle(.borderedProminent)
            }
            .frame(maxHeight: .infinity,alignment: .bottom)
            .padding(.bottom , 30)
        }// 1st zstck
    }// end of the body
}

#Preview {
    CardView()
}

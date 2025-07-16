//
//  CardView.swift
//  HikeSwiftUI
//
//  Created by Dip on 1/7/25.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    @State private var imageNumber:Int = 1
    @State private var randomImageNumber: Int = 1
    @State private var isPresented: Bool = false
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
                            isPresented.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isPresented) {
                            SettingsView()
                                .presentationDetents([.medium, .large])
                        }
                    }// end of the hstack
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.colorGrayMedium)
                    
                }
                .frame(maxHeight: .infinity,alignment: .top)
                .padding(.horizontal, 40)
                .padding(.vertical, 30)
                // end of inner vstack.
            }
            // end of outer vstack.
            
            
            // MARK: - This section for image and circle.
            ZStack {
                // MARK: -  THIS section for  Circle().
                MotionAnimationView()
                
                // MARK: -  This section for image.
                Image("image-\(imageNumber)")
                    .resizable()
                    .scaledToFit()
                    .offset(x: 5)
                    .frame(width: 350, height: 400)
                    .animation(.easeInOut, value: imageNumber)
            }
            // 2nd zstack
            
            // MARK: - FooterView
            
            VStack {
                Button {
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.colorGreenLight,.colorGreenMedium], startPoint: .top, endPoint: .bottom))
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(CustomButtonStyle())
                
            }
            .frame(maxHeight: .infinity,alignment: .bottom)
            .padding(.bottom , 30)
        }// 1st zstck
        .frame(width: 380, height: 670)
    }// end of the body
}


// MARK: - Create Extension of CardView
extension CardView {
    // MARK: - Create  random image method to show random a image.
    func randomImage() {
        while randomImageNumber == imageNumber {
            randomImageNumber = Int.random(in: 1...5)
            print("random number is \(randomImageNumber)")
        }
        imageNumber = randomImageNumber
    }
}


#Preview {
    CardView()
}

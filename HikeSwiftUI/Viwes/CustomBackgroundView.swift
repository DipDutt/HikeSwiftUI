//
//  CustomBackgroundView.swift
//  HikeSwiftUI
//
//  Created by Dip on 9/7/25.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(LinearGradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")], startPoint: .top, endPoint: .leading))
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .padding()
        }
    }
}

#Preview {
    CustomBackgroundView()
}

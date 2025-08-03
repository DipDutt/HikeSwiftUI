//
//  CustomButtonStyle.swift
//  HikeSwiftUI
//
//  Created by Dip on 15/7/25.
//

import Foundation
import SwiftUI

 // MARK: - Create Custom Button Style.
public struct CustomButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(.ultraThinMaterial)
            .background(
                configuration.isPressed ? LinearGradient(colors: [.colorGrayMedium, .colorGrayLight], startPoint: .top, endPoint: .bottom) : LinearGradient(colors: [.colorGrayLight,.colorGrayMedium], startPoint: .top, endPoint: .bottom))
            .cornerRadius(40)
    }
}

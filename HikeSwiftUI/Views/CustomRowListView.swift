//
//  CustomRowListView.swift
//  HikeSwiftUI
//
//  Created by Dip on 16/7/25.
//

import SwiftUI

struct CustomRowListView: View {
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    var body: some View {
        LabeledContent {
            if rowContent != nil {
              Text(rowContent ?? "no content")
                .foregroundColor(.primary)
                .fontWeight(.heavy)
            } else if (rowLinkLabel != nil && rowLinkDestination != nil) {
                Link(rowLinkLabel ?? "no link", destination: URL(string: rowLinkDestination ?? "https://www.apple.com")!)
                .foregroundColor(.pink)
                .fontWeight(.heavy)
            } else {
              EmptyView()
            }
        } label: {
            HStack {
                ZStack {
                    Circle()
                        .fill(rowTintColor)
                        .frame(width: 24, height: 24)
                        
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
                    .font(.headline)
            }
            .padding(.horizontal ,10)
        }

    }
}

#Preview {
    CustomRowListView()
}

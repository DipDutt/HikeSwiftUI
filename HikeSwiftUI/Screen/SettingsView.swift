//
//  SettingsView.swift
//  HikeSwiftUI
//
//  Created by Dip on 16/7/25.
//

import SwiftUI

struct SettingsView: View {
    let imageArray:[String] = ["AppIcon-MagnifyingGlass",
                               "AppIcon-Map",
                               "AppIcon-Mushroom",
                               "AppIcon-Camera",
                               "AppIcon-Backpack",
                               "AppIcon-Campfire"]
    var body: some View {
        List {
            // MARK: -  Create Section Header.
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                    
                }
                .foregroundStyle(LinearGradient(colors: [.colorGreenLight,.colorGreenMedium,.colorGreenDark], startPoint: .top, endPoint: .bottom))
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.colorGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
            }
            .listRowSeparator(.hidden)
            
            
            // MARK: - Section For Change Appicon
            
            Section {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 16) {
                        ForEach(imageArray.indices,id: \.self) { indexValue in
                            Image("\(imageArray[indexValue])-Preview")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 25))
                                .onTapGesture {
                                    print("Icon \(imageArray[indexValue]) was pressed.")
                                    UIApplication.shared.setAlternateIconName(imageArray[indexValue]) { error in
                                        if error != nil {
                                            print("Failed request to update the app's icon: \(String(describing: error?.localizedDescription))")
                                        } else {
                                            print("Success! You have changed the app's icon to \(imageArray[indexValue])")
                                        }
                                    }
                                }
                            
                            
                        }
                        
                    }
                }
                Text("Choose your favourite app icon from the collection above.")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
                
            }
            .listRowSeparator(.hidden)
            
            // MARK: - Section For About APP .
            
            Section {
                CustomRowListView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                
                CustomRowListView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                
                CustomRowListView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                
                CustomRowListView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                
                CustomRowListView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "John Doe", rowTintColor: .mint)
                
                CustomRowListView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
                
                CustomRowListView(rowLabel: "Website", rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "Credo Acedemy", rowLinkDestination: "https://credo.academy")
            } header: {
                Text("ABOUT THE APP")
            } footer: {
                Text("Copyright © All right reserved.")
                
            }
            
        }
    }
}
#Preview {
    SettingsView()
}

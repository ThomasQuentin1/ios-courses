//
//  menu.swift
//  Landmarks
//
//  Created by Quentin Thomas on 01/12/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct menu: View {
    var body: some View {
        TabView {
            LandmarkList()
                .tabItem {
                    Image(systemName: "bitcoinsign.circle.fill")
                    Text("First Tab")
                }
            profil()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Second Tab")
                }
            
        }.navigationBarBackButtonHidden(true)
    }
}

struct menu_Previews: PreviewProvider {
    static var previews: some View {
        menu()
    }
}

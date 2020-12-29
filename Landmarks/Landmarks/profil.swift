//
//  profil.swift
//  Landmarks
//
//  Created by Quentin Thomas on 01/12/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI


struct profil: View {
    
    @State var tab = 0
    
    var body: some View {
        ScrollView(.vertical) {
            VStack (alignment: .center){
                VStack() {
                    Text("Thomas Quentin").bold()
                    profilData.image
                        .resizable()
                        
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth:4))
                        .shadow(radius: 10)
                        .scaledToFit()
                }
                HStack {
                    Button(action: {
                        tab = 1
                    }) {
                        Text(LocalizedStringKey("actual"))
                    }
                    Spacer().frame(width: 200)
                    Button(action: {
                        tab = 0
                    }) {
                        Text(LocalizedStringKey("history"))
                    }
                    
                }
                if (tab == 1) {
                    VStack{
                        List(actualCryptoData){
                            actualRow in
                            ActualRow(actual: actualRow)
                        }
                    }
                } else {
                    VStack{
                        List(historyData){
                            actualRow in
                            HistoryRow(history: actualRow)
                        }
                    }
                    
                }
            }
            
        }
    }
}

struct profil_Previews: PreviewProvider {
    static var previews: some View {
        profil()
    }
}

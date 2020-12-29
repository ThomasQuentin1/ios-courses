//
//  Buy.swift
//  IOS-COURSES
//
//  Created by Quentin Thomas on 15/12/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI
import Combine

struct Buy: View {
    var crypto: Landmark
    @State private var quantity: String = "0"
    @State private var showingAlert = false

    var body: some View {
        VStack (alignment: .center){
        Text("\(Text("HowMany")) \(crypto.name) \(Text("doyouwanttobuy?"))")
        TextField("", text: $quantity)
            .multilineTextAlignment(.center)
             .keyboardType(.numberPad)
            .padding()
             .onReceive(Just(quantity)) { newValue in
                 let filtered = newValue.filter { "0123456789".contains($0) }
                 if filtered != newValue {
                     self.quantity = filtered
                 }
         }
            if (Int(quantity) == nil || quantity == "0") {
                Text ("\(Text("Total")) : 0 €")
            } else {
                Text("\(Text("Total")) \(quantity) * \(crypto.price)")
            }
            Button(action: {
                        self.showingAlert = true
                    }) {
                        Text("buy")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: UIScreen.main.bounds.size.width * 0.9, height: 50)
                            .background(Color.green)
                            .cornerRadius(15.0)
                    }
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("Importantmessage"), message: Text("Notavailable"), dismissButton: .default(Text("Gotit")))
                    }
        }
    }
}

struct Buy_Previews: PreviewProvider {
    static var previews: some View {
        Buy(crypto: landmarkData[0])
    }
}

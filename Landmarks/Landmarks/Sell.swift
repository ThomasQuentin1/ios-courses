//
//  Sell.swift
//  IOS-COURSES
//
//  Created by Quentin Thomas on 15/12/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct Sell: View {
    var crypto: Landmark
    
    var body: some View {
        Text("Sell")
    }
}

struct Sell_Previews: PreviewProvider {
    static var previews: some View {
        Sell(crypto: landmarkData[0])
    }
}

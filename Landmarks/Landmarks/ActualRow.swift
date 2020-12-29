/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A single row to be displayed in a list of landmarks.
 */

import SwiftUI

struct ActualRow: View {
    var actual: ActualCrypto
    let quantity = LocalizedStringKey("quantity")
    let value =  LocalizedStringKey("value")
    var body: some View {
        HStack {
            
            actual.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(actual.name).bold()
            Spacer()
            VStack {
                Text("\(Text(quantity)) :\(actual.quantity)").padding(5)
                Text("\(Text(value)): \(actual.value)")
            }
        }
    }
}

struct ActualRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ActualRow(actual: actualCryptoData[0])
            ActualRow(actual: actualCryptoData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

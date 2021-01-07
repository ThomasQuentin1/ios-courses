/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A single row to be displayed in a list of landmarks.
 */

import SwiftUI

struct HistoryRow: View {
    var history: History
    let quantity = LocalizedStringKey("quantity")
    let value =  LocalizedStringKey("value")
    
    var body: some View {
        HStack {
            history.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(history.name).bold()
            Spacer()
            VStack {
                if (history.buy) {
                    Text("\(Text(quantity)): \(history.quantity)")
                        .bold()
                        .padding(5)
                        .foregroundColor(Color.green)
                    
                    Text("\(Text(value)): \(history.value)").foregroundColor(Color.green).bold()
                } else {
                    Text("\(Text(quantity)): \(history.quantity)")
                        .bold().padding(5).foregroundColor(Color.red)
                    Text("\(Text(value)): \(history.value)")
                        .bold().foregroundColor(Color.red)
                }
            }
        }
    }
}

struct HistoryRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HistoryRow(history: historyData[0])
            HistoryRow(history: historyData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

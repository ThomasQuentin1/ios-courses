/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A single row to be displayed in a list of landmarks.
 */

import SwiftUI

struct HistoryRow: View {
    var history: History
    
    var body: some View {
        HStack {
            history.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(history.name).bold()
            Spacer()
            VStack {
                if (history.buy) {
                    Text("quantity: \(history.quantity)").padding(5).foregroundColor(Color.green)
                    Text("Value: \(history.value)").foregroundColor(Color.green)
            
                    

                } else {
                    
                    Text("quantity: \(history.quantity)").padding(5).foregroundColor(Color.red)
                    Text("Value: \(history.value)").foregroundColor(Color.red)
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

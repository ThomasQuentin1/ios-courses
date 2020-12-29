/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A view showing the details for a landmark.
 */

import SwiftUI
import SwiftUICharts

struct LandmarkDetail: View {
    var landmark: Landmark
    @State var showingBuyModal = false
    @State var showingSellModal = false

    var body: some View {
        VStack {
            VStack (alignment: .leading, spacing: 10){
                Text(landmark.price).bold().font(.title).padding(.leading, 10)
                if  (landmark.evolution.hasPrefix("+")){
                    Text(landmark.evolution).foregroundColor(Color.green).bold().padding(.leading, 10)
                } else {
                    Text(landmark.evolution).foregroundColor(Color.red).bold().padding(.leading, 10)
                }
                LineView(data: landmark.graphs.value).frame(width: nil, height: 300)
                
            }
            VStack(alignment: .center ) {
                
                Button(action: {
                           self.showingBuyModal.toggle()
                       }) {
                    Text("buy")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: UIScreen.main.bounds.size.width * 0.9, height: 50)
                        .background(Color.green)
                        .cornerRadius(15.0)                   }.sheet(isPresented: $showingBuyModal) {
                           Buy(crypto: landmark)
                       }
         }
            VStack (alignment: .leading){
                
                Text("Market Cap")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                Text(landmark.marketCap).bold()
                HStack(alignment: .top) {
                    VStack (alignment: .leading){
                        Text("Low")
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                        Text(landmark.low).bold()
                    }
                    Spacer( )
                    VStack (alignment: .leading){
                        Text("High")
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                        Text(landmark.high).bold()
                    }
                }.padding(5)
                HStack(alignment: .top) {
                    VStack (alignment: .leading){
                        Text("Volume 24h")
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                        Text(landmark.volume).bold()
                    }
                    Spacer( )
                    VStack (alignment: .leading){
                        Text("Circulating")
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                        Text(landmark.circulating).bold()
                    }
                }.padding(5)
            } .padding(.leading, 10)
            
            Button(action: {
                       self.showingBuyModal.toggle()
                   }) {
                Text("sell")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: UIScreen.main.bounds.size.width * 0.9, height: 50)
                    .background(Color.red)
                    .cornerRadius(15.0)                   }.sheet(isPresented: $showingBuyModal) {
                       Sell(crypto: landmark)
                   }
                       }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    landmark.image
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text(landmark.name).font(.headline)
                }
            }
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        
        LandmarkDetail(landmark: landmarkData[0])        .navigationBarTitle(Text("Current Name"), displayMode: .inline)
        
    }
}

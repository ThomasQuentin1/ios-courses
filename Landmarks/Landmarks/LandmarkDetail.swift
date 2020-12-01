/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A view showing the details for a landmark.
 */

import SwiftUI
import SwiftUICharts

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            LineChartView(data: self.landmark.graphs.value, title: self.landmark.name, legend: self.landmark.price, form: ChartForm.large)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                
                HStack(alignment: .top) {
                    Text(landmark.name)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.name)
                        .font(.subheadline)
                }
                Text(landmark.price)
                
            }
            .padding()
            
            Spacer()
            HStack(alignment: .center ){
                Button(action: {
                }) {
                    Text("buy")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 150, height: 50)
                        .background(Color.green)
                        .cornerRadius(15.0)
                }
                Button(action: {
                }) {
                    Text("sell")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 150, height: 50)
                        .background(Color.red)
                        .cornerRadius(15.0)
                }
            }
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        
        LandmarkDetail(landmark: landmarkData[0])
    }
}

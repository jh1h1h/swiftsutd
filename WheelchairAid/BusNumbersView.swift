//
//  BusNumbersView.swift
//  WheelchairAid
//
//  Created by user on 6/9/23.
//
//
import SwiftUI

struct BusNumbersView: View {
    var busNumbers = ["2","12E","21A","187","98A"]
    var colors  = ["GAS","GAS","SBS","SMRT","TTS"]
    var body: some View {
        NavigationStack{
            List{
                VStack(alignment: . leading){
                    Text("Near By")
                }
                ForEach(busNumbers.indices, id: \.self) { index in
                    NavigationLink {
                        BusStopsView(busNumber: busNumbers[index])
                    } label: {
                        HStack{
                            Text(busNumbers[index])
                            Spacer()
                            Text(colors[index])
                        }
                    }
                    
                }
            }
            .navigationTitle("Bus Numbers")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct BusNumbersView_Previews: PreviewProvider {
    static var previews: some View {
        BusNumbersView()
    }
}

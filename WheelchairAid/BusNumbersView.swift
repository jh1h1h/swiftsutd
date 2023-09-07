//
//  BusNumbersView.swift
//  WheelchairAid
//
//  Created by user on 6/9/23.
//
//
import SwiftUI

struct BusNumbersView: View {
    var busNumbers = ["2","12E","21A","187","98A","268","268B","602","603","702","702A"]
    var colors  = ["GAS","GAS","SBS","SMRT","TTS","SBS","SBS","GAS","TTS","SMRT","SMRT"]
    var body: some View {
        NavigationStack{
            List{
                Section(header: Text("Nearby").font(.system(size: 15))){
                    ForEach(busNumbers.indices, id: \.self) { index in
                        NavigationLink {
                            BusStopsView(busNumber: busNumbers[index])
                        } label: {
                            HStack{
                                Text(busNumbers[index])
                                Spacer()
                                if(colors[index]=="GAS"){
                                    Text(colors[index]).foregroundColor(.yellow)
                                }
                                else if(colors[index]=="TTS"){
                                    Text(colors[index]).foregroundColor(.green)
                                }
                                else if(colors[index]=="SMRT"){
                                    Text(colors[index]).foregroundColor(.red)
                                }
                                else{
                                    Text(colors[index]).foregroundColor(.purple)
                                }
                            }
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

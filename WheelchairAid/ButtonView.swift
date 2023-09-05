//
//  ButtonView.swift
//  WheelchairAid
//
//  Created by I3LT-031 on 5/9/23.
//

import SwiftUI

struct ButtonView: View {
    @State var test = 0
    var body: some View {
        
        VStack {
            Text(String(test))
            Button("Button"){
                test = test + 1
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}

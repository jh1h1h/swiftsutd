//
//  ButtonView.swift
//  WheelchairAid
//
//  Created by I3LT-031 on 5/9/23.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button("Button"){
            print("Hello world")
        }
        .buttonStyle(.borderedProminent)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}

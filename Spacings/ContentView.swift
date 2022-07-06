//
//  ContentView.swift
//  Spacings
//
//  Created by Alexey Agapov on 04.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Oh hi unset")
                Spacer()
            }
            .background(Color.green)
            .padding(.horizontal)
            HStack {
                Spacer()
                Text("Oh hi 16")
                Spacer()
            }
            .background(Color.red)
            .padding(.horizontal, 16)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 13 Pro Max")
            ContentView()
                .previewDevice("iPhone 8")
            ContentView()
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
        }
    }
}

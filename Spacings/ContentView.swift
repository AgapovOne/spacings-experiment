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
                Text("Hello, world!")
                Spacer()
            }
            Spacer()
        }
        .background(Color.green)
        .padding(.horizontal)
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

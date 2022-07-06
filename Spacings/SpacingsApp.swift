//
//  SpacingsApp.swift
//  Spacings
//
//  Created by Alexey Agapov on 04.07.2022.
//

import SwiftUI

@main
struct SpacingsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                VStack {
                    ContentUIView()
                    Text("SwiftUI text")
                        .background(Color.green)
                        .frame(height: 100)
                }.tabItem {
                    Text("UIKit")
                }
                ContentView()
                    .tabItem {
                        Text("SwiftUI")
                    }
            }
        }
    }
}

struct ContentUIView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        ContentViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {

    }
}

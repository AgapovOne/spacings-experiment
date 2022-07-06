//
//  ContentViewController.swift
//  Spacings
//
//  Created by Alexey Agapov on 05.07.2022.
//

import Foundation
import UIKit

final class ContentViewController: UIViewController {

    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        let subview = UIView()
        subview.backgroundColor = .red

        subview.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(subview)
        NSLayoutConstraint.activate([
            subview.topAnchor.constraint(equalTo: view.readableContentGuide.topAnchor),
            subview.bottomAnchor.constraint(equalTo: view.readableContentGuide.bottomAnchor),
            subview.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor),
            subview.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor),
        ])

        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print(
            "WOW",
            view.directionalLayoutMargins,
            "\r",
            view.readableContentGuide.layoutFrame,
            "\r",
            view.frame
        )
        label.text = [
            "\(view.readableContentGuide.layoutFrame)",

            "\(traitCollection.preferredContentSizeCategory.rawValue)"
        ].joined(separator: "\n")
    }
}

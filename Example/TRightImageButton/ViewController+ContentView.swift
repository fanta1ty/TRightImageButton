//
//  ViewController+ContentView.swift
//  TRightImageButton_Example
//
//  Created by Nguyen, Thinh on 03/08/2022.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import TRightImageButton

extension ViewController {
    final class ContentView: UIView {
        private lazy var stackView = UIStackView(arrangedSubviews: [
            demoButton
        ])
        
        let demoButton = TRightImageButton()
        
        init() {
            super.init(frame: .zero)
            addSubviews()
            setupSubviews()
            setupLayout()
        }
        
        @available(*, unavailable)
        required init?(coder: NSCoder) { nil }
    }
}

extension ViewController.ContentView {
    private func addSubviews() {
        addSubview(stackView)
    }
    
    private func setupSubviews() {
        backgroundColor = .white
        
        stackView.axis = .vertical
        stackView.spacing = 24
        stackView.isLayoutMarginsRelativeArrangement = true
        
        demoButton.translatesAutoresizingMaskIntoConstraints = false
        demoButton.customTitleLabel.text = "Right Image Button"
        demoButton.rightImageView.image = UIImage(named: "Image")
        
        demoButton.backgroundColor = .cyan
        demoButton.layer.cornerRadius = 4
        demoButton.layer.masksToBounds = true
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            demoButton.heightAnchor.constraint(equalToConstant: 50),
            demoButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
}

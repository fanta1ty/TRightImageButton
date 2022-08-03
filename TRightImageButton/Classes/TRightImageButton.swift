//
//  TRightImageButton.swift
//  TRightImageButton
//
//  Created by Nguyen, Thinh on 03/08/2022.
//

import Foundation
import TTouchAnimatedButton

open class TRightImageButton: TTouchAnimatedButton {
    private enum Const {
        static let minImageWidth: CGFloat = 10
    }
    
    private let stackView = UIStackView()
    
    public let customTitleLabel = UILabel()
    
    public let rightImageView = UIImageView()
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public init() {
        super.init(frame: .zero)
        
        addSubviews()
        setupSubviews()
        setupConstraints()
    }
}

// MARK: - Private Functions
extension TRightImageButton {
    private func addSubviews() {
        addSubview(stackView)
        
        stackView.addArrangedSubview(customTitleLabel)
        stackView.addArrangedSubview(UIView())
        stackView.addArrangedSubview(rightImageView)
    }
    
    private func setupSubviews() {
        /// stackView
        stackView.isUserInteractionEnabled = false
        stackView.axis = .horizontal
        
        /// customTitleLabel
        customTitleLabel.font = UIFont.systemFont(ofSize: 14)
        
        /// rightImageView
        rightImageView.translatesAutoresizingMaskIntoConstraints = false
        rightImageView.contentMode = .scaleAspectFit
    }
    
    private func setupConstraints() {
        stackView.clipToEdges(.init(top: 16, left: 8, bottom: 16, right: 8))
        
        NSLayoutConstraint.activate([
            rightImageView.widthAnchor.constraint(greaterThanOrEqualToConstant: Const.minImageWidth)
        ])
    }
}

private extension UIView {
    func clipToEdges(_ edges: UIEdgeInsets) {
        guard let superview = superview else { return }
        self.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor, constant: edges.top),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -edges.bottom),
            leftAnchor.constraint(equalTo: superview.leftAnchor, constant: edges.left),
            rightAnchor.constraint(equalTo: superview.rightAnchor, constant: -edges.right)
        ])
    }
}

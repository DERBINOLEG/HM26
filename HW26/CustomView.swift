//
//  CustomView.swift
//  HW26
//
//  Created by Олег Дербин on 20.01.2025.
//

import UIKit

class CustomView: UIView {
    private let viewLabel: UILabel = {
        $0.font = UIFont.boldSystemFont(ofSize: 24)
        $0.textColor = .black
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(viewLabel)
        setupLayout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(_ color: UIColor, _ textLabel: String) {
        self.init()
        self.backgroundColor = color
        viewLabel.text = textLabel
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            viewLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            viewLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5)
        ])
    }
}

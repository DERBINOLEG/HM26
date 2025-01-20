//
//  ViewController.swift
//  HW26
//
//  Created by brubru on 15.10.2024.
//

import UIKit

class ViewController: UIViewController {
	
    private let viewA = CustomView(.lightGray, "A")
    private let viewB = CustomView(.red, "B")
    private let viewC = CustomView(.blue, "C")
    private let viewD = CustomView(.yellow, "D")
    private let viewE = CustomView(.green, "E")
    private let lowLabel = UILabel()
    
	
	override func viewDidLoad() {
		super.viewDidLoad()
		addSubViews()
        setupLabel()
		setupLayout()
	}
}

private extension ViewController {
	func addSubViews() {
		view.addSubview(viewA)
        view.addSubview(lowLabel)
		
		viewA.addSubview(viewB)
		viewA.addSubview(viewC)
		viewB.addSubview(viewD)
		viewC.addSubview(viewE)
	}
	
}

// MARK: -> Private Methods
private extension ViewController {
	func addLabel(to view: UIView, text: String) {
		let label = UILabel()
		label.text = text
		label.font = UIFont.boldSystemFont(ofSize: 24)
		label.textColor = .black
		label.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(label)
		
		NSLayoutConstraint.activate([
			label.topAnchor.constraint(equalTo: view.topAnchor, constant: 5),
			label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5)
		])
	}
    
    func setupLabel() {
        lowLabel.text = "Здесь будет название выбранной вью"
        lowLabel.translatesAutoresizingMaskIntoConstraints = false
        lowLabel.textColor = .black
    }
    
	
}

private extension ViewController {
	func setupLayout() {
		viewA.translatesAutoresizingMaskIntoConstraints = false
		viewB.translatesAutoresizingMaskIntoConstraints = false
		viewC.translatesAutoresizingMaskIntoConstraints = false
		viewD.translatesAutoresizingMaskIntoConstraints = false
		viewE.translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint.activate([
			
			viewA.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20),
			viewA.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
			viewA.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
			viewA.heightAnchor.constraint(equalToConstant: 300),
			
			viewB.topAnchor.constraint(equalTo: viewA.topAnchor, constant: 20),
			viewB.leadingAnchor.constraint(equalTo: viewA.leadingAnchor, constant: 20),
			viewB.widthAnchor.constraint(equalToConstant: 150),
			viewB.heightAnchor.constraint(equalToConstant: 150),
			
			viewC.topAnchor.constraint(equalTo: viewA.topAnchor, constant: 20),
			viewC.trailingAnchor.constraint(equalTo: viewA.trailingAnchor, constant: -20),
			viewC.widthAnchor.constraint(equalToConstant: 150),
			viewC.heightAnchor.constraint(equalToConstant: 150),
			
			viewD.bottomAnchor.constraint(equalTo: viewB.bottomAnchor, constant: -20),
			viewD.leadingAnchor.constraint(equalTo: viewB.leadingAnchor, constant: 20),
			viewD.widthAnchor.constraint(equalToConstant: 100),
			viewD.heightAnchor.constraint(equalToConstant: 50),
			
			viewE.topAnchor.constraint(equalTo: viewC.topAnchor, constant: 60),
			viewE.centerXAnchor.constraint(equalTo: viewC.centerXAnchor),
			viewE.widthAnchor.constraint(equalToConstant: 80),
			viewE.heightAnchor.constraint(equalToConstant: 120),
            
            lowLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lowLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200)
		])
	}
}

#Preview {
    ViewController()
}


//
//  ViewController.swift
//  StackView
//
//  Created by Yotaro Ito on 2021/01/04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createStackView()
    }
// 1
    func createStackView() {
        
        let imageView = UIImageView()
        imageView.backgroundColor = .systemGreen
        imageView.image = UIImage(systemName: "bell")
        imageView.contentMode = .scaleAspectFit
//        imageView.widthAnchor.constraint(equalToConstant: view.frame.size.width/2).isActive = true
//        imageView.heightAnchor.constraint(equalToConstant: view.frame.size.height/3).isActive = true
        
        let label = UILabel()
        label.text = "Hello World"
        label.backgroundColor = .systemBlue
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 21, weight: .bold)
//        label.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
//        label.heightAnchor.constraint(equalToConstant: 100).isActive = true

        let SecondLabel = UILabel()
        SecondLabel.text = "goodnight World"
        SecondLabel.backgroundColor = .systemOrange
        SecondLabel.textAlignment = .center
        SecondLabel.font = .systemFont(ofSize: 21, weight: .bold)
        
//        arragedSubViewはaddSubViewみたいなやつ
        let stackView = UIStackView(arrangedSubviews: [imageView, label, SecondLabel])
        stackView.backgroundColor = .yellow
        stackView.frame = view.bounds
        
//        stackViewを整える
//        stackView.axisはstackViewが水平か垂直か
        stackView.axis = .vertical
        
//        .fillEquallyを使えば、imageViewやLabelにAutoLayoutを使わなくても自動的にそれなりに良いレイアウトが出来上がる。
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        view.addSubview(stackView)
    }
}


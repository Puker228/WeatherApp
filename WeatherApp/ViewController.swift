//
//  ViewController.swift
//  WeatherApp
//
//  Created by Данил Дьяченко on 05.03.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var weatherLabel: UILabel!
    @IBOutlet var getWeatherButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        getWeatherButton.addTarget(self, action: #selector(getWeather), for: .touchUpInside)
    }

    @objc func getWeather() {
        weatherLabel.text = "Tap"
    }
}


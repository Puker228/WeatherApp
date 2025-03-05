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
        let urlString = "https://api.open-meteo.com/v1/forecast?latitude=45.02&longitude=38.59&current_weather=true"
        let url = URL(string: urlString)!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data, let weather = try? JSONDecoder().decode(WeatherData.self, from: data) {
                DispatchQueue.main.async {
                    self.weatherLabel.text = "\(weather.currentWeather.temperature)º"
                }
            } else {
                print("fail")
            }
        }
        task.resume()
    }
}


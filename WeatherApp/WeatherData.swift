//
//  WeatherData.swift
//  WeatherApp
//
//  Created by Данил Дьяченко on 05.03.2025.
//


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let weatherData = try? JSONDecoder().decode(WeatherData.self, from: jsonData)

import Foundation

// MARK: - WeatherData
struct WeatherData: Codable {
    let latitude, longitude, generationtimeMS: Double
    let utcOffsetSeconds: Int
    let timezone, timezoneAbbreviation: String
    let elevation: Int
    let currentWeatherUnits: CurrentWeatherUnits
    let currentWeather: CurrentWeather

    enum CodingKeys: String, CodingKey {
        case latitude, longitude
        case generationtimeMS = "generationtime_ms"
        case utcOffsetSeconds = "utc_offset_seconds"
        case timezone
        case timezoneAbbreviation = "timezone_abbreviation"
        case elevation
        case currentWeatherUnits = "current_weather_units"
        case currentWeather = "current_weather"
    }
}

// MARK: - CurrentWeather
struct CurrentWeather: Codable {
    let time: String
    let interval: Int
    let temperature, windspeed: Double
    let winddirection, isDay, weathercode: Int

    enum CodingKeys: String, CodingKey {
        case time, interval, temperature, windspeed, winddirection
        case isDay = "is_day"
        case weathercode
    }
}

// MARK: - CurrentWeatherUnits
struct CurrentWeatherUnits: Codable {
    let time, interval, temperature, windspeed: String
    let winddirection, isDay, weathercode: String

    enum CodingKeys: String, CodingKey {
        case time, interval, temperature, windspeed, winddirection
        case isDay = "is_day"
        case weathercode
    }
}

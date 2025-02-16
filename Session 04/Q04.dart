/*
4. Weather Report:
Use Map and List to create a program that stores weather data for different cities (temperature,
humidity, etc.). Write a function that can retrieve and print weather details using a city name.
*/

import 'dart:io';

void main() {
  List<Map<String, dynamic>> weatherData = [
    {
      "city": "Cairo",
      "temperature": 30,
      "humidity": 60,
      "condition": "Sunny",
    },
    {
      "city": "New York",
      "temperature": 22,
      "humidity": 55,
      "condition": "Cloudy",
    },
    {
      "city": "Tokyo",
      "temperature": 18,
      "humidity": 70,
      "condition": "Rainy",
    },
    {
      "city": "London",
      "temperature": 15,
      "humidity": 80,
      "condition": "Foggy",
    }
  ];

  print("Enter a city name: ");
  String city = stdin.readLineSync() ?? "";

  getWeatherData(weatherData: weatherData, city: city);
}

void getWeatherData({
  required List<Map<String, dynamic>> weatherData,
  required String? city,
}) {
  bool isFound = false;
  weatherData.forEach(
    (element) {
      if (element["city"] == city) {
        print("Weather Report for ${element["city"]}:");
        print("Temperature: ${element["temperature"]}°C");
        print("Humidity: ${element["humidity"]}%");
        print("Condition: ${element["condition"]}\n");
        isFound = true;
      }
    },
  );
  if (!isFound) {
    print("City is not found");
  }
}

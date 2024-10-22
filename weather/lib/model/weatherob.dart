
import 'package:flutter/material.dart';

class weathermodel {
  String date;
  double temp;
  double maxtemp;
  double mintemp;
  String weatherstatename;
  weathermodel(
      {required this.date,
      required this.temp,
      required this.maxtemp,
      required this.mintemp,
      required this.weatherstatename});

  factory weathermodel.json(dynamic data) {
    var jsondata = data['forecast']['forecastday'][0]['day'];
    return weathermodel(
        date: data['location']['localtime'],
        temp: jsondata['avgtemp_c'],
        maxtemp: jsondata['maxtemp_c'],
        mintemp: jsondata['mintemp_c'],
        weatherstatename: jsondata['condition']['text']);
  }
  @override
  String toString() {
    return 'temp = $temp , date = $date';
  }

  MaterialColor? getithemecolor() {
    if (weatherstatename == 'Clear' || weatherstatename == 'Light Cloud') {
      return Colors.blue;
    } else if (weatherstatename == 'Sleet' ||
        weatherstatename == 'Snow' ||
        weatherstatename == 'Hail') {
      return Colors.orange;
    } else if (weatherstatename == 'Heavy Cloud') {
      return Colors.blueGrey;
    } else if (weatherstatename == 'Light Rain' ||
        weatherstatename == 'Heavy Rain' ||
        weatherstatename == 'Showers') {
      return Colors.blueGrey;
    } else if (weatherstatename == 'Thunderstorm') {
    } else {
      Colors.white38;
    }
    return Colors.blue;
  }

  String getimage() {
    if (weatherstatename == 'Clear' || weatherstatename == 'Light Cloud') {
      return 'assets/weather/1x (1).jpg';
    } else if (weatherstatename == 'Sleet' ||
        weatherstatename == 'Snow' ||
        weatherstatename == 'Hail') {
      return 'assets/weather/1x (3).jpg';
    } else if (weatherstatename == 'Heavy Cloud') {
      return 'assets/weather/1x (4).jpg';
    } else if (weatherstatename == 'Light Rain' ||
        weatherstatename == 'Heavy Rain' ||
        weatherstatename == 'Showers') {
      return 'assets/weather/1x (5).jpg';
    } else if (weatherstatename == 'Thunderstorm') {
      return 'assets/weather/1x (6).jpg';
    } else {
      return 'assets/weather/download (1).png';
    }
  }
}

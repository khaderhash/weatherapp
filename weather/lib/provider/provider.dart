import 'package:flutter/cupertino.dart';
import 'package:weather/model/weatherob.dart';

class Weatherdata extends ChangeNotifier {
  weathermodel? _weatherdata;
  String? city;
  set weatherdata(weathermodel? weather) {
    _weatherdata = weather;
    notifyListeners();
  }

  weathermodel? get wethhher => _weatherdata;
}

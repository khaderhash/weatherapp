import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather/model/weatherob.dart';

class services {
  String baseurl = 'http://api.weatherapi.com/v1';
  String keyu = 'aa2c09634bbe4121b09121015240910';
  Future<weathermodel?> getweather({required String namecity}) async {
    weathermodel? weather;
    try{

      Uri url = Uri.parse('$baseurl/forecast.json?key=$keyu&q=$namecity&days=5');
      http.Response response = await http.get(url);
      Map<String, dynamic> data = jsonDecode(response.body);

      weather  = weathermodel.json(data);
    }catch(e){
print(e);
    }
    return weather;
  }
}

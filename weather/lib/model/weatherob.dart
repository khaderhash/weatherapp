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
}

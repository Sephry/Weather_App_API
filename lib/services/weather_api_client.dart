import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather_model.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "http://api.openweathermap.org/data/2.5/weather?q=$location&appid=8c3316201319310ae535a96a3602d8db&units=metric");

    var resposne = await http.get(endpoint);
    var body = jsonDecode(resposne.body);

    print(Weather.fromJson(body).cityName);

    return Weather.fromJson(body);
  }
}

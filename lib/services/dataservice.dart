import 'dart:convert';

import 'package:cloudapp/models/daily_poetry.dart';
import 'package:dio/dio.dart';

class DataService {
  static DataService dataService;

  factory DataService() {
    if (dataService != null) {
      return dataService;
    }
    return dataService = DataService();
  }

  Future<DailyPoetry> getDailyPoetry() async {
    const token = "G8DhdV8U8vGFVcJwwTbShyMkL182wLaI";
    const apiUrl = "https://v2.jinrishici.com/sentence";
    var http = Dio();
    var response = await http.get(apiUrl,
        options: Options(headers: {"X-User-Token": token}));
    DailyPoetry dailyPoetry =
        DailyPoetry.fromJson(jsonDecode(response.data.toString()));
    return dailyPoetry;
  }
}

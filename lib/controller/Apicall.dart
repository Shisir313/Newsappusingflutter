import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:seasonsirsmusicapp/core/static.dart';
import 'dart:convert' as convert;
import 'package:seasonsirsmusicapp/model/news.dart';

class Apicall {
  // ?q=apple
  // &sortBy=popularity

  static Future<news?> getnewsdata() async {
    try {
      var url = Uri.https(Staticfile.baseurl, Staticfile.path, {
        "q": "apple",
        "sortBy": "popularity",
        "apiKey": Staticfile.apikey,
      });

      var response = await http.get(url);
      if (response.statusCode.toString().contains("20")) {
        var responsedata = convert.jsonDecode(response.body);
        var data = news.fromJson(responsedata);

        return data;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
  static Future<news?> getnewsdatanew() async {
    try {
      var url = Uri.https(Staticfile.baseurlnewdata, Staticfile.path1, {
        "q": "apple",
        "sortBy": "popularity",
        "apiKey": Staticfile.apikey1,
      });

      var response = await http.get(url);
      if (response.statusCode.toString().contains("20")) {
        var responsedata = convert.jsonDecode(response.body);
        var data = news.fromJson(responsedata);

        return data;
      } else {

        return null;
      }
    } catch (e) {
      return null;
    }
  }
}

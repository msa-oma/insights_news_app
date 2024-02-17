import 'package:dio/dio.dart';
import 'package:insights_news_app/core/services/api_constants.dart';

import '../../featurs/home/data/news_model/news_model.dart';

class ApiServices {
  static Future<NewsModel?> getNewsByCategory(String category) async {
    try {
      var response = await Dio().get(
          '${ApiConstants.apiBaseUrl}country=us&category=$category&apiKey=${ApiConstants.apiKey}');

      if (response.statusCode == 200) {
        NewsModel news = NewsModel.fromJson(response.data);
        return news;
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  // getBySearch
  static Future<NewsModel?> getNewsBySearch(String searchkey) async {
    try {
      var response = await Dio().get(
          '${ApiConstants.apiBaseUrl}country=us&q=$searchkey&apiKey=${ApiConstants.apiKey}');
      if (response.statusCode == 200) {
        NewsModel news = NewsModel.fromJson(response.data);
        return news;
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  // getBySource
  static Future<NewsModel?> getNewsBySource(String source) async {
    try {
      var response = await Dio().get(
          '${ApiConstants.apiBaseUrl}country=us&source=$source&apiKey=${ApiConstants.apiKey}');
      if (response.statusCode == 200) {
        NewsModel news = NewsModel.fromJson(response.data);
        return news;
      }
    } catch (e) {
      print(e.toString());
    }

    return null;
  }

  // static Future<SourceModel?> getSources(String source) async {
  //   try {
  //     var response = await Dio().get(
  //         'https://newsapi.org/v2/top-headlines/sources?apiKey=48b16be6252e45a1a3a491c5c6496d72');
  //     if (response.statusCode == 200) {
  //       SourceModel news = SourceModel.fromJson(response.data);
  //       return news;
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }

  //   return null;
  // }
}

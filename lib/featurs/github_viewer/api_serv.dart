import 'dart:convert';

import 'package:dio/dio.dart';

import 'githubmodel/githubmodel.dart';

class ApiService {
  static Future<List<Githubmodel>?> getGitHubRepos() async {
    try {
      var response = await Dio().get('https://api.github.com/repositories');
      if (response.statusCode == 200) {
        List repos = response.data;
        List<Githubmodel> reposX =
            repos.map((e) => Githubmodel.fromJson(e)).toList();
        return reposX;
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}

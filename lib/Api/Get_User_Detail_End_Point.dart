import 'dart:async';
import 'dart:convert';
import 'package:familydriver/constant/App_color.dart';
import 'package:familydriver/screens/HomePage.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class LoginApi {
  static FutureOr<void> getUserDetails(String token) async {
    var url = Uri.parse(AppColors.BaseUrl + "api/logged_user");

    try {
      var response = await http.get(url, headers: {
        "accept": "application/json",
        'Authorization': 'Bearer $token',
      });

      print(response.body);
      print(response.statusCode);

      if (response.statusCode == 200) {
        print(response.body);
        print(response.statusCode);
      } else if (response.statusCode == 422) {
      } else if (response.statusCode == 400) {
      } else if (response.statusCode == 403) {
      } else if (response.statusCode == 401) {
      } else {}
    } catch (e) {}
  }
}

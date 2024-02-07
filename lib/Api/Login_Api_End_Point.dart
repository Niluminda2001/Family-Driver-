import 'dart:async';
import 'dart:convert';
import 'package:familydriver/constant/App_color.dart';
import 'package:familydriver/screens/HomePage.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class LoginApi {
  static FutureOr<void> login(
      String email, String password, BuildContext context) async {
    var url = Uri.parse(AppColors.BaseUrl + "api/customer/login");

    try {
      var response = await http.post(url, headers: {
        "accept": "application/json",
      }, body: {
        "email": email,
        "password": password
      });

      print(response.body);
      print(response.statusCode);

      if (response.statusCode == 200) {
        // ignore: use_build_context_synchronously
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LandingPage(),
            ));
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: AppColors.primaryColor,
            content: Center(child: Text('Wellcome To Family Driver')),
          ),
        );
      } else if (response.statusCode == 422) {
      } else if (response.statusCode == 400) {
      } else if (response.statusCode == 403) {
      } else if (response.statusCode == 401) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Check Your Credintial Again'),
          ),
        );
      } else {}
    } catch (e) {}
  }
}

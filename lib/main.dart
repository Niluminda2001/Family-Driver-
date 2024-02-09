import 'package:familydriver/screens/Driver/Driver_Home_page.dart';
import 'package:familydriver/screens/Login.dart';
import 'package:familydriver/screens/Register_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
      MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: DriverHomePage(),
      ),
    );

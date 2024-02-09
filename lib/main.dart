import 'package:familydriver/screens/Customer/Customer_Home_page.dart';
import 'package:familydriver/screens/Driver/Driver_Home_page.dart';
import 'package:familydriver/screens/Login.dart';
import 'package:familydriver/screens/Register_page.dart';
import 'package:familydriver/screens/Tab_bar.dart';
import 'package:familydriver/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
      MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: TripDetails(),
      ),
    );

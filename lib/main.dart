import 'package:familydriver/screens/Login.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
      MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: Loginpage(),
      ),
    );

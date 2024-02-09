import 'dart:async';
import 'package:familydriver/screens/Login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () async {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Loginpage(),
          ));
    });

    super.initState();
  }

  int numberOfMessages = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(), // Empty container to push the content upwards
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage('assets/logo.png'),
                      height: 200,
                      width: 200,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child:
                  Container(), // Empty container to push the content downwards
            ),
          ],
        ),
      ),
    );
  }

//get chat data
}

import 'dart:async';
import 'package:familydriver/constant/App_color.dart';
import 'package:familydriver/screens/Customer/Customer_Home_page.dart';
import 'package:familydriver/screens/Driver/Driver_Home_page.dart';
import 'package:familydriver/screens/Login.dart';
import 'package:familydriver/screens/widgets/TextComponent.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:geolocator/geolocator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int num = 0;
  String token = "";
  @override
  void initState() {
    _determinePosition();
    getnumber();
    Timer(const Duration(seconds: 2), () async {
      //Adding New Method
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => num == 1
                ? CustomerHomepage(mytoken: token)
                : num == 2
                    ? DriverHomePage()
                    : Loginpage(),
          ));
    });

    super.initState();
  }

//Adding New MEthod
  Future<void> getnumber() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      num = int.parse(prefs.getInt('num').toString());
      token = prefs.getString('token').toString();
    });
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  int numberOfMessages = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
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

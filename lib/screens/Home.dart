import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color(0xff22262A),
        child: Column(
          children: [
            Image(
                image: AssetImage(
              'assets/logo.png',
            )),
            SizedBox(
              width: 30,
              height: 20,
            ),
            Text('Welcome to FamilyDriver',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ))
          ],
        ),
      ),
    );
  }
}

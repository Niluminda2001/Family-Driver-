import 'package:familydriver/constant/App_color.dart';
import 'package:familydriver/screens/NavSidebar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
      ),
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // Hi notofication
                children: [
                  Text(
                    "Hi Chathuranga !",
                    style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],

                // Notification
              ),
            ],
          ),
        ),
      ),
    );
  }
}

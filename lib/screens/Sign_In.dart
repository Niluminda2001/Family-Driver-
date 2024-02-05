import 'package:familydriver/constant/App_color.dart';
import 'package:flutter/material.dart';
import 'NavSidebar.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();

  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();

  final GlobalKey<FormState> _formKey3 = GlobalKey<FormState>();

  final GlobalKey<FormState> _formKey4 = GlobalKey<FormState>();

  final GlobalKey<FormState> _formKey5 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              AppColors.primaryColor,
              AppColors.primaryColor,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Padding(padding: EdgeInsets.all(20)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(height: 7),
                  Text(
                    'Your journey begins with a simple sign-in',
                    style: TextStyle(
                      color: AppColors.drivercardnotactive,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.logingbox,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(height: 60),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Form(
                                key: _formKey1,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    style: const TextStyle(
                                      fontFamily: 'inter',
                                      fontSize: 14,
                                      color: AppColors.primaryColor,
                                    ),
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontFamily: 'inter',
                                        fontSize: 14,
                                        color: AppColors.primaryColor,
                                      ),
                                      hintText: "First name",
                                      filled: true,
                                      fillColor: AppColors.secondaryColor,
                                      contentPadding: EdgeInsets.all(11.0),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                        borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 248, 249, 249),
                                          width: 2.0,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                        borderSide: BorderSide(
                                          color: AppColors.drivercardnotactive,
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'First name is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              Form(
                                key: _formKey2,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    style: const TextStyle(
                                      fontFamily: 'inter',
                                      fontSize: 14,
                                      color: AppColors.primaryColor,
                                    ),
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontFamily: 'inter',
                                        fontSize: 14,
                                        color: AppColors.primaryColor,
                                      ),
                                      hintText: "Last name ",
                                      filled: true,
                                      fillColor: AppColors.secondaryColor,
                                      contentPadding: EdgeInsets.all(11.0),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                        borderSide: BorderSide(
                                          color: AppColors.drivercardnotactive,
                                          width: 2.0,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                        borderSide: BorderSide(
                                          color: AppColors.drivercardnotactive,
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'First name is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              Form(
                                key: _formKey3,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    style: const TextStyle(
                                      fontFamily: 'inter',
                                      fontSize: 14,
                                      color: AppColors.primaryColor,
                                    ),
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontFamily: 'inter',
                                        fontSize: 14,
                                        color: AppColors.primaryColor,
                                      ),
                                      hintText: "NIC number",
                                      filled: true,
                                      fillColor: AppColors.secondaryColor,
                                      contentPadding: EdgeInsets.all(11.0),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                        borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 248, 249, 249),
                                          width: 2.0,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                        borderSide: BorderSide(
                                          color: AppColors.drivercardnotactive,
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'First name is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              Form(
                                key: _formKey4,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: TextFormField(
                                    keyboardType: TextInputType.phone,
                                    style: const TextStyle(
                                      fontFamily: 'inter',
                                      fontSize: 14,
                                      color: AppColors.secondaryColor,
                                    ),
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontFamily: 'inter',
                                        fontSize: 14,
                                        color: AppColors.primaryColor,
                                      ),
                                      hintText: "Phone Number",
                                      filled: true,
                                      fillColor: AppColors.secondaryColor,
                                      contentPadding: EdgeInsets.all(11.0),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                        borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 248, 249, 249),
                                          width: 2.0,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                        borderSide: BorderSide(
                                          color: AppColors.drivercardnotactive,
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'First name is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              Form(
                                key: _formKey5,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    style: const TextStyle(
                                      fontFamily: 'inter',
                                      fontSize: 14,
                                      color: AppColors.secondaryColor,
                                    ),
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontFamily: 'inter',
                                        fontSize: 14,
                                        color: AppColors.primaryColor,
                                      ),
                                      hintText: "Physicale Address",
                                      filled: true,
                                      fillColor: AppColors.secondaryColor,
                                      contentPadding: EdgeInsets.all(11.0),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                        borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 248, 249, 249),
                                          width: 2.0,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                        borderSide: BorderSide(
                                          color: AppColors.drivercardnotactive,
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'First name is required';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              // Add other Form widgets similarly
                            ],
                          ),
                        ),
                        SizedBox(height: 50),
                        InkWell(
                          onTap: () {
                            print('Click Login');
                          },
                          child: Container(
                            height: 40,
                            width: 160,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: AppColors.logingstatemant,
                            ),
                            child: TextButton(
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 255, 254, 254),
                                ),
                              ),
                              onPressed: () {
                                _formKey1.currentState?.validate();
                                _formKey2.currentState?.validate();
                                _formKey3.currentState?.validate();
                                _formKey4.currentState?.validate();
                                _formKey5.currentState?.validate();
                              },
                              child: Text('Create Account'),
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

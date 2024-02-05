import 'package:flutter/material.dart';
import '../constant/App_color.dart';
import 'Sign_In.dart';
import 'NavSidebar.dart';

class Loging extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
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
          gradient: LinearGradient(begin: Alignment.center, colors: [
            AppColors.primaryColor,
            AppColors.primaryColor,
          ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
            ),
            Padding(padding: EdgeInsets.all(20)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(height: 7),
                  Text(
                    'Welcome Back',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                          topRight: Radius.circular(60))),
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
                                key: _formKey,
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
                                      hintText: "Your User Name",
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
                                          color: Colors
                                              .grey, // Add your desired border color here
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'UserName is required';
                                      }

                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              Form(
                                key: _formKey1,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: TextFormField(
                                    obscureText: true,
                                    keyboardType: TextInputType.visiblePassword,
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
                                      hintText: "Your Password",
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
                                          color: Colors
                                              .grey, // Add your desired border color here
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Password is required';
                                      }

                                      return null;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 05),
                        Text(
                          'forgot Password ?',
                          style: TextStyle(color: AppColors.primaryColor),
                        ),
                        SizedBox(
                          height: 55,
                        ),
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
                                        Color.fromARGB(255, 255, 254, 254)),
                              ),
                              onPressed: () {
                                _formKey.currentState?.validate();
                                _formKey1.currentState?.validate();
                              },
                              child: Text('Login'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          child: Text(
                            "You don't have an account ",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return SignIn();
                                }));
                              },
                              child: Text(
                                'Create Account',
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

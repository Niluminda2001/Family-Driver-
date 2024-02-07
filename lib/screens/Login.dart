import 'package:familydriver/Api/Login_Api_End_Point.dart';
import 'package:familydriver/screens/widgets/Lable_Text.dart';
import 'package:familydriver/screens/widgets/Rouned_boutton.dart';
import 'package:familydriver/screens/widgets/TextComponent.dart';
import 'package:flutter/material.dart';

import '../constant/App_color.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String token = "";
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordContrller = TextEditingController();
  AutovalidateMode switched = AutovalidateMode.disabled;
  final _EmailformKey = GlobalKey<FormState>();
  final _UserNAMEformKey = GlobalKey<FormState>();

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.logingbox,
      child: SafeArea(
        child: Scaffold(
          // backgroundColor: AppColors.primaryColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UpperSection(),
              Expanded(
                flex: 2,
                child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            TextComponent(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w700,
                              fontsize: 24,
                              text: 'Let’s get started',
                            ),

                            const SizedBox(
                              height: 10,
                            ),
                            lableField(
                              "User Name",
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Form(
                              key: _EmailformKey,
                              autovalidateMode: switched,
                              child: TextFormField(
                                controller: emailController,
                                keyboardType: TextInputType.name,
                                focusNode: emailFocusNode,
                                style: const TextStyle(
                                  fontFamily: 'inter',
                                  fontSize: 14,
                                  color: AppColors.primaryColor,
                                ),
                                decoration: const InputDecoration(
                                  hintStyle: TextStyle(
                                    fontFamily: 'inter',
                                    fontSize: 14,
                                    color: Color(0xFFBCBCBC),
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
                                      color: Colors.blue,
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
                            const SizedBox(
                              height: 10,
                            ),
                            lableField(
                              "Password",
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Form(
                              key: _UserNAMEformKey,
                              autovalidateMode: switched,
                              child: TextFormField(
                                controller: passwordContrller,
                                keyboardType: TextInputType.number,
                                focusNode: passwordFocusNode,
                                style: const TextStyle(
                                  fontFamily: 'inter',
                                  fontSize: 14,
                                  color: AppColors.primaryColor,
                                ),
                                decoration: const InputDecoration(
                                  hintStyle: TextStyle(
                                    fontFamily: 'inter',
                                    fontSize: 14,
                                    color: Color(0xFFBCBCBC),
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
                                      color: Colors.blue,
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

                                  // Remove any non-digit characters from the phone number

                                  return null; // Return null if the phone number is valid
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            isLoading
                                ? Center(child: CircularProgressIndicator())
                                : RoundedButton(
                                    color: Colors.red,
                                    buttonText: "Sign in",
                                    onPress: () async {
                                      setState(() {
                                        switched = AutovalidateMode.always;
                                        isLoading = true;
                                      });
                                      try {
                                        if (emailController.text != "" &&
                                            passwordContrller.text == "")
                                          LoginApi.login(emailController.text,
                                              passwordContrller.text, context);
                                        // If login is successful, you can navigate to the next screen or perform other actions
                                      } catch (e) {
                                        // Handle any errors during the login process
                                      } finally {
                                        setState(() {
                                          isLoading =
                                              false; // Set isLoading to false when the login process is complete
                                        });
                                      }
                                    }),
                            const SizedBox(
                              height: 15,
                            ),
                            // const Center(
                            //   child: Text(
                            //     "Or you can",
                            //     style: TextStyle(
                            //       color: Color(0xFF8F8F8F),
                            //       fontWeight: FontWeight.w400,
                            //       fontSize: 12,
                            //       fontFamily: 'inter',
                            //     ),
                            //   ),
                            // ),
                            // const SizedBox(
                            //   height: 12,
                            // ),
                            // InkWell(
                            //   onTap: () {
                            //     Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //           builder: (context) => CreateProfile(),
                            //         ));
                            //   },
                            //   child: const Center(
                            //     child: Text(
                            //       "Create Account",
                            //       style: TextStyle(
                            //         color: Color(0xFF717171),
                            //         fontWeight: FontWeight.w800,
                            //         fontSize: 14,
                            //         fontFamily: 'inter',
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UpperSection extends StatelessWidget {
  const UpperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            Center(
              child: TextComponent(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w700,
                fontsize: 18,
                text: '™',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: TextComponent(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w600,
                fontsize: 24,
                text: 'Convert MaxTach™\n Connections To Cients',
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: TextComponent(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w500,
                fontsize: 14,
                text:
                    'Master the art of MaxTach™ outreach and\n messaging to grow your business with\n expert guidance',
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

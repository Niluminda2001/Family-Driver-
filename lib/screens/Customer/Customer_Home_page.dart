import 'package:familydriver/Api/Get_User_Detail_End_Point.dart';
import 'package:familydriver/constant/App_color.dart';
import 'package:familydriver/model/UserModel.dart';
import 'package:familydriver/screens/NavSidebar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomerHomepage extends StatefulWidget {
  String mytoken;
  CustomerHomepage({super.key, required this.mytoken});

  @override
  State<CustomerHomepage> createState() => _CustomerHomepageState();
}

class _CustomerHomepageState extends State<CustomerHomepage> {
  String name = "", email = "", profileimage = "";
  late Future<List<User>> _userDetails;
  @override
  void initState() {
    _userDetails = GetUserDetail.getUserDetails(widget.mytoken);

    fetchData();
    // TODO: implement initState
    super.initState();

    // TODO: implement initState
    super.initState();
  }

  Future<void> fetchData() async {
    _userDetails =
        GetUserDetail.getUserDetails(widget.mytoken).then((List<User> data) {
      for (User user in data) {
        print('Name: ${user.name}, Email: ${user.email}');
        setState(() {
          name = user.name;
          email = user.email;
          profileimage = user.profile_image_url;
        });
      }

      return data;
    }).catchError((error) {
      print('Error fetching user details: $error');

      return <User>[];
    });
  }

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    String formattedDate = DateFormat('dd MMM yyyy').format(currentDate);
    return Scaffold(
      drawer: NavBar(email: email, name: name, profileimage: profileimage),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
      ),
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: FutureBuilder<List<User>>(
                  future: _userDetails,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text('Error: ${snapshot.error}'),
                      );
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Center(
                        child: Text('No data available'),
                      );
                    } else {
                      List<User> userDetails = snapshot.data!;

                      return ListView.builder(
                        itemCount: userDetails.length,
                        itemBuilder: (context, index) {
                          User user = userDetails[index];

                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Hi " + user.name + " !",
                                    style: TextStyle(
                                        color: AppColors.secondaryColor,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    '$formattedDate',
                                    style: TextStyle(
                                        color: AppColors.secondaryColor),
                                  )
                                ],
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
                          );
                        },
                      );
                    }
                  },
                ),
              ),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Where do you want to go now ?',
                        style: TextStyle(
                            color: Colors.yellow[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),

              // Search (only saved areas)
              Container(
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                    Text('Search your saved locations',
                        style: TextStyle(color: Colors.blueGrey[500]))
                  ],
                ),
              ),
              // Saved locations
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Home',
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.business,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Office',
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.restaurant,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Restaurant',
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),

              // Trip and Scheduling area
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 350,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

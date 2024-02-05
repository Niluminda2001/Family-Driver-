// import 'package:familydriver/screens/NavSidebar.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class LandingPage extends StatefulWidget {
//   const LandingPage({Key? key}) : super(key: key);

//   @override
//   State<LandingPage> createState() => _LandingPageState();
// }

// class _LandingPageState extends State<LandingPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: NavBar(),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 200,
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius:
//                     const BorderRadius.only(bottomRight: Radius.circular(100)),
//               ),
//               child: Column(
//                 children: [
//                   const SizedBox(
//                     height: 50,
//                   ),
//                   ListTile(
//                     title: Text(
//                       'Hi Chathuranga',
//                       style: Theme.of(context)
//                           .textTheme
//                           .headline6
//                           ?.copyWith(color: Colors.white),
//                     ),
//                     subtitle: Text(
//                       'Good Morning ',
//                       style: Theme.of(context)
//                           .textTheme
//                           .subtitle1
//                           ?.copyWith(color: Colors.white),
//                     ),
//                     trailing: const CircleAvatar(
//                       radius: 30,
//                       backgroundImage: AssetImage('assets/propic2.jpg'),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 200,
//                   ),
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 36),
//                     color: Theme.of(context).primaryColor,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(100),
//                         ),
//                       ),
//                       child: GridView.count(
//                         shrinkWrap: true,
//                         crossAxisCount: 2,
//                         children: [
//                           itemDashboard('videos', CupertinoIcons.play_rectangle,
//                               Colors.deepOrange),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget itemDashboard(String title, IconData iconData, Color background) =>
//       Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               offset: Offset(0, 5),
//               color: Theme.of(context).primaryColor.withOpacity(.2),
//               spreadRadius: 2,
//               blurRadius: 5,
//             ),
//           ],
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               padding: EdgeInsets.all(10),
//               decoration:
//                   BoxDecoration(color: background, shape: BoxShape.circle),
//               child: Icon(
//                 iconData,
//                 color: Colors.white,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               title,
//               style: Theme.of(context).textTheme.subtitle1,
//             )
//           ],
//         ),
//       );
// }
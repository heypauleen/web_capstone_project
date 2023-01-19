import 'package:flutter/material.dart';
import 'package:web_capstone_project/constants/style.dart';
import 'package:web_capstone_project/screens/widgets/menu_item.dart';

class MySideNav extends StatelessWidget {
  const MySideNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: lightYellow,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/images/doh_logo.png'),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: Text(
                      'Juan Dela Cruz',
                      style: TextStyle(
                        color: grayAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(),
                  MyMenuItem(
                    icon: Icons.dashboard,
                    text: 'Dashboard',
                  ),
                  MyMenuItem(icon: Icons.group, text: 'User Accounts'),
                  MyMenuItem(
                      icon: Icons.description,
                      text: 'Health Information Reports'),
                  MyMenuItem(icon: Icons.calendar_month, text: 'PDOHO Updates'),
                  MyMenuItem(icon: Icons.analytics, text: 'Data Analytics'),
                  MyMenuItem(icon: Icons.more_horiz, text: 'Others'),
                  SizedBox(
                    height: 40,
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                    child: Text(
                      "Settings",
                      style: TextStyle(color: lightGrayAccent),
                    ),
                  ),
                  MyMenuItem(icon: Icons.settings, text: 'Main Settings'),
                  MyMenuItem(icon: Icons.notifications, text: 'Notifications'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// Column(children: [
//       Expanded(
//         flex: 2,
//         child: Container(
//           decoration: BoxDecoration(
//             color: lightYellow,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     width: 100,
//                     height: 100,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                       image: AssetImage('assets/images/doh_logo.png'),
//                     )),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 8,
//               ),
//               Center(
//                 child: Text(
//                   'Juan Dela Cruz',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               Divider(),
//               MyMenuItem(icon: Icons.dashboard, text: 'Dashboard'),
//               MyMenuItem(icon: Icons.group, text: 'User Accounts'),
//               MyMenuItem(
//                   icon: Icons.description, text: 'Health Information Reports'),
//               MyMenuItem(icon: Icons.calendar_month, text: 'PDOHO Updates'),
//               MyMenuItem(icon: Icons.analytics, text: 'Data Analytics'),
//               MyMenuItem(icon: Icons.more_horiz, text: 'Others'),
//               SizedBox(
//                 height: 40,
//               ),
//               Divider(),
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
//                 child: Text(
//                   "Settings",
//                   style: TextStyle(color: lightGrayAccent),
//                 ),
//               ),
//               MyMenuItem(icon: Icons.settings, text: 'Main Settings'),
//               MyMenuItem(icon: Icons.notifications, text: 'Notifications'),
//             ],
//           ),
//         ),
//       ),
//     ]);
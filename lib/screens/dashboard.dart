import 'package:flutter/material.dart';
import 'package:web_capstone_project/constants/style.dart';
import 'package:web_capstone_project/screens/widgets/side_nav.dart';
import 'package:web_capstone_project/screens/widgets/top_nav.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MySideNav(),
        Expanded(
          flex: 9,
          child: Scaffold(
            appBar: topNavigationBar(context),
          ),
        ),
      ],
    );
  }
}

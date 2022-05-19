import 'package:flutter/material.dart';
import 'package:web_capstone_project/screens/top_nav.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      appBar: topNavigationBar(context),
      sideBar: SideBar(
        backgroundColor: Color(0xfffffbed),
        activeBackgroundColor: Color(0xFFCCE2D7),
        //borderColor: Color(0xFFE7E7E7),
        iconColor: Color(0xFF66645F),
        activeIconColor: Color(0xff4BBE83),
        textStyle: TextStyle(
          color: Color(0xFF66645F),
          fontSize: 12,
          fontFamily: 'Product Sans'
        ),
        activeTextStyle: TextStyle(
          color: Color(0xff4BBE83),
          fontSize: 13,
            fontFamily: 'Product Sans'
        ),
        items: const [
          MenuItem(
            title: 'Dashboard',
            route: '/Dashboard',
            icon: Icons.dashboard,
          ),
          MenuItem(
            title: 'User Accounts',
            route: '/UserAccounts',
            icon: Icons.people,
          ),
          MenuItem(
            title: 'Health Information Reports',
            route: '/HealthInformationReports',
            icon: Icons.summarize,
          ),
          MenuItem(
            title: 'PDOHO Updates',
            route: '/PDOHOUpdates',
            icon: Icons.event_note,
          ),
          MenuItem(
            title: 'Data Analytics',
            route: '/DataAnalytics',
            icon: Icons.insights,
          ),
          MenuItem(
            title: 'Others',
            icon: Icons.more_horiz,
            children: [
              MenuItem(
                title: 'Survey',
                route: '/secondLevelItem1',
              ),
              MenuItem(
                title: 'Resources',
                route: '/secondLevelItem2',
              ),
              MenuItem(
                title: 'Send Notifications',

              ),
            ],
          ),
        ],
        selectedRoute: '/',
        onSelected: (item) {
          if (item.route != null) {
            Navigator.of(context).pushNamed(item.route!);
          }

        },

        header: Container(
          height: 100,
          width: double.infinity,
          color: Color(0xfffffbed),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/doh_logo.png'),
                    )
                ),
              ),
            ),
          ),
        ),
        
      ),
      body: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: Color(0xffdb3b3b),
              //PUT HERE THE CONTENTS
            ),

          )
        ],
      ),
    );
  }
}

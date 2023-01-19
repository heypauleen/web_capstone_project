import 'package:flutter/material.dart';
import 'package:web_capstone_project/constants/style.dart';

AppBar topNavigationBar(BuildContext context) => AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24),
              child: Container(
                height: 36,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Search",
                    labelStyle: TextStyle(fontSize: 12),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: lightGrayAccent,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Column(
            children: [
              Text(
                'Juan Dela Cruz',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: grayAccent,
                    fontSize: 14),
              ),
              Text(
                'DMO IV',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: grayAccent,
                    fontSize: 12),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/images/avatar_placeholder.png',
                ),
              )),
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: lightGrayAccent,
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(
              Icons.notifications_none,
              color: lightGrayAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(
              Icons.logout,
              color: lightGrayAccent,
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(color: greenAccent),
      foregroundColor: Colors.transparent,
    );

import 'package:flutter/material.dart';
import 'package:web_capstone_project/constants/style.dart';


AppBar topNavigationBar(BuildContext context) =>
    AppBar(
      elevation: 0,
      backgroundColor: Color(0xfffffbed),
      leading: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left:14),
            child: Image.asset("assets/images/doh_logo.png", width:40, height: 40,),
          ),
        ],
      ),
      title: Row(
        children: <Widget>[
          Expanded(
            child: Container()),
          Visibility(child: Text("Juan Dela Cruz",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black38,
            ),),
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/avatar_placeholder.png"),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 1,
            height: 22,
            color: greenAccent,
          ),
          Stack(
            children: <Widget> [
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.notifications, color: Colors.black38)
              ),
              Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: greenAccent,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: lightGreenAccent, width: 2)
                    ),
                  ))
            ],
          ),

          IconButton(
            icon: Icon(Icons.logout, color: Colors.black38),
            onPressed: (){},
          ),

          SizedBox(
            width: 24,
          ),



    ],
    ),
      iconTheme: IconThemeData(color:greenAccent),
      foregroundColor: Colors.transparent,
);

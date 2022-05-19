import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:web_capstone_project/models/useraccount.dart';
import 'package:web_capstone_project/screens/layout.dart';
import 'package:web_capstone_project/screens/sign_in.dart';


class Wrapper extends StatelessWidget {
      const Wrapper({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {

        final user = Provider.of<UserAccount?>(context);

        //return either Home or Authenticate widget
        if(user==null){
          print(user);
          return SignIn();
        }else {
          print(user);
          return Dashboard();
        }
      }
    }

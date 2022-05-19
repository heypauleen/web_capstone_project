import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:web_capstone_project/models/useraccount.dart';
import 'package:web_capstone_project/screens/sign_in.dart';
import 'package:web_capstone_project/screens/wrapper.dart';
import 'package:web_capstone_project/services/auth.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserAccount?>.value(
      value: AuthService().signedinuser,
      initialData: null,
      child: MaterialApp(
        theme: ThemeData(
            fontFamily: 'Product Sans',
            primaryColor: Color(0xff4BBE83)
        ),
        home: Wrapper(),
      ),
    );
  }

}

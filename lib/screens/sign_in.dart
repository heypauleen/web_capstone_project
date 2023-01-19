import 'package:flutter/material.dart';
import 'package:web_capstone_project/screens/dashboard.dart';
import 'package:web_capstone_project/services/auth.dart';
//import 'package:my_capstone_project_web/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  String email = '';
  String password = '';
  String error = '';
  bool password_visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg_pdoho.png'),
                  fit: BoxFit.cover)),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/doh_logo.png'),
                  )),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 40,
                  width: 280,
                  child: TextFormField(
                    validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                    onChanged: (val) {
                      setState(() => email = val);
                    },
                    style: TextStyle(color: Color(0xF5555353), fontSize: 12),
                    decoration: InputDecoration(
                        focusColor: Colors.green,
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff4BBE83), width: 2.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff4BBE83), width: 2.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        labelText: "Email",
                        labelStyle:
                            TextStyle(color: Color(0xff4BBE83), fontSize: 10)),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  width: 280,
                  child: TextFormField(
                    validator: (val) => val!.length < 6
                        ? 'Your password must be more than 6 characters'
                        : null,
                    onChanged: (val) {
                      setState(() => password = val);
                    },
                    style: TextStyle(color: Color(0xF5555353), fontSize: 12),
                    obscureText: !password_visible,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            password_visible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Color(0xffacadad),
                            size: 13,
                          ),
                          onPressed: () {
                            setState(() {
                              password_visible = !password_visible;
                            });
                          },
                        ),
                        focusColor: Color(0xff4BBE83),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff4BBE83), width: 2.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              BorderSide(color: Color(0xff4BBE83), width: 2.0),
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Color(0xff4BBE83))),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  height: 40,
                  width: 280,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 14),
                        primary: Color(0xff4BBE83),
                        fixedSize: Size(0, 55)),
                    onPressed: () async {
                      dynamic result = await _auth.signInWithEmailAndPassword(
                          email, password);
                      print(result);
                      if (_formKey.currentState!.validate()) {
                        if (result == null) {
                          setState(() {
                            error = "Could not sign in with those credentials.";
                          });
                        }
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dashboard()),
                      );
                    },
                    child: const Text('Login'),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                    child: Text("Forgot Password? Click here.",
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey)))
              ],
            ),
          )),
    );
  }
}

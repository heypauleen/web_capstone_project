import 'package:web_capstone_project/models/useraccount.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj based on firebase user
  UserAccount _userFromFirebaseUser(User? users) {
    //return users != null ? Users(userid: user.userid) : null;
    return UserAccount(userid: users!.uid);
  }

  //auth change user stream
  Stream<UserAccount>? get signedinuser {
    try {
      return _auth.authStateChanges()
          .map(_userFromFirebaseUser);
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign in anonymously
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async{
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return user;
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  //register with email and password

  //signout

}
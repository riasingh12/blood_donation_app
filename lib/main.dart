// import 'package:firebase_auth/firebase_auth.dart';
import 'package:blood_donation/Login.dart';
import 'package:blood_donation/SignUp.dart';
import 'package:blood_donation/Start.dart';
import 'package:blood_donation/load.dart';
import 'package:blood_donation/screens/add_new_medicine/add_new_medicine.dart';
import 'package:blood_donation/screens/home/home.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: <String, WidgetBuilder>{
          "Login": (BuildContext context) => Login(),
          "SignUp": (BuildContext context) => SignUp(),
          "start": (BuildContext context) => Start(),
          "/home": (BuildContext context) => Home(),
          "add_new_medicine": (BuildContext context) => AddNewMedicine(),
        }

    );
  }
}

// _signInWithGoogle() {
// Future login() async {
//    final GoogleSignInAccount googleUser = await googleSignIn.signIn();
//    final GoogleSignInAuthentication googleAuth =
//        await googleUser.authentication;
//     final AuthCredential credential = GoogleAuthProvider.credential(
//        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
//     await firebaseAuth.signInWithCredential(credential);
//     // onPressed: () async{ how to call
//     //           login();
//     //         },
//  }
// // }

/*
import 'package:flutter/material.dart';
void main() => runApp(MyApp());
/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
*/
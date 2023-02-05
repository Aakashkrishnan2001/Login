import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/homefruitlist.dart';
import 'package:flutter1/login.dart';
import 'package:flutter1/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sp;
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  sp = await SharedPreferences.getInstance();
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  static const String _title="App";

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    bool checkValue = sp?.getBool("checkValue") ??false;
    if (kDebugMode) {
      print("++++++++++++++++++++");
      print(checkValue);
    }
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title:Myapp._title,
      initialRoute: 'login',
      routes: {
        'login':(context) =>Login(
        ),
        'signin':(context) =>SignIn(),
        'home':(context) =>Homefruitlist(),
      },
      home: Scaffold(
        appBar: AppBar(title: Text(Myapp._title),),

      ),
      );
  }
}


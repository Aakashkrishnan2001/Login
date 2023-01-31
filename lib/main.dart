import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/home.dart';
import 'package:flutter1/login.dart';
import 'package:flutter1/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sp;
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  sp = await SharedPreferences.getInstance();
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  static const String _title="App";
  bool checkValue = sp?.getBool("checkvalue") ?? false;
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("++++++++++++++++++++");
      print("${sp?.getBool("checkvalue") ?? false}");
    }
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title:_title,
      initialRoute: checkValue ? 'home':'login',
      routes: {
        'login':(context) =>Login(
        ),
        'signin':(context) =>SignIn(),
        'home':(context) =>HomePage()
      },
      home: Scaffold(
        appBar: AppBar(title: Text(_title),),

      ),
      );
  }
}


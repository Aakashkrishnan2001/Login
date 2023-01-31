import 'package:flutter1/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  Widget build(BuildContext context) {


     return Scaffold(

         appBar: AppBar(title: Text('Home Page'),),
        body:Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                Container(
                padding:const EdgeInsets.all(100),


              ),

                Container(padding: EdgeInsets.all(150),
                  child: ElevatedButton(
                      child: const Text("Logut"),
                   onPressed: () async {
                        final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                        sharedPreferences.remove('Email');
                        sharedPreferences.remove('password');
                        sharedPreferences.remove('checkvalue');
                        bool CheckValue = sharedPreferences.containsKey('checkvalue');
                        print(CheckValue);

                        Navigator.pushNamed(context, 'login');

                   }
                    )



                )],
            )
        ));
  }
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter1/homefruitlist.dart';
import 'package:flutter1/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  String Email = '';

  String Password = '';

  TextEditingController CheckEmailController = TextEditingController();

  TextEditingController CheckpasswordController = TextEditingController();

  Future getValidationData() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    Email = sharedPreferences.getString('Email');
    Password = sharedPreferences.getString('password');
  }

  @override
  Widget build(BuildContext context) {
    getValidationData();
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: const Text(
                    "Flutter Screen",
                    style: TextStyle(
                        color: Colors.cyan,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: const Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: CheckEmailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: CheckpasswordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                    ),
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset('assets/images/Strawberry.jpeg')),
                SizedBox(
                  height: 100,
                ),

              TextButton(onPressed: () {}, child: Text("Forget Password")),
              Container(
                  child: ElevatedButton(
                child: Text("Login"),
                onPressed: () async {
                  if (CheckEmailController.text == Email &&
                      CheckpasswordController.text == Password) {
                    final SharedPreferences sharedPreferences =
                        await SharedPreferences.getInstance();
                    sharedPreferences.setBool('CheckValue', true);
                    bool CheckValue =
                        sharedPreferences.containsKey('CheckValue');
                    print(CheckValue);

                    Navigator.pushReplacementNamed(context, 'home');
                  } else {
                    print('please Register');
                  }
                },
              )),
              Row(
                children: [
                  Text('Does not have a account?'),
                  TextButton(
                      child: Text(
                        "sign in",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'signin');
                      })
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          )),
    );
  }
}

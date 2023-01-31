import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter1/home.dart';
import 'package:flutter1/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String Email = '';

  String Password = '';

bool passwordVisible = false;

  TextEditingController CheckEmailController = TextEditingController();

  TextEditingController CheckpasswordController = TextEditingController();

  @override
  @override
  void initState() {
    passwordVisible = false;
  }

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
                  )
              ),
              TextButton(onPressed: () {}, child: Text("Forget Password")),
              Container(
                  child: ElevatedButton(
                child: Text("Login"),
                onPressed: () async {
                  if (CheckEmailController.text == Email &&
                      CheckpasswordController.text == Password)
                  {
                    final SharedPreferences sharedPreferences =
                        await SharedPreferences.getInstance();
                    sharedPreferences.setBool('checkvalue', true);




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
              )
            ],
          )),
    );
  }
}

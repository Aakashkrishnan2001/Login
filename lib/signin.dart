import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);


  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  TextEditingController EmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Sign In'),),
      body:Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(padding: EdgeInsets.all(10),
              child:const TextField(

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "user name",

                ),
              ),
            ),
            Container(padding: EdgeInsets.all(10),
              child: TextField(
                controller: EmailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "E-mail",

                ),
              ),
            ),
            Container(padding:const EdgeInsets.all(10),
                child: TextField(

                  controller: passwordController,
                  decoration:const  InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password"
                  ),)),
            Container(padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  child: const Text("Register"),
                  onPressed: ()async{
                    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                    sharedPreferences.setString('Email',EmailController.text);
                     sharedPreferences.setString('password',passwordController.text);
                    sharedPreferences.setBool('checkvalue', true);
                   
                    Navigator.pop(context);

                  }
                )
            ),

          ],
        )
      ));
  }
}
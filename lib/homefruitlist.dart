import 'package:flutter1/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter1/listview/fruitdesc.dart';
import 'package:flutter1/listview/fruitdata.dart';


class Homefruitlist extends StatefulWidget {
  const Homefruitlist({Key? key}) : super(key: key);

  @override
  State<Homefruitlist> createState() => _HomeFruitlistState();
}

class _HomeFruitlistState extends State<Homefruitlist> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('FRUITS LIST'),
        ),bottomNavigationBar: ElevatedButton(
    child: const Text("Logut"),
    onPressed: () async {
      final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      sharedPreferences.remove('checkvalue');
      Navigator.pushReplacementNamed(context, 'login');

    }
    ),
        body: ListView.builder(
            itemCount: fruitData.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(fruitData[index].name),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(fruitData[index].ImageUrl),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            FruitDetail(fruitData: fruitData[index],)));
                  },
                ),
              );
            }

              )
    );
  }
}
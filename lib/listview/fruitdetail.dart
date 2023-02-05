import 'package:flutter/material.dart';
import 'package:flutter1/listview/fruitlist.dart';

class FruitDetail extends StatelessWidget {
  final FruitData fruitData;

  const FruitDetail({Key? key, required this.fruitData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(fruitData.name),),
      body: Column(
        children: [ FittedBox(child:
          Image.network(fruitData.ImageUrl),),
           SizedBox(
            height: 10,
          ),
         
          Expanded(child:Text(fruitData.desc,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),
          )
          ),],
      ),
    );
  }
}
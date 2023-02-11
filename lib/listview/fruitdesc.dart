import 'package:flutter/material.dart';
import 'package:flutter1/listview/fruitdata.dart';

class FruitDetail extends StatefulWidget {
  final FruitData fruitData;

  const FruitDetail({Key? key, required this.fruitData}) : super(key: key);

  @override
  State<FruitDetail> createState() => _FruitDetailState();
}

class _FruitDetailState extends State<FruitDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.fruitData.name),),
      body: Column(
        children: [ FittedBox(child:
          Image.network(widget.fruitData.ImageUrl),),

           SizedBox(
            height: 10,
          ),

          Expanded(child:Text(widget.fruitData.desc,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),
          )
          ),],
      ),
    );
  }
}
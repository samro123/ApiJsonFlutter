import 'package:calljson/model/json.dart';
import 'package:calljson/model/object/order.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Json'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: (){
              Map<String,dynamic> map = jsonDecode(jsonString);
              //print(map['orderId']);
              var order =Order.fromJson(map);

             print(order.orderId);
             print(order.user.email);

             order.products.forEach((element) {
               print(element.productName);
               print('---------------------');
             });
            },
            child: Text('Click'),
          ),
        ),
      ),
    );
  }
}

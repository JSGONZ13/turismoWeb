import 'package:flutter/material.dart';
import 'package:mvc_ingenieria_web/Controller/data.dart';
import 'package:mvc_ingenieria_web/Models/students.dart';
import 'package:firebase_core/firebase_core.dart';

// ignore: camel_case_types
class Mvc_View extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Mvc_View> {
  get items => getItems();

@override
void initState(){
  Firebase.initializeApp();
}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:ListView.builder(itemCount: items.length, itemBuilder: (context, index){
          return ListTile(
            title: Text('${items[index].name}')
          );
        })
      )
    );
  }
}

getItems(){
  List<Student> items = Data().getData();
  return items;
}
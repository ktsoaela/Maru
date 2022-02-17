import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Maru'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/setting');
            },
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _cloudIcon(),
          _temperature(),
        ]
      ),
    );
  }


  _temperature() {
    return Text(
      '-10', 
      style: TextStyle(
        fontSize: 80,
        fontWeight: FontWeight.w100,
      ),
    ); 
  }

  _cloudIcon() {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Icon(
        Icons.cloud, 
        size:80,),
    );
  }



}
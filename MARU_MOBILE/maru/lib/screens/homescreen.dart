
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.white,
            Colors.blueGrey.shade900,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20, 
            right: 20,
            ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _cloudIcon(),
              _temperature(),
              _location(),
              _date(),
              _description(),
              _hourlyprediction(),
              _weeklyprediction(),
            ]
          ),
        ),
      ),
    );
  }


  final weeks = ['1', '2', '3', '4', '5', '6', '7'];

  _weeklyprediction(){
    return Expanded(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.black),
            bottom: BorderSide(color: Colors.black),
          ),
        ),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: times.length,
          itemBuilder: (context, index){
          return Container(
            height: 50,
            child: Card(
              child: Center(
                child: Text('${weeks[index]}') ,),
            )
            ,
          ) ;
        },
        ),
      ),
    );
  }

  final times = ['1', '2', '3', '4', '5', '6', '7'];
  _hourlyprediction(){
    return Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.black),
          bottom: BorderSide(color: Colors.black),
        ),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: times.length,
        itemBuilder: (context, index){
        return Container(
          width: 50,
          child: Card(
            child: Center(
              child: Text('${times[index]}') ,),
          )
          ,
        ) ;
      },
      ),
    );
  }

  _description() {
    return Row(
      children: [
        Text(
          'heavy rainfal and thunder clouds',
        ), 
      ],
    );
  }

  _date() {
    return Row(
      children: [
        Icon(Icons.watch),
        Text(
          'Today',
        ), 
        Text(
          '20.10.20',
        ),
      ],
    );
  }

  _location() {
    return Row(
      children: [
        Icon(Icons.place),
        SizedBox(
          width: 10,
        ), 
        Text(
          'londo, UK',
        ),
      ],
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
        size:80,
      ),
    );
  }



}
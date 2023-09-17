import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// this is your APP Main screen configuration
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      /*******************--[focus here 🧐]--*******************/
      appBar: AppBar(
        leading: const Icon(Icons.android_sharp),
        title: const Text('App Title'),
        backgroundColor: Colors.teal,
        elevation: 4,
      ),
      body: myWidget(),
      /*******************--[focus here 🧐]--*******************/
    );
  }

  Widget myWidget() {
    return Container(
        width: 300,
        padding: EdgeInsets.all(20),
        child:
            // Expande , flex
            /*******************--[focus here 🧐]--*******************/
            SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 300,
                height: 300,
                child: Text("1"),
                color: Colors.amber,
              ),
              Container(
                width: 300,
                height: 300,
                child: Text("2"),
                color: Colors.black26,
              ),
              Container(
                width: 300,
                height: 300,
                child: Text("3"),
                color: Colors.red,
              ),
              Container(
                width: 300,
                height: 300,
                child: Text("4"),
                color: Colors.green,
              ),
            ],
          ),
        )
        /*******************--[focus here 🧐]--*******************/
        );
  }
}

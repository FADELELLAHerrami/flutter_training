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
        padding: EdgeInsets.all(20),
        child:
        // Expande , flex
            /*******************--[focus here 🧐]--*******************/
            Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                width: 300,
                child: Text("1"),
                color: Colors.amber,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: 300,
                child: Text("2"),
                color: Colors.black26,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: 300,
                child: Text("3"),
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 300,
                child: Text("4"),
                color: Colors.green,
              ),
            ),
          ],
        )
        /*******************--[focus here 🧐]--*******************/
        );
  }
}

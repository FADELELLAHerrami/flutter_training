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
            /*******************--[focus here 🧐]--*******************/
            Container(
                width: 400,
                height: 250,
                color: Colors.red,
                child: Stack(
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrfW5FwOk-hnGAbOkoledBqQ0gEZFCMhsluQ&usqp=CAU',
                      width: 400,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("SunSet", style: TextStyle(fontSize: 50)))
                  ],
                ))
        /*******************--[focus here 🧐]--*******************/
        );
  }
}

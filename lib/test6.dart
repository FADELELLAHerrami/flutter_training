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
    // ==> aspect ratio
    return Column(children: [
      AspectRatio(
        aspectRatio: 5 / 4,
        child: Image.network(
          'data:image/jpeg;base64,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',
          fit: BoxFit.cover,
        ),
      ),
      Text(
        "SUNRISE",
        style: TextStyle(fontSize: 30),
      )
    ]);
  }
}

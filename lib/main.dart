import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var black = Colors.black;
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.green, accentColor: Colors.amber)),
      home: FirstWidget(),
    );
  }
}

class FirstWidget extends StatefulWidget {
  @override
  State<FirstWidget> createState() => _FirstWidgetState();
}

class _FirstWidgetState extends State<FirstWidget> {
  double largeur = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 350),
            color: Colors.blue,
            width: 100 + largeur,
            height: 100 + largeur,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        largeur += 10;
                      });
                    },
                    child: Icon(Icons.add)),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        largeur -= 10;
                      });
                    },
                    child: Icon(Icons.remove))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

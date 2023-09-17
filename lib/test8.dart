import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.red,
        accentColor: Colors.lightBlue,
      )),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.android_outlined),
          title: Text("Flutter coureses"),
          elevation: 4,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => {
                        setState(() => ++count),
                      },
                  child: Icon(Icons.add)),
              Padding(
                padding: EdgeInsets.all(20),
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    setState(() {
                      count = 0;
                    });
                  },
                  child: Text(
                    "${count}",
                    style: TextStyle(
                        fontSize: 20,
                        color: count > 10 ? Colors.red : Colors.green),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () => {
                        setState(() => --count),
                      },
                  child: Icon(Icons.remove)),
            ],
          ),
        ),
      ),
    );
  }
}

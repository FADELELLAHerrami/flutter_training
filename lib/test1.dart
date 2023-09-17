import 'package:flutter/material.dart';

void main() => runApp(MyApp1());

/// this is your APP Main screen configuration
class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

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
            // ==> text
            //textExemple()
            // ==> Icons
            //iconExample()
            // ==> Button : elevetedButton , outlinedButton , TextButton
            //buttonExemple()
            // ==> Images
            //     Image.network(
            //   'https://cdn.hswstatic.com/gif/Flipboard-pic-replacement---pink-lake-1600x900.jpg',
            //   fit: BoxFit.fitWidth,
            //   width: 300,
            //   height: 400,
            // ),
            // ==> Icon button
            // IconButton(
            //     icon: Icon(Icons.favorite, color: Colors.purple, size: 100),
            //     onPressed: () {
            //       print("hello");
            //     })
            // ==> container
            Container(
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Colors.black,width: 30)
          ),
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(20),
          width: 300,
          height: 500,
          child: Text(
            "ERRAMI FADEL ELLAH",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        )
        /*******************--[focus here 🧐]--*******************/
        );
  }

  ///// text Example
  Text textExample() {
    return (Text(
      "Your first quiz",
      style: TextStyle(
          fontSize: 30,
          color: Color.fromARGB(102, 145, 205, 145),
          backgroundColor: Colors.yellow,
          fontFamily: 'casual',
          fontWeight: FontWeight.w500,
          letterSpacing: 1),
    ));
  }

  ///// Icons Example
  ///
  Icon iconExample() {
    return (Icon(
      Icons.wechat,
      size: 300,
      color: Colors.orange,
      textDirection: TextDirection.rtl,
    ));
  }

  //// Button example
  ElevatedButton buttonExemple() {
    return (ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.red,
            elevation: 5,
            padding: EdgeInsets.all(20),
            shape: StadiumBorder()),
        child: Text("press me",
            style: TextStyle(fontSize: 14, color: Colors.white)),
        onPressed: () {}));
  }
}

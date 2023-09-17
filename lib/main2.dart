import 'package:flutter/material.dart';

void main() => runApp(MyApp1());

/// this is your APP Main screen configuration
class MyApp1 extends StatelessWidget {
  MyApp1({Key? key}) : super(key: key);

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
            // ==> center and padding
            //     Center(
            //   child: Container(
            //     color: Colors.blue,
            //     height: 300,
            //     width: 200,
            //     child: Padding(
            //       //padding: const EdgeInsets.symmetric(vertical:25.0,horizontal:25.0),
            //       //padding: const EdgeInsets.only(right: 20.0,left: 25,top: 25, bottom: 25),

            //       padding: const EdgeInsets.all(25),
            //       child: Text("ERRAMI FADEL ELLAH"),
            //     ),
            //   ),
            // )
            // ==> Row (main axis ,  cross axis)
            Container(
          // child: Row(
          //   textDirection: TextDirection.rtl,
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     Icon(
          //       Icons.filter,
          //       size: 30,
          //     ),
          //     Text("ERRAMI FADEL ELLAH"),
          //     Icon(
          //       Icons.whatshot,
          //       size: 30,
          //     )
          //   ],
          // ),
          // ==> column (main axis  , cross axis)
          color: Colors.black,
          width: 300,
          // child: Column(
          //   mainAxisSize: MainAxisSize.min,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     FlutterLogo(
          //       size: 100,
          //       style: FlutterLogoStyle.horizontal,
          //     ),
          //     FlutterLogo(
          //       size: 100,
          //       style: FlutterLogoStyle.markOnly,
          //     ),
          //     FlutterLogo(
          //       size: 100,
          //       style: FlutterLogoStyle.stacked,
          //     ),
          //   ],
          // ),
        )
        // expanded & flex 
        /*******************--[focus here 🧐]--*******************/
        );
  }
}

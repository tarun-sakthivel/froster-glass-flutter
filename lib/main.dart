import 'package:flutter/material.dart';
import 'frosterglasss.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/rainforest.png'),
          fit: BoxFit
              .cover, // BoxFit.cover scales up the image until it completely covers the screen
        ),
      ),
      // alignment is for centering the frostedglass, we don't use Center();
      //  because if you want to change its position and remove the Center();
      //  widget, everything will get messy the script crashes.
      alignment: Alignment.center,
      child: const FrostedGlassBox(
        // theWidth is the width of the frostedglass
        theWidth: 300.0,
        // theHeight is the height of the frostedglass
        theHeight: 500.0,
        // theChild is the child of the frostedglass
        theChild: Text(
          'Hey there',
          style: TextStyle(color: Colors.white54, fontSize: 30.0),
        ),
      ),
    ));
  }
}

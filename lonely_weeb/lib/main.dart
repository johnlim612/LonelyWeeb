import 'package:flutter/material.dart';
import 'widgets/findfriends.dart';
import 'splash.dart';

void main() {
  runApp(LonelyWeeb());
}

class LonelyWeeb extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lonely Weeb',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF4A68D3),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Widget topWidget;

  void changeTop(Widget top) {
    setState(() {
      // topWidget = top;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(widget.title),
      // ),
      body: Stack(
        children: <Widget>[
          Center(),
        ],
      ),
      drawer: Drawer(),
    );
  }
}

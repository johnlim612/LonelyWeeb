import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        scaffoldBackgroundColor: const Color(0xFF4A68D3),
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Lonely'),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 8,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0.0, 
                        24.0, 
                        0.0, 
                        0.0),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text(
                        'Lonely',
                        style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.5)
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          // Find Nakamas button
                          
                          // Profile Button
                          
                          // Search Anime button
                        
                        ],
                      ),
                    ),
                  ],
                )
              ),
              Expanded(
                flex: 2,
                child: Container()
              )
            ]
          ),
          // Draggable( // USE A DRAWER INSTEAD 
          //   child: topWidget,
          //   feedback: topWidget,
          //   axis: Axis.horizontal,
          // ),
          // Widget that comes up to show other peoples profile i guess?
        ],
      ),
    );
  }
}

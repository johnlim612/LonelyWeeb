import 'package:flutter/material.dart';
import 'package:lonely_weeb/splash.dart';
// import 'widgets/findfriends.dart';
// import 'widgets/profile.dart';
// import 'widgets/searchanime.dart';
// import 'widgets/chat.dart';
// import 'splash.dart';

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
      // home: MyHomePage(title: "Lonely Weeb",),
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
  // Widget mainWidget;

  void changeMain(Widget w) {
    setState(() {
      // mainWidget = w;
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
          // Put find friends, searchanime, profile, chat things overtop of eachother i guess
        ],
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Expanded(
              flex: 2,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Lonely Weeb'),
              )
            ),
            Expanded(
              flex: 8,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: new AssetImage('assets/testImage/marine.png'),
                      child: GestureDetector(onTap: () { /* show profile i guess */ }),
                    ),
                    title: const Text('Houshou Marine'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: const Text('Item 2'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                ],
              )
            ),
          ]
        ),
      ),
    );
  }
}

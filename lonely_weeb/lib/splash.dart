import 'main.dart';
import 'package:flutter/material.dart';
import 'package:lonely_weeb/main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(
                  title: 'Lonley Weeb',
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('Lonely Weeb',
                  style: TextStyle(fontSize: 42, fontFamily: "RussoOne")),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 40),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/chika_fujiwara.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle),
              height: 236,
              width: 236,
            ),
          ],
        ),
      ),
    );
  }
}

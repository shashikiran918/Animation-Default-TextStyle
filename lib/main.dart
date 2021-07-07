import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Animation DEFAULT TEXTSTYLE'),
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
  bool animated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Text"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedDefaultTextStyle(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Flutter'),
                  Text(' is '),
                  Text('awesome '),
                ],
              ),
              style: animated ? TextStyle(
                color: Colors.blue,
                fontSize: 26,
                fontWeight: FontWeight.w800,
                letterSpacing: 4,
              ) : TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w100,
                fontSize: 14,
                letterSpacing: 1,
              ),
              duration: Duration(milliseconds: 1000),
              curve: Curves.elasticOut,
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              child: Text('Animate'),
              onPressed: () {
                setState(() {
                  animated = !animated;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

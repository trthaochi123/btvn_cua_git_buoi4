import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0.0,
      ),
      body: Container(
        color: Color.fromRGBO(220, 245, 183, 100),
        child: Column(
          children: [
            column1(),
            column2(),
            column3(),
          ],
        ),
      ),
    );
  }
}

Widget column3() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 100, vertical: 150),
    child: Column(
      children: [
        Row(
          children: const [
            Icon(Icons.call, color: Colors.green),
            SizedBox(width: 40),
            Text("+84 (123) 444 555 666"),
          ],
        ),
        SizedBox(height: 5,),
        Row(
          children: const [
            Icon(Icons.share, color: Colors.green),
            SizedBox(width: 40),
            Text("@ChitranDev"),
          ],
        ),
        SizedBox(height: 5,),
        Row(
          children: const [
            Icon(Icons.email, color: Colors.green),
            SizedBox(width: 40),
            Text("tr.thaochi@gmail.com"),
          ],
        ),
      ],
    ),
  );
}

Widget column2() {
  return Container(
    margin: EdgeInsets.only(
      top: 30,
      left: 3,
    ),
    child: Column(
      children: const [
        Text(
          "TRẦN THẢO CHI",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Android Developer Extraordinaire",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    ),
  );
}

Widget column1() {
  return Container(
    margin: EdgeInsets.only(
      left: 7,
      top: 200,
    ),
    padding: EdgeInsets.only(
      top: 7,
      bottom: 20,
      left: 30,
      right: 30,
    ),
    color: Color.fromRGBO(19, 48, 58, 10),
    child: Column(
      children: const [
        Icon(
          Icons.android,
          size: 85,
          color: Colors.green,
        ),
        Text(
          "android",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        )
      ],
    ),
  );
}

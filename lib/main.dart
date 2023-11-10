import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String val = " ama";
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      persistentFooterButtons: const [
          IconButton(
          onPressed: null, 
          icon: Icon(Icons.access_alarm_outlined)
          ),
          IconButton(
          onPressed: null, 
          icon: Icon(Icons.ac_unit_sharp)
          ),
      ],
    );
  }
}

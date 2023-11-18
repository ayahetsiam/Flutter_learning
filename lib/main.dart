

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Stack"),
        leading: const IconButton(
          icon: Icon(
            Icons.alarm_rounded,
            color: Colors.black,
            size: 50,
          ),
          onPressed: null,
        ),
        actions: const [
          IconButton(
            icon: Icon(Icons.more),
            onPressed: null,
          ),
        ],
      ),
      body: Center(child: Stack(alignment: Alignment.centerLeft,
      children: [
        Container(color: Colors.red,
        height: 300,
        width: 300,
      
        ),

        Container(color: Colors.green,
        height: 30,
        width: 200,),

        Container(color: Colors.black,
        height: 200,
        width: 100,),
      ],),
      ),
    );
  }
}

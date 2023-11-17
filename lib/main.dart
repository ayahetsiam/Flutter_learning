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
        title: const Text("Row & column"),
        leading: const IconButton(
          icon: Icon(
            Icons.baby_changing_station,
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
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: const Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("Nom"), Text("Premon")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("AYAH"), Text("Yawavi")],
            )
          ]),
        ),
      ),
    );
  }
}

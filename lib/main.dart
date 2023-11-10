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
      drawer: const Drawer(backgroundColor: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DrawerHeader(
            child: Text('Menu')),
            ListTile(
              title: Text(
                "Acueil", 
                selectionColor: Colors.brown,
              ),
              onTap: null,
              leading: Icon(Icons.home),
            )
      ]),
      ),
    );
  }
}

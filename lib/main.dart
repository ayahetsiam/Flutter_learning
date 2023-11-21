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
        title: const Text("GridBuilder"),
        actions: const [
          IconButton(
            icon: Icon(Icons.person,size: 30, color: Colors.white,),
            onPressed: null,
          ),
        ],
      ),

      body: Center(
        // ignore: non_constant_identifier_names
        child: OrientationBuilder(builder: (context, Orientation){
          return GridView.count(crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          children: List.generate(12, (index) {
            return Image.asset("images/R ($index).png");
          }
          ),
          );
        }),
      ),
      
    );
  }
}
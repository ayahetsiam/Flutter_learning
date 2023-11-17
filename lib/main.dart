import 'dart:ffi';

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
  int id = 0;
Future<void> info(BuildContext context)async{
  await showDialog<Void>(context: context, builder:(BuildContext context){
    return AlertDialog(content: const Text("veux tu vraiment supprimer le fichier?"),
    title: const Text("ton avis"),
    actions: [
      ElevatedButton(onPressed: (){
        Navigator.of(context).pop();
      }, child: const Text("oui")),

      ElevatedButton(onPressed: (){
        Navigator.of(context).pop();
      }, child: const Text("Non")),
    ],
    );
  });
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("AlertDialog"),
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
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(
          Icons.home,
        ),
        label: "Home",
        tooltip: "Appuyez pour acceder à la page d'accueil"),

        BottomNavigationBarItem(
            icon: Icon(
          Icons.cable,
        ),
        label: "cable",
        tooltip: "Appuyez pour acceder à la page d'accueil",),

        BottomNavigationBarItem(
            icon: Icon(
          Icons.message,
        ),
        label: "message",
        tooltip: "Appuyez pour acceder à la page d'accueil")
      ],
      fixedColor: Colors.amber,
      currentIndex: id,
      onTap: (int ids) {
       ids = id; 
      },
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        ElevatedButton(onPressed: () => info(context), child: const Text("show alert dialog"))
        ],
      ),
    );
  }
}

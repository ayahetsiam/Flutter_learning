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
      body: const Center(
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          ListTile(
            leading: Icon(Icons.person, size: 40, color: Colors.black,),
            title: Text("Le personnage",
            style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            subtitle:
                Text("il a eté l'homme dont on a parlé il y a de cela 2ans",
                style: TextStyle(fontSize: 12, color: Colors.black),),
          ),
          Divider(color: Colors.black, height: 4,),

          ListTile(
            leading: Icon(Icons.person, size: 40, color: Colors.black,),
            title: Text("Quelqu'un",
            style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            subtitle:
                Text("il a eté l'homme dont on a parlé il y a de celà 2ans",
                style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 145, 107, 50)),),
          ),
          Divider(color: Colors.black, height: 4,),

          ListTile(
            leading: Icon(Icons.person, size: 40, color: Colors.black,),
            title: Text("l'individu",
            style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            subtitle:
                Text("il a eté l'homme dont on a parlé il y a de celà 2ans",
                style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 145, 107, 50)),),
          ),
          Divider(color: Colors.black, height: 4,),

          ListTile(
            leading: Icon(Icons.person, size: 40, color: Colors.black,),
            title: Text("Le personnage",
            style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            subtitle:
                Text("Un projet en général est une entreprise temporaire planifiée et organisée qui vise à atteindre un objectif spécifique dans des délais et des ressources définis.",
                style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 145, 107, 50)),),
          ),
          Divider(color: Colors.black, height: 4,),
          
        ]),
      ),
    );
  }
}

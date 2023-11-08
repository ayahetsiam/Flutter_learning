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
      appBar: AppBar(
        title: Text(val),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 229, 18, 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const DrawerHeader(
              child: Text(
                "La liste des enfants",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              ListTile(
                title: const Text("Etsiam",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,)),
                onTap: (){
                  setState(() {
                    val="Etsiam";
                  });
                },
              ),

              ListTile(
                title: const Text("Vivien",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,)),
                onTap: (){
                  setState(() {
                    val="Vivien";
                  });
                },
              ),

              ListTile(
                title: const Text("Diane",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,)),
                onTap: (){
                  setState(() {
                    val="Diane";
                  });
                },
              ),

              ListTile(
                title: const Text("Caleb",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,)),
                onTap: (){
                  setState(() {
                    val="Caleb";
                  });
                },
              ),
              ListTile(
                title: const Text("Bernadin",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,)),
                onTap: (){
                  setState(() {
                    val="Bernadin";
                  });
                },
              ),
          ],
        ),
        ),
    );
  }
}

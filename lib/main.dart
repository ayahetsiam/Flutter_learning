import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  
  const MyApp({super.key});

 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePageStata(),
    );
  }
}

class MyHomePageStata extends StatefulWidget {
  const MyHomePageStata({super.key});

  
  @override
  State<MyHomePageStata> createState() => _MyHomePageStataState();
}

class _MyHomePageStataState extends State<MyHomePageStata> {
  //final nomController=TextEditingController();
String nom = "";

void afficher(String a){
  setState(() {
     nom = "bienvenu $a";
  });
    // print(nom);
  }

  void submit(String a){
  setState(() {
     nom = "vous avez envoyé: $a";
  });
    // print(nom);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Textfield",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(nom, style: const TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),),
            TextField(
              //controller: nomController,
              decoration: const InputDecoration(
                labelText: 'Nom',
                icon: Icon(Icons.person, size: 50,),
                iconColor: Color.fromARGB(255, 10, 12, 12),
              ),
              keyboardType: TextInputType.text,
              onChanged: afficher,
              onSubmitted: submit,

            )
          ],
        ),
      ),
    );
  }
}

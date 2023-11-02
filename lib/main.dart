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
        primarySwatch: Colors.blue,
      ),
      home: soir(),
    );
  }
}

class soir extends StatefulWidget {
  const soir({super.key});
  @override
  State<soir> createState() => _soirState();
}

class _soirState extends State<soir> {
  var titre = "Bienvenue etsiam";
  @override
  void initState() {
    // TODO: implement initState
    titre = "ça c'est moi";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(titre),
        ),
        body: ElevatedButton(
          onPressed:(){
            print('bouton pressé');
           setState(() {
             titre = "une operation";
           });
          }, 
          child:const Text('presser'),
          ),
        );
  }
}

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
        //primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
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
  int value = 0;
  void augmenter(){
    setState(() {
      value++;
    });
  }
  void diminuer(){
    setState(() {
      value--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: const Text(
          "Fichier",
          style: TextStyle(color: Colors.black,
          fontSize: 30,fontWeight: FontWeight.bold),
        ),
        leading: const Icon(Icons.file_open,
        size: 40,
        color: Colors.black,),
        actions:[
          

          IconButton(
          onPressed:(){
            augmenter();
          }, 
          icon: const Icon(Icons.upload, 
          size: 40,
          color: Colors.black,),),
          
          IconButton(
          onPressed:(){
            diminuer();
          }, 
          icon: const Icon(Icons.download, 
          size: 40,
          color: Colors.black,),),
          
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Text('Faisons un text en même temps'),
            const Padding(padding: EdgeInsets.only()),
            Text(value.toString()),
          ]),
      ),
    );
  }
}

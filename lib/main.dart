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
  int note = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('textButton & IconButton', style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextButton(
            onPressed: (){
              debugPrint("le boutton est pressé");
            }, 
            child: const Text('TextButton', style: TextStyle(fontSize: 30),)),
            
            IconButton(
              onPressed: (){
                setState(() {
                  note++;
                }); 
              }, 
              icon: const Icon(Icons.thumb_up, color: Colors.green, size: 50,),
               tooltip: 'j\'aime',
               ),

            Text('Votre point de vue : $note', style: TextStyle(color: Color.fromARGB(255, 69, 126, 169), fontSize: 30),),

            IconButton(
              onPressed: (){
                setState(() {
                  note--;
                }); 
              }, 
              icon: const Icon(Icons.thumb_down, color: Colors.red, size: 50,),
               tooltip: 'j\'aime pas',
               ),
        ]),
    );
  }
}
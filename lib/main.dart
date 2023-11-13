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
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {

    


    return Scaffold(
      appBar: AppBar(),

      bottomNavigationBar: BottomNavigationBar(items: const[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.call,
            size: 20,
            color: Colors.black,),
            label: "home"
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.call_end,
            size: 20,
            color: Colors.black,),
            label: "holf",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.call_missed_rounded,
            size: 20,
            color: Colors.black,),
            label: "alzj",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.hail,
            size: 20,
            color: Colors.black,),
            label: "Text('data')"
        ),
        
      ],
      backgroundColor: Colors.amber,
      selectedFontSize: 30,
      
      
      ),
     
    );
  }
}

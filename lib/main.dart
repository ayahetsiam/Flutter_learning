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
      home: const soir(),
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
  String value1 = "le premier bouton";
  String value2 = "le 2eme bouton";
  void initState() {
    // TODO: implement initState
    titre = "ElevatedButton";
  }

  void onClick1(){
    setState(() {
      value1 = "tutoriel pour les debutant";
    });  
  }

  void onClick2(String value){
    setState(() {
      value2 = value;
    });
    
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(titre),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text("1er bouton", style: TextStyle(color:Colors.black, fontSize: 25),),
              onPressed: () => onClick1(),
            ),
            
            Text(value1, style: TextStyle(fontSize: 50, color: Colors.green[300]),),

            Divider(height: 10,),

            ElevatedButton(
              child: const Text("2eme bouton", style: TextStyle(color:Colors.red, fontSize: 25),),
              onPressed: (){
                onClick2("Tutoriel pour les professionnels");
              },
            ),

            Text(value2, style: TextStyle(fontSize: 50, color: Colors.blue[300]),),

          ],
        ),
    );
  }
}

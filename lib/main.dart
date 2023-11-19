
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
        title: const Text("ListViewBuilder"),
        actions: const [
          IconButton(
            icon: Icon(Icons.person,size: 30, color: Colors.white,),
            onPressed: null,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
            Text("Le tableau de bord de la banque",
            style: TextStyle(backgroundColor: Colors.white,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25),),
          ],),
          Container(
            alignment: Alignment.center,
            color: const Color.fromARGB(255, 208, 206, 202),
            height: 500,
            width: 350,
            child: getListView(),
          )
        ]),
        
      ),
    );
  }
}


List<String> getListElement(){
  var item = List<String>.generate(25, (index) => "Article : $index");
  return item;
}

Widget getListView(){
  var listitem = getListElement();
  var listview = ListView.builder(
    itemCount: listitem.length,
    itemBuilder: (context, val){
   return  ListTile(
      title: Text(listitem[val]),
      leading: const Icon(Icons.trending_down),
    );
  });
 return listview;
}




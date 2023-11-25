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

  List<Person> persons = []; 
  Widget tablegeo(){
    return DataTable(
      columns: const[
      DataColumn(label: Text("Nom", style: TextStyle(fontSize: 25, color: Colors.red),)),
      DataColumn(label: Text("Prenoms", style: TextStyle(fontSize: 25, color: Colors.red),)),
      DataColumn(label: Text("Age", style: TextStyle(fontSize: 25, color: Colors.red),)),
    ], 
    rows: persons.map((person) => DataRow(cells: [
      DataCell(Text(person.nom)),
      DataCell(Text(person.prenom)),
      DataCell(Text(person.stringAge())),
    ])
    ).toList(),
    );
  }

  @override
  void initState() {
    super.initState();
    persons = Person.getPerson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("DataTable"),
          actions: const [
            IconButton(
              icon: Icon(
                Icons.person,
                size: 30,
                color: Colors.white,
              ),
              onPressed: null,
            ),
          ],
        ),
        body: Center(
          child: Column(children: [
            tablegeo(),
          ]),
        ),             
    );
  }
}

class Person{
  String nom;
  String prenom;
  int age;

  Person(this.nom, this.prenom, this.age);

  static List<Person> getPerson(){
    return <Person>[
      Person("AYAH", "Rosine", 34),
      Person("AYAH", "mafille", 34),
      Person("AYAH", "sena", 34),
      Person("AYAH", "Richard", 34),
      Person("AYITE", "Delphine", 34),
      Person("AYAH", "Rosine", 34),
      Person("AYAH", "Rosine", 34),
      Person("AYAH", "Rosine", 34),
    ];
  }

  String stringAge(){
    return "$age";
  }
}


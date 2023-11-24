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
          title: const Text("Navigator"),
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
            child: ListView(padding: const EdgeInsets.all(20), children: [
          const Text(
            "Restaurant - menu",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const Padding(padding: EdgeInsets.all(10)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Image.asset(
              "images/breakfast.jpg",
              width: 150,
              height: 150,
            ),
             Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Le petit déjeuner anglais ou petit déjeuner irlandais en Irlande ......",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                    onPressed: (){
                      var route = MaterialPageRoute(
                        builder: (BuildContext context)=>const MoreDetail(
                        val1: "breackfast",
                        val2: "images/breakfast.jpg",
                      )
                      );
                      Navigator.of(context).push(route);
                    },
                    child: const Text("Detail"),
                  ),
                ],
              ),
            )
          ]),

          const Divider(
            height: 20,
            color: Colors.black,
          ),
//===============================================================
          const Padding(padding: EdgeInsets.all(10)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Image.asset(
              "images/dinner.jpg",
              width: 150,
              height: 150,
            ),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Un repas est un ensemble de nourriture composée de divers mets et ...",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text("Detail"),
                  ),
                ],
              ),
            )
          ]),

          const Divider(
            height: 20,
            color: Colors.black,
          ),

          //===========================================================
          const Padding(padding: EdgeInsets.all(10)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Image.asset(
              "images/breakfast.jpg",
              width: 150,
              height: 150,
            ),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Un repas est un ensemble de nourriture composée de divers mets et ...",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text("Detail"),
                  ),
                ],
              ),
            )
          ]),
        ])));
  }
}

class MoreDetail extends StatelessWidget {
  final String val1;
  final String val2;
  const MoreDetail({super.key, required this.val1, required this.val2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Navigator"),
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
           Text(
            val1,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const Padding(padding: EdgeInsets.all(10)),
          
          
              Image.asset(
                val2,
                width: 150,
                height: 150,
              ),
              const Text(
                "Un repas est un ensemble de nourriture composée de divers mets et de boisson que l'on absorbe à des heures précises de la journée. Par extension, le repas est une action spécifique, consacrée à l'alimentation, qui entre dans le cycle des activités journalières. Il est souvent perçu comme un acte naturel car il répond à la satisfaction de besoins physiologiques essentiels",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
       
      ),
    );
  }
}



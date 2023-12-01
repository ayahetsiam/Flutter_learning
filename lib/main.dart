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
  

  Widget operator(String operator) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        child: Container(
          height: 70,
          width: 70,
          alignment: Alignment.center,
          decoration: const BoxDecoration(color: Color.fromARGB(255, 168, 222, 230)),
          child: Text(operator, style: const TextStyle(color: Colors.blueGrey, fontSize: 25),),
        ),
      ),
    );
  }

  Widget number(String nombre) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        child: Container(
          height: 70,
          width: 70,
          alignment: Alignment.center,
          decoration: const BoxDecoration(color: Colors.white),
          child: Text(nombre, style: const TextStyle(color: Color.fromARGB(255, 95, 140, 165), fontSize: 25),),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text("Calculatrice"),
      //   actions: const [
      //     IconButton(
      //       icon: Icon(
      //         Icons.person,
      //         size: 30,
      //         color: Colors.white,
      //       ),
      //       onPressed: null,
      //     ),
      //   ],
      // ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 500,
          width: 297,
          color: const Color.fromARGB(255, 155, 174, 174),
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(20), color: Colors.black),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 125,
                color: Colors.blueGrey,
                alignment: Alignment.bottomRight,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Text("5 * 100", style: TextStyle(fontSize: 20, color: Colors.white),),
                  Text("=500",  style: TextStyle(fontSize: 30, color: Colors.yellow))
                ]),
                
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      operator("CE"),
                      operator("C"),
                      operator("/"),
                      operator("C"),

                      
                      // operator(icon)
                      // IconButton(onPressed: onPressed, icon: icon)
                    ],
                    
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    number("1"),
                       number("2"),
                        number("3"),
                        operator("+")
                  ],),

                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                   number("4"),
                          number("5"),
                           number("6"),
                        operator("-")
                  ],),

                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                   number("7"),
                             number("8"),
                              number("9"),
                        operator("*")
                  ],),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                   number("-"),
                             number("0"),
                              number("."),
                        operator("=")
                  ],),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

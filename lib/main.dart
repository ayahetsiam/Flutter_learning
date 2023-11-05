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
  bool val1 = false;
  bool val2 = false;
  double val3 = 0.0;

  void change1(bool b) {
    setState(() {
      val1 = b;
    });
  }

  void change3(double b) {
    setState(() {
      val3 = b;
    });
  }

  void change2(bool t) {
    setState(() {
      val2 = t;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Slider & Switch",
          ),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Switch(
              value: val1,
              onChanged: change1,
              activeColor: Colors.green,
            ),
            SwitchListTile(
              value: val2,
              onChanged: change2,
              activeColor: Colors.red,
              title: const Text(
                "interrupteur",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "le curseur ${(val3*100).round()}",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Slider(
              value: val3,
              onChanged: change3,
              activeColor: Colors.black,
            )
          ]),
        ));
  }
}

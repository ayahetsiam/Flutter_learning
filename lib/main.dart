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
  String heure = '';

  void onShow()
  {
    setState(() {
            heure = DateTime.now().toString();
          });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('floatingActionButton'),
      ),
      body: Column(
        children: [
          Text(
            'date &heure = $heure',
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 40,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onShow();
        },
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.timer,
        ),
      ),
    );
  }
}

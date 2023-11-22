

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
          title: const Text("GridBuilder"),
          actions: const [
            IconButton(
              icon: Icon(Icons.person,size: 30, color: Colors.white,),
              onPressed: null,
            ),
          ],
        ),
        body: PageView.builder(
          itemCount: pages.length,
          itemBuilder: (context, index) {
            return pagewidget(entry: pages[index]);
          },
          ),
      );

  }
}


class Pageinfo{
  final String title;
  final String image;
  final String description;

  const Pageinfo(this.title, this.image, this.description);
}
final List<Pageinfo> pages=[
  const Pageinfo("meilleur modele n-1", "images/R (1).png", "1 revolution"),
  const Pageinfo("meilleur modele n-2", "images/R (2).png", "2 revolution"),
  const Pageinfo("meilleur modele n-3", "images/R (3).png", "3 revolution"),
  const Pageinfo("meilleur modele n-4", "images/R (4).png", "4 revolution"),
  const Pageinfo("meilleur modele n-5", "images/R (5).png", "5 revolution"),
  const Pageinfo("meilleur modele n-6", "images/R (6).png", "6 revolution"),
];

// ignore: camel_case_types
class pagewidget extends StatefulWidget {
  final Pageinfo entry;
  const pagewidget({super.key, required this.entry});
  
  @override
  State<pagewidget> createState() => _pagewidgetState();
}

// ignore: camel_case_types
class _pagewidgetState extends State<pagewidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(widget.entry.image,width: 100,),
        Text(widget.entry.title),
        Text(widget.entry.description)
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

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
List<String> imagesLink=["images/R (4).png", "images/R (1).png", "images/R (2).png", "images/R (3).png", "images/dinner.jpg"];
  Widget page(String image, Color couleur, String titre, String explication){
    return SizedBox(
      height:100,
      child: ListTile(
      title: Text(titre, style: TextStyle(color: couleur),),
      leading: Image.asset(image),
      subtitle: Text(explication),
      ),
    );
  }
  
  Widget carousel() => FlutterCarousel(
    items:imagesLink.map((e) =>Image.asset(e, fit: BoxFit.fill,)).toList(),
    options: CarouselOptions(
      autoPlay: true, 
      reverse: true,
      scrollDirection: Axis.vertical,
      
      )
    );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: const Text("Form validation"),
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
        body: CustomScrollView(
          
          slivers: [
            
            SliverAppBar(
              title: const Text("bienvenu au dinner", style: TextStyle(color: Colors.black, fontSize: 30),),
              centerTitle: true,
              expandedHeight: 300,
              pinned: true,
              backgroundColor: Colors.amber,
              flexibleSpace: FlexibleSpaceBar(
                background: carousel(),
              ),
              
            ),
            SliverFixedExtentList(delegate: SliverChildListDelegate(
              [const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 100,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                  Column(children: [
                    IconButton(onPressed: null, icon: Icon(Icons.thumb_down)),
                    Text("j'aime pas"),
                  ],),
                  
                  Column(children: [
                    IconButton(onPressed: null, icon: Icon(Icons.thumb_up)),
                    Text("j'aime "),
                  ],),
                  Column(children: [
                    IconButton(onPressed: null, icon: Icon(Icons.comment)),
                    Text("commentaire"),
                  ],),
                  Column(children: [
                    IconButton(onPressed: null, icon: Icon(Icons.email)),
                    Text("mail"),
                  ],),
                ]),
                
                )
                          ),
              ),
            // page("images/R (0).png", Colors.brown, "Images 0", "Donc c'est la 1ere image"),
            page("images/R (1).png", Colors.black, "Images 1", "Donc c'est la 1ere image"),
            page("images/R (2).png", Colors.blue, "Images 2", "Donc c'est la 2eme image"),
            page("images/R (3).png", Colors.red, "Images 3", "Donc c'est la 3eme image"),
            page("images/R (4).png", Colors.brown, "Images 4", "Donc c'est la 4eme image"),
            page("images/R (5).png", Colors.purple, "Images 5", "Donc c'est la 5eme image"),
            page("images/R (1).png", Colors.black, "Images 1", "Donc c'est la 1ere image"),
            page("images/R (2).png", Colors.blue, "Images 2", "Donc c'est la 2eme image"),
            page("images/R (3).png", Colors.red, "Images 3", "Donc c'est la 3eme image"),
            page("images/R (4).png", Colors.brown, "Images 4", "Donc c'est la 4eme image"),
            page("images/R (5).png", Colors.purple, "Images 5", "Donc c'est la 5eme image")
            ],
            ),
            itemExtent: 100)
          ],
        
        )
        // Padding(
      // padding: const EdgeInsets.symmetric(horizontal: 24).copyWith(top: 20),
      // child: ListView(
      //   children: [
      //     const SizedBox(height: 20, ),
      //     Container(color: Colors.blue,
      //       child: carousel,
      //     ),
          
      //   ],
      // ),
    );
  }
}


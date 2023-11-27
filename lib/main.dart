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
  String nom ="";
  String value = "";
  String password = "";
  String phone = "";
  String name = "";
  bool state = true;
  final formkey =  GlobalKey<FormState>();
  void afficher(String a){
    setState(() {
      nom = "bienvenu $a";
    });
  }

  void submit(String a){
    setState(() {
      nom = "vous avez envoyé: $a";
    });
  }

  void validation(){
    if(formkey.currentState!.validate()){
      formkey.currentState!.save();
      debugPrint(nom);
      debugPrint(password);
      debugPrint(phone);
      
      var route = MaterialPageRoute(builder: (BuildContext context)=>WelcomePage(nom: nom, tel: phone, password: password,));
      Navigator.of(context).push(route);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Form validation"),
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Form(
              
              key: formkey,
              child: Center(
              child: Column(
                  
                children: <Widget>[
                  Text(nom, style: const TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),),
                   TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Nom',
                      icon: Icon(Icons.person, size: 30, color: Colors.blue,),  
                    ),
                    keyboardType: TextInputType.text,
                    onChanged: afficher,
                    onSaved: (val)=> nom=val!,
                    validator: (val)=> val!.isEmpty ? "entrez le nom" : null,
                  ),
            
                   TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Phone',
                      labelStyle:TextStyle(color: Color.fromARGB(255, 176, 39, 158)),
                      icon: Icon(Icons.phone, size: 30, color: Colors.blue,),
                      
                      focusColor: Colors.amber,
                      
                    ),
                    keyboardType: TextInputType.number,
                    autocorrect: true,
                    autofocus: true,
                    onSaved: (val)=> phone=val!,
                    validator: (val)=> val!.isEmpty ? "entrez le numero" : null,
                  ),
            
                  TextFormField(
                    decoration:  InputDecoration(
                      labelText: 'Password',
                      icon: const Icon(Icons.key, size: 30, color: Colors.blue,),
                      suffix: InkWell(
                        onTap: () => setState(() {
                          state = !state;
                        }),
                        child: Icon(state == true? Icons.visibility_off:Icons.visibility))
                    ),
                   // autovalidateMode: AutovalidateMode.always,
                    validator: (val)=> val!.isEmpty ? "le password" : null,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: state,
                    onSaved: (val)=> password=val!,
                  
                  ),
                  const Padding(padding: EdgeInsets.only(top: 32) ),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      
                      onPressed: validation, child: const Text("validate"))),
                ],
              )
              ),
            ),
          ),
        )             
    );
  }
}

class WelcomePage extends StatelessWidget {
  final String nom;
  final String tel;
  final String password;
  const WelcomePage({super.key, required this.nom, required this.tel, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Sur une autre page"),
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

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Je te connais: tu est $nom, ton numero de telephone est $tel mais j'oublie un tout petit peu ton mot de passe"),
             FloatingActionButton(onPressed: (){
              var route = MaterialPageRoute(builder: (BuildContext context)=>passPage(password: password,));
              Navigator.of(context).push(route);
            },
            child: const Icon(Icons.lock_open))
          ],
        ),
    );
  }
}

// ignore: camel_case_types
class passPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final password;
  const passPage({super.key, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Sur une autre page"),
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

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("je me souviens alors! c'est . . . $password, Pas vrai? En tout cas c'est sûr"),
          ],
        ),
    );
  }
}



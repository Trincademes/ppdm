import 'package:ppdm/cadastro.dart';
import 'package:ppdm/menu.dart';
import 'splash.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Login(),
      ) ,

    );
  }
}

class Login extends StatelessWidget {

  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(20.0),
      color:Colors.green,
      child:Container(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: TextField(
                decoration:InputDecoration(
                  labelText: 'Login',
                  prefixIcon: Icon(Icons.person),
                    filled:true,
                  fillColor: Colors.grey[300],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: TextField(
                decoration:InputDecoration(
                  labelText: 'Senha',
                  prefixIcon: Icon(Icons.password),
                  filled:true,
                  fillColor: Colors.grey[300],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
                onPressed:(){
                  Navigator.push( // Navega para a Tela2
                    context,
                    MaterialPageRoute(builder: (context) =>  menu()),
                  );

            },
                child: const Text('Entrar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                textStyle: TextStyle(fontSize: 14),
                padding:
                EdgeInsets.symmetric(horizontal:20, vertical: 20),
                minimumSize: Size(180, 50),
                shape:RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(20),

                ),

              ),

            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed:(){
                Navigator.push( // Navega para a Tela2
                  context,
                  MaterialPageRoute(builder: (context) => const Cadastro()),
                );

              },
              child: const Text('Cadastrar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                textStyle: TextStyle(fontSize: 14),
                padding:
                EdgeInsets.symmetric(horizontal:20, vertical: 20),
                minimumSize: Size(180, 50),
                shape:RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(20),

                ),

              ),

            ),

          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'main.dart';
import 'cadastromed.dart';


class menu extends StatelessWidget{
  const menu({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
          title: const Text ('Menu'),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed:(){
                  Navigator.push( // Navega para a Tela2
                    context,
                    MaterialPageRoute(builder: (context) => const menu()),
                  );

                },
                child: const Text('Consultas'),
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
                    MaterialPageRoute(builder: (context) => const Cadmed()),
                  );

                },
                child: const Text('Médicos'),
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
                    MaterialPageRoute(builder: (context) => const menu()),
                  );

                },
                child: const Text('planos'),
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
        )
    );
  }
}
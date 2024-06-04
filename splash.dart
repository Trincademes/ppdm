import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: {
        '/login':(context) => MyApp(),
      },
    );
  }
}
class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/login');
    });
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash Screen'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/g.png'),
            fit:BoxFit.cover,
          ),
        ),
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),

    );
  }}




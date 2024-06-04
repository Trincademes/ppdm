import 'package:flutter/material.dart'; // Importando o pacote material, que contém os widgets do Flutter
import 'main.dart'; // Importando o arquivo Tela2.dart
import'package:ppdm/usuario.dart';
import 'package:firebase_auth/firebase_auth.dart';



void main() {
  runApp(const Cadastro());
}

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastrar'),
          backgroundColor: Color.fromRGBO(28, 48, 48, 100),
        ),
        body: CadastroBody(),
      ),
    );
  }

}

class CadastroBody extends StatelessWidget {
  TextEditingController _usernameController =
  TextEditingController(); //criando a variavel de acesso as TextField
  TextEditingController _passwordController =
  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Color.fromRGBO(28, 48, 48, 100), // Fundo azul
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'email',
              prefixIcon: Icon(Icons.person),
              filled: true,
              fillColor: Colors.white,
            ),
          ),

          SizedBox(height: 20.0),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Senha',
              prefixIcon: Icon(Icons.lock),
              filled: true,
              fillColor: Colors.white,
            ),
            obscureText: true,
          ),


          ElevatedButton(
            onPressed: () {
              Usuario user = new Usuario();
              user.login = _usernameController.text;
              user.senha = _passwordController.text;

              print("login"+ user.login);
              print("senha"+ user.senha);

            },
            child: const Text('Entrar'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent, // Cor de fundo do botão
              textStyle: TextStyle(fontSize: 18), // Estilo do texto
              padding: EdgeInsets.symmetric(
                  horizontal: 20, vertical: 20), // Espaçamento interno
              minimumSize: Size(100, 0), // Largura mínima do botão
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Borda arredondada
              ),
            ),
          ),

        ],

      ),
    );

  }
}

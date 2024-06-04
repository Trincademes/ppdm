import 'dart:html';

class Usuario{
  String? _nome;
  String? _login;
  String? _email;
  String? _senha;
  String? _recsenha;

  String  get nome => _nome!;
  set nome(String value){
    _nome =value;
  }

  String  get login => _login!;
  set login(String value){
    _login =value;
  }

  String  get email => _email!;
  set email(String value){
    _email =value;
  }

  String  get senha => _senha!;
  set senha(String value){
    _senha =value;
  }

  String  get recsenha => _recsenha!;
  set recsenha(String value){
    _recsenha =value;
  }


}
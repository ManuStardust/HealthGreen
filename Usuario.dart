import 'package:flutter/material.dart';

class Usuario {
  String? _nome;
  String? _login;
  String? _senha;
  String? _entrar;

  String get nome => _nome!;

  set nome(String value) {
    _nome = value;
  }

  String get login => _login!;

  set login(String value) {
    _login = value;
  }

  String get senha => _senha!;

  set senha(String value) {
    _senha = value;
  }

  String get entrar => _senha!;

  set entrar(String value) {
    _entrar = value;
  }
}

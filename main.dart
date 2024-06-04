import 'package:flutter/material.dart'; // Importando o pacote material, que contém os widgets do Flutter
import 'package:health_green/Cadastro.dart';
import 'package:health_green/Profissionais.dart';
import 'Login.dart';
import 'menu.dart';
import 'Cadastro.dart';
import 'Profissionais.dart';

void main() {
  // Função principal que inicializa o app Flutter
  runApp(const MyApp()); // Executa o widget MyApp e inicia o app
}

class MyApp extends StatelessWidget {
  // Classe MyApp que herda de StatelessWidget
  const MyApp({super.key}); // Construtor constante para MyApp

  @override
  Widget build(BuildContext context) {
    // Método build que retorna o widget principal do app
    return MaterialApp(
      // MaterialApp: Widget que define as configurações gerais do app
      debugShowCheckedModeBanner: false,
      // Desativa o banner de debug no canto superior direito
      title: 'Health Green',
      initialRoute: '/',
      routes: {
        '/': (context) => menu(),
        '/login': (context) => LoginScreen(),
        '/cadastro': (context) => Cadastro(),
        '/profissionais': (context) => ProfissionaisScreen(),
      },
    );
  }
}

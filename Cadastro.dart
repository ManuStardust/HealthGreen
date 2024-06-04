import 'package:flutter/material.dart';
import 'package:health_green/Usuario.dart'; // Importando o pacote material, que contém os widgets do Flutter

class Cadastro extends StatelessWidget {
  // Classe Tela1 que herda de StatelessWidget

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormCadastro(),
      ),
    );
  }
}

class FormCadastro extends StatelessWidget {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _loginController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  TextEditingController _entrarController = TextEditingController();

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.00),
      color: Colors.indigoAccent,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.00),
              child: TextField(
                controller: _nomeController,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  prefixIcon: Icon(Icons.login),
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.00),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.00),
              child: TextField(
                controller: _loginController,
                decoration: InputDecoration(
                  labelText: 'Login',
                  prefixIcon: Icon(Icons.password),
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.00),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.00),
              child: TextField(
                controller: _senhaController,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  prefixIcon: Icon(Icons.password),
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.00),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.00),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Confirmar senha',
                  prefixIcon: Icon(Icons.password_outlined),
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.00),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.00),
              child: TextField(
                controller: _entrarController,
                decoration: InputDecoration(
                  labelText: 'Entrar',
                  prefixIcon: Icon(Icons.login),
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Usuario user = new Usuario();
                user.nome = _nomeController.text;
                user.login = _loginController.text;
                user.senha = _senhaController.text;

                print("nome" + user.nome);
                print("login" + user.login);
                print("senha" + user.senha);
              },
              child: const Text('Entrar'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xF2C7DDC),
                  textStyle: const TextStyle(fontSize: 14),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  minimumSize: Size(180, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda tela da "Rota"'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Levar para tela de cadastro'),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cadastro()));
          },
        ),
      ),
    );
  }
}

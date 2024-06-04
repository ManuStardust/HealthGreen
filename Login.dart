import 'package:flutter/material.dart';
import 'Cadastro.dart';
import 'Profissionais.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: Color(0xff68e46c),
        ),
        body: LoginBody(),
      ),
    );
  }
}

class LoginBody extends StatelessWidget {
  TextEditingController _usernameController =
      TextEditingController(); //criando a variavel de acesso as TextField
  TextEditingController _passwordController =
      TextEditingController(); //criando a variavel de acesso as TextField
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.green, // Fundo azul
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'Login',
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
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // inserir a codificação para Verificar credenciais
              // se eu precisar acessar o oconteudo de uma textfield _usernameController.text
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Seja Bem-vindo')),
              );
            },
            child: const Text('Entrar'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen,
              // Cor de fundo do botão
              textStyle: TextStyle(fontSize: 18),
              // Estilo do texto
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              // Espaçamento interno
              minimumSize: Size(100, 0),
              // Largura mínima do botão
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

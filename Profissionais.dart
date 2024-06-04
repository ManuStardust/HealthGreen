import 'package:flutter/material.dart';
import 'package:health_green/med_info.dart';

class ProfissionaisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Médicos'),
          backgroundColor: Color(0xff68e46c),
        ),
        body: ProfissionaisScreen(),
      ),
    );
  }
}

class FormProfissionais extends StatelessWidget {
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
                  labelText: 'CPF',
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
                controller: _loginController,
                decoration: InputDecoration(
                  labelText: 'local',
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
                controller: _loginController,
                decoration: InputDecoration(
                  labelText: 'Especialidades',
                  prefixIcon: Icon(Icons.password),
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),ElevatedButton(
              onPressed: () {
                med_info user = new med_info();
                user.nome = _nomeController.text;
                user.cpf_medico = _loginController.text;
                user.local = _senhaController.text;
                user.especialidades = _especialidadesController.text

                print("nome" + user.nome);
                print("login" + user.cpf_medico);
                print("senha" + user.local);
                print("especialidades" + user.especialidades);
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
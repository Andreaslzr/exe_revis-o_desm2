import 'package:flutter/material.dart';

void main() {
  runApp(Telaprincipal());
}

class Telaprincipal extends StatelessWidget {
  const Telaprincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Campotexto() ,
    );
  }
}

class Campotexto extends StatefulWidget {
 Campotexto({super.key});
  @override
  State<Campotexto> createState() => CampotextoState();
}

class CampotextoState extends State<Campotexto> {

TextEditingController cnome = TextEditingController();
TextEditingController idade = TextEditingController();
TextEditingController endereco = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController telefone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Revisão"),
      ),
      body: Column(
       children: [
        TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(labelText: "Digite seu nome"),
        controller: cnome,
        ),
        TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: "Digite sua idade"),
        controller: idade,
        ),
        TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(labelText: "Digite seu endereço"),
        controller: endereco,
        ),
        TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(labelText: "Digite seu email"),
        controller: email,
        ),TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: "Digite seu telefone"),
        controller: telefone,
        ),
        
        ElevatedButton(onPressed: (){
           print(cnome.text);
           print(idade.text);
           print(endereco.text);
           print(email.text);
           print(telefone.text);
        }, child: Text("Enviar")),
       ], 
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(Tela());
}

class Tela extends StatelessWidget {
  const Tela({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Jogadores(),
    );
  }
}

class Jogadores extends StatefulWidget {
  const Jogadores({super.key});

  @override
  State<Jogadores> createState() => _JogadoresState();
}

class _JogadoresState extends State<Jogadores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jogadores de futebol"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(child: Text("Messi - 36 anos, gols: 821, ass: 362",style:TextStyle(fontSize: 20)),
          ),
           Center(child: Text("Cr7 - 39 anos, gols: 876, ass: 270",style:TextStyle(fontSize: 20)),
          ),
          Center(child: Text("Neymar - 32 anos, gols: 476, ass: 286",style:TextStyle(fontSize: 20)),
          ),
        ],
      ),
      
    );
  }
}
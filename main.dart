import 'package:flutter/material.dart';
import 'tela_geracoes.dart'; // Importe a TelaGeracoes
import 'generations.dart'; // Importe a classe Generation

void main() {
  runApp(PokemonApp());
}

class PokemonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokémon Generations',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

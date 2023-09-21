import 'package:flutter/material.dart';
import 'generation.dart';
import 'geracao.dart'; // Importe a classe GeracaoItem

class TelaGeracoes extends StatelessWidget {
  final List<Generation> generations;

  TelaGeracoes(this.generations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerações de Pokémon'),
      ),
      body: ListView.builder(
        itemCount: generations.length,
        itemBuilder: (context, index) {
          final generation = generations[index];
          return GeracaoItem(generation);
        },
      ),
    );
  }
}

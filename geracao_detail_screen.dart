import 'package:flutter/material.dart';
import 'generation.dart'; // Importe a classe Generation

class GeracaoDetailScreen extends StatelessWidget {
  final Generation generation;

  GeracaoDetailScreen(this.generation);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(generation.title),
      ),
      // Aqui você pode exibir detalhes da geração, como a lista de Pokémon
    );
  }
}

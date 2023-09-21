import 'package:flutter/material.dart';
import 'generation.dart';
import 'geracao_detail_screen.dart'; // Importe a classe Generation

class GeracaoItem extends StatelessWidget {
  final Generation generation;

  GeracaoItem(this.generation);

  void selecionarGeneration(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => GeracaoDetailScreen(generation),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selecionarGeneration(context),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              generation.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              height: 100, // Altura da lista de imagens
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: generation.pokemons.length,
                itemBuilder: (ctx, index) {
                  final pokemonImage = generation.pokemons[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      pokemonImage,
                      width: 80, // Largura da imagem do Pokémon
                      height: 80, // Altura da imagem do Pokémon
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              Colors.blue.withOpacity(0.5),
              Colors.blue,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}

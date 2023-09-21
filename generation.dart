import 'package:flutter/material.dart';

class Generation {
  final String title;
  final List<String> pokemons;

  Generation({
    required this.title,
    required this.pokemons,
  });

  factory Generation.fromJson(Map<String, dynamic> json) {
    final List<String> pokemonList = List<String>.from(json['pokemons']);
    return Generation(
      title: json['title'],
      pokemons: pokemonList,
    );
  }
}

import 'package:adopta/src/constants/image_strings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Categoria {
  final String title;
  final String image;

  Categoria({required this.title, required this.image});
}

final List<Categoria> categoria = [
  Categoria(title:"Perro", image:icondog),
  Categoria(title:"Gato", image:iconcat),
  Categoria(title:"Conejo", image:iconconejo),
  Categoria(title:"Aves", image:iconave),
  Categoria(title:"Otros", image:iconotros),
];
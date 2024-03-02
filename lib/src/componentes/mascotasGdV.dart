import 'package:adopta/src/constants/image_strings.dart';
import 'package:flutter/material.dart';

class MascotasGV extends StatefulWidget {
  const MascotasGV({super.key});

  @override
  State<MascotasGV> createState() => _mascotaGV();
}

class _mascotaGV extends State<MascotasGV> {
  
  final List<Map<String, dynamic>> gridMap = [

    {
      "title": "Gato",
      "nombre": "Mascotas",
      "images": tlogo,
    },

    {
      "title": "Perro",
      "nombre": "Mascotas",
      "images": tlogo,
    },

    {
      "title": "Gato",
      "nombre": "Mascotas",
      "images": tlogo,
    },

];
  
  
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: gridMap.length, 
      gridDelegate: 
      const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 14,
        ), 
      itemBuilder: (_mascotaGV,index){
        
        return Container(
          color: Colors.red,
        );
      }
      );
  }
}
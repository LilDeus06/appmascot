import 'package:adopta/src/componentes/description.dart';
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
      "catAnimal": "Gato",
      "nombre": "Carlos",
      "images": perrito,
      "descripcion": "Lorem ipsum dolor sit amet consectetur adipiscing, elit laoreet at sociosqu montes nascetur enim, facilisi ullamcorper placerat nisi cubilia. Consequat faucibus diam a varius integer penatibus, blandit vestibulum feugiat egestas.",
      "peso": "20",
      "edad": "2 años",
      "perfil": tlogo,
    },

    {
      "catAnimal": "Perro",
      "nombre": "Piero",
      "images": perrito,
      "descripcion": "Lorem ipsum dolor sit amet consectetur adipiscing, elit laoreet at sociosqu montes nascetur enim, facilisi ullamcorper placerat nisi cubilia. Consequat faucibus diam a varius integer penatibus, blandit vestibulum feugiat egestas.",
      "peso": "20",
      "edad": "2 años",
      "perfil": tlogo,
    },

    {
      "catAnimal": "Gato",
      "nombre": "Mauricio",
      "images": perrito,
      "descripcion": "Lorem ipsum dolor sit amet consectetur adipiscing, elit laoreet at sociosqu montes nascetur enim, facilisi ullamcorper placerat nisi cubilia. Consequat faucibus diam a varius integer penatibus, blandit vestibulum feugiat egestas.",
      "peso": "20",
      "edad": "2 años",
      "perfil": tlogo,
    },

    {
      "catAnimal": "Gato",
      "nombre": "Mauricio",
      "images": perrito,
      "descripcion": "Lorem ipsum dolor sit amet consectetur adipiscing, elit laoreet at sociosqu montes nascetur enim, facilisi ullamcorper placerat nisi cubilia. Consequat faucibus diam a varius integer penatibus, blandit vestibulum feugiat egestas.",
      "peso": "20",
      "edad": "2 años",
      "perfil": tlogo,
    },
    {
      "catAnimal": "Gato",
      "nombre": "Mauricio",
      "images": perrito,
      "descripcion": "Lorem ipsum dolor sit amet consectetur adipiscing, elit laoreet at sociosqu montes nascetur enim, facilisi ullamcorper placerat nisi cubilia. Consequat faucibus diam a varius integer penatibus, blandit vestibulum feugiat egestas.",
      "peso": "20",
      "edad": "2 años",
      "perfil": tlogo,
    },
    
    {
      "catAnimal": "Gato",
      "nombre": "Mauricio",
      "images": perrito,
      "descripcion": "Lorem ipsum dolor sit amet consectetur adipiscing, elit laoreet at sociosqu montes nascetur enim, facilisi ullamcorper placerat nisi cubilia. Consequat faucibus diam a varius integer penatibus, blandit vestibulum feugiat egestas.",
      "peso": "20",
      "edad": "2 años",
      "perfil": tlogo,
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
        mainAxisSpacing: 20,
        mainAxisExtent: 300,
        ), 
      itemBuilder: (_mascotaGV,index){
        
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyDescription(

                images: gridMap[index]["images"],
                catAnimal: gridMap[index]["catAnimal"],
                nombre: gridMap[index]["nombre"],
                descipcion: gridMap[index]["descripcion"],
                peso: gridMap[index]["peso"],
                edad: gridMap[index]["edad"],
                perfil: gridMap[index]["perfil"],
              )),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(108,91,228, 1),
              boxShadow: const [
                
                BoxShadow(blurRadius: 10, color:(Colors.transparent) , 
                blurStyle: BlurStyle.normal,
                )
                ]),
                
          
            child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      gridMap[index]["images"],
                      width: double.infinity,
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: Column(
                      children: [
                        Text(gridMap[index]["catAnimal"]),
                        Text(gridMap[index]["nombre"], 
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          ),
                        ),
                      ],
                    ),  

                  ),
                  
                ],
                

            ),
          ),
        );
      }
      );
  }
}
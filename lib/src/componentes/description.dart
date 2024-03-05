import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDescription extends StatefulWidget {
  final String images;
  final String nombre;
  final String catAnimal;
  final String descipcion;
  final String peso;
  final String edad;
  final String perfil;

  const MyDescription({super.key, required this.images, required this.catAnimal, required this.nombre, required this.descipcion, required this.peso, required this.edad, required this.perfil});

  @override
  State<MyDescription> createState() => _description();
}

class _description extends State<MyDescription> {
  @override
  Widget build(BuildContext context) {
    
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            // Foto de la mascota
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(widget.images),
                ),
              ),
            ),
            // Datos de la mascota
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                  child: Column(
                    children: [
                      // Nombre de la mascota
                      Container(
                        padding: EdgeInsets.all(17),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(108,91,228, 1),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [

                              //NOMBRE DE LA MASCOTA
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: isDarkMode ? Colors.grey[900] : Colors.grey[200],
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        widget.nombre,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    
                                      Text(
                                        widget.catAnimal,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              
                              const SizedBox(width: 15,),
                              // PESO DE LA MASCOTA
                              Expanded(
                                child: Container(
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                    color: isDarkMode ? Colors.grey[900] : Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "${widget.peso} KG",
                                        style: Theme.of(context).textTheme.subtitle1,
                                      ),
                                    
                                      const Text(
                                        "Peso",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                                
                              SizedBox(width: 15,),

                              // EDAD DE LA MASCOTA
                              Expanded(
                                child: Container(
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: isDarkMode ? Colors.grey[900] : Colors.grey[200],
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        widget.edad,
                                        style: Theme.of(context).textTheme.subtitle1,
                                      ),
                                    
                                      const Text(
                                        "Edad",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                                
                            ]),
                      ),
                        SizedBox(height: 10,),

                        
                        Container(
                          padding: EdgeInsets.all(17),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              const Text("Descripción", style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                ),
                                ),
                              
                              const SizedBox(height: 15,),
                              Text(
                              widget.descipcion,
                              style: const TextStyle(
                                fontSize: 20,),
                              textAlign: TextAlign.justify,
                                                    ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10,),
                    ],
                  ),
                
                ),
                
              ),
              Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(61,45,164,0.9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              ElevatedButton(
                              onPressed: () {
                                print("waa");
                                },
                              child: Text("CONTACTAME"),
                              )
                              

                            ],
                          ),
                        ), 
          ],
        ),
      ),
    );
  }
}
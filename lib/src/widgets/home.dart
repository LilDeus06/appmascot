import 'package:adopta/src/componentes/categoriasbar.dart';
import 'package:adopta/src/componentes/home_appbar.dart';
import 'package:adopta/src/componentes/home_slider.dart';
import 'package:adopta/src/componentes/mascotasGdV.dart';
import 'package:adopta/src/constants/colors.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => homePage ();
}

class homePage extends State<MyHomePage> {

  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //BOTON FLOTANTE PARA AÑADIR MASCOTA
        floatingActionButton: 
        const FloatingActionButton(
          onPressed: null,
          splashColor: tAccentColor,
          shape: CircleBorder(),
          backgroundColor: tPrimaryColor,
          tooltip: "Subir mascota",
          child: Icon(Icons.add, color: Colors.white,size: 40,),
        ),

        //LLAMANDO AL MENU DE NAVEGACIÓN POR BOTONES

        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(5), 
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //LLAMANDO AL APPBAR
                    const MyHomeAppbar(),
                
                    //SEPARACION HACIA ABAJO
                    const SizedBox(height: 5,),
                
                    //LLAMANDO AL SLIDER
                    MyHomeSlider(onChange: (value){
                      setState(() {
                        currentSlide=value;
                      });
                    }, currentSlide: currentSlide),
                    const SizedBox(height: 30,),
                    categoriasbar(),
                
                    const SizedBox(height: 15,),
                    // Container(
                    //   padding: const EdgeInsets.only(left: 15),
                    //   child: const Text("Mira a los angelitos", 
                    //   style: 
                    //       TextStyle
                    //       (fontSize: 24, 
                    //       fontWeight: FontWeight.bold),
                    //       ),
                    // ),
                    const SizedBox(height: 15,),
                    const Padding(
                      padding: EdgeInsets.all(15),
                        child: MascotasGV(),
                      )
                  ],
                ),
              ),
            ),  
        )
      
    );
  }

  
  
}
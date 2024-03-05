import 'package:adopta/src/constants/image_strings.dart';
import 'package:flutter/material.dart';

class MyHomeSlider extends StatelessWidget {
  
  
  final Function(int) onChange;
  final int currentSlide;
  
  const MyHomeSlider({
  super.key, 
  required this.onChange, 
  required this.currentSlide});

  @override
  Widget build(BuildContext context) {
    
    //LISTA DE IMAGENES PARA PONER
    List<String> imageList = [
    imagenslider1,
    imagenslider2,
    imagenslider3,
    imagenslider4];
      
    return Stack(
                    
                    children:<Widget> [
                      SizedBox(
                        height: 180,
                        width: double.infinity,
                        child: PageView.builder(
                          onPageChanged: onChange,
                          itemCount: 4,
                          itemBuilder: (context, index) {  
                            //LECTURA DE LAS IMAGENES
                            String imageUrl = imageList[index];
                            return Container(
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image:DecorationImage(
                                  fit: BoxFit.fill,
                                  //IMPRESION DE IMAGENES
                                  image: AssetImage(imageUrl),
                                  )
                              ),
                            );

                            
                          }    
                          ),
                      ),

                      //CONTADOR DE IMAGENES INFERIOR
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(4,
                              (index) => AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                width: currentSlide == index ? 15: 8,
                                height: 8,
                                margin: const EdgeInsets.only(right: 3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentSlide == index  ? Colors.black : Colors.transparent,
                                  border: Border.all(color: Colors.black),
                                ),
                                ),
                            ),
                          ),
                        ))

                    ],
                  );
  }
}


import 'package:adopta/src/componentes/categorias.dart';
import 'package:flutter/material.dart';

Center categoriasbar() {
    return Center(
                  child: SizedBox(
                    height: 90,
                    width: 400,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                  
                      itemBuilder: (context, index) {
                      return Column(
                        children: [ 
                          Container(
                            width: 60, 
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage(categoria[index].image))
                            ),
                            
                          ),

                          const SizedBox(height: 5,),

                          Text(
                            categoria[index].title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ]
                      );
                    }, 
                    separatorBuilder: (context, index) => 
                    const SizedBox(width: 40,), 
                    itemCount: categoria.length),
                  ),
                );
}
import 'package:adopta/src/componentes/search_mascot.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adopta/src/widgets/ViewUser.dart';

class ViewSearch extends StatelessWidget {
  const ViewSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    
      child: Scaffold(
        //botón de exploración, innesario, solo para pruebas.
    
        body: ListView(
            padding: const EdgeInsets.all(25),
            children: const [
              MessageBox(),
              SizedBox(height: 15),
              Center(
                child: Column(
                  children: [
                    MascotasBuscadas(),
                    MascotasBuscadas(),
                    MascotasBuscadas(),
                  ],
                ),
              )
            ],
          ),
        )
      );
  }
}


class MascotasBuscadas extends StatelessWidget {
  const MascotasBuscadas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(46, 27, 168, 0.5),
        boxShadow: const [
          BoxShadow(blurRadius: 10, color:(Colors.transparent) , 
          blurStyle: BlurStyle.normal,
          )
          ]),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow:CupertinoContextMenu.kEndBoxShadow,
                    image: DecorationImage(
                        image: NetworkImage("https://img.freepik.com/vector-gratis/personaje-dibujos-animados-perro-lindo_1308-135471.jpg?size=626&ext=jpg&ga=GA1.1.117944100.1709424000&semt=ais"),
                          fit: BoxFit.cover
                          ),
                  ),
                  
                ),
              ),

              const SizedBox(width: 25,),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Perro", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                      ),),  
                  Text("Firulais", 
                  style: TextStyle(
                    fontSize: 18,
                    ),
                    ),
                ],
              ),
            ],
          ),
        ],
      
      ),
    );
  }
}

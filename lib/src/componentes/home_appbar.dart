import 'package:adopta/src/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomeAppbar extends StatefulWidget {
  const MyHomeAppbar({super.key});

  @override
  State<MyHomeAppbar> createState() => _MyHomeAppbarState();
}

class _MyHomeAppbarState extends State<MyHomeAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 95,
          titleSpacing: 30,
          title: const Text('Bienvenid@, USUARIO', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: CupertinoIcons.iconFont),),
          actions: [  
            IconButton(
              onPressed: (){
                setState(() {
                  const Text("Notificaciones");               
                });
              }
              , 
              splashRadius: 14,
              icon: const Icon(Icons.notifications), 
              color: tPrimaryColor ,
              tooltip: "Notificaciones",
              splashColor: tPrimaryColor,
              disabledColor: tSecondatyColor,),

              IconButton(
              onPressed: (){
                setState(() {           
                });
              }
              , 
              splashRadius: 5,
              icon: const CircleAvatar(child: Icon(Icons.person)), 
              tooltip: "Perfil",
              color: tPrimaryColor,
              highlightColor: Colors.white,
              ),
            

          ],
        
        );
        
  }
}
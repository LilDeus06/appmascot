import 'package:adopta/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButtomNav extends StatelessWidget {

  void Function(int)? onTabChange;

  MyButtomNav({super.key, required this.onTabChange});

  
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: GNav(
        activeColor: tPrimaryColor,
        tabBackgroundColor: (const Color.fromARGB(255, 243, 242, 242)),
        tabBorderRadius: 100,
        onTabChange:(value) => onTabChange!(value), 
        tabs: const [
        GButton(
          icon: Icons.home,
          text: "Inicio",
          ),

        GButton(
          icon: Icons.search_rounded,
          text: "Buscar",
          ),

        GButton(
          icon: Icons.location_on_rounded,
          text: "Ubicación",
          ),

        GButton(
          icon: Icons.person_pin,
          text: "Perfil",
          ),
      ],),
      
    );
  }
}
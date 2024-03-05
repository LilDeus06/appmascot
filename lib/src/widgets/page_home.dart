import 'package:adopta/src/constants/colors.dart';
import 'package:adopta/src/widgets/ViewSearch.dart';
import 'package:adopta/src/widgets/ViewUser.dart';
import 'package:adopta/src/widgets/home.dart';
import 'package:adopta/src/widgets/ubications.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';



class HomeAPP extends StatefulWidget {
  const HomeAPP({super.key});

  @override
  State<HomeAPP> createState() => _HomeAPPState();
}

class _HomeAPPState extends State<HomeAPP> {

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    ViewSearch(),
    MyUbication(),
    ViewUser(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: 
        Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: GNav(
            activeColor: tPrimaryColor,
            tabBackgroundColor: (const Color.fromARGB(255, 243, 242, 242)),
            tabBorderRadius: 100, 
            duration: const Duration(milliseconds: 400),
            tabs:const [
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
          ],
          
          selectedIndex: _selectedIndex, 
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }
          )
        ),
      
    );
  }
}
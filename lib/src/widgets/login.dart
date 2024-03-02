// ignore_for_file: sort_child_properties_last
// import 'package:adopta/src/constants/image_strings.dart';
import 'package:adopta/src/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {

  int switcherIndex1 = 0;
  int switcherIndex2 = 0;
  int switcherIndex3 = 0;
  int switcherIndex4 = 0;
  int switcherIndex5 = 0;
  int switcherIndex6 = 0;
  int switcherIndex7 = 0;


  @override
  Widget build(BuildContext context) {

      return Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: 
                LinearGradient(colors: [ 
                Color.fromRGBO(61,45,164,1),
                Color.fromRGBO(27, 18, 82, 1)
                ])
              ),
              child: Padding(

                padding: const EdgeInsets.only(top: 150),
                child: Column(
                  children: [
                    

                    const Text("¡No compres, Adopta!", style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,

                    ),),
                    
                    Container(
                      height: 100,
                      padding: const EdgeInsets.all(20),
                      margin: EdgeInsets.symmetric(horizontal: 120),
                      child:const GNav(
                      gap: 5,
                      iconSize: 30,
                      padding: EdgeInsets.all(4),
                      mainAxisAlignment: MainAxisAlignment.center,
                      activeColor: tPrimaryColor,
                      tabBackgroundColor: (const Color.fromARGB(255, 243, 242, 242)),
                      tabBorderRadius: 100, 
                      duration: Duration(milliseconds: 400),
                      tabs:[
                      GButton(
                        
                        icon: Icons.login,
                        text: "Iniciar Sesion",
                        ),
                  
                      GButton(
                        icon: Icons.search_rounded,
                        text: "Registrarse",
                        ),
                      ])
                    ),

                    
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }}
            
// SlideSwitcher(
                  
//                   children: [
//                     Text(
//                       'Iniciar Sesion',
//                       style: TextStyle(fontSize: 18, decoration: TextDecoration.none, fontFamily: GoogleFonts.montserrat.toString(),
//                         fontWeight:
//                             switcherIndex2 == 0 ? FontWeight.w500 : FontWeight.w400,
//                         color:
//                             switcherIndex2 == 0 ? const Color.fromARGB(255, 255, 255, 255) : Colors.white38,
                  
//                       ),
//                     ),
//                     Text(
//                       'Registrarse',
//                       style: TextStyle(fontSize:16, decoration: TextDecoration.none, fontFamily: GoogleFonts.montserrat.toString(),
//                         fontWeight:
//                             switcherIndex2 == 1 ? FontWeight.w500 : FontWeight.w400,
//                         color:
//                             switcherIndex2 == 1 ? const Color.fromARGB(255, 255, 255, 255) : Colors.white38,
//                       ),
//                     ),
//                   ],
//                   containerColor: const Color.fromRGBO(61,45,164,1),
//                   slidersColors: const [Color.fromRGBO(108, 91, 228,1)],
//                   onSelect: (int index) => setState(() => switcherIndex2 = index),
//                   containerHeight: 50,
//                   containerWight: 260,
//                   ),



      // ],);
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   themeMode: ThemeMode.system,
    //   home: Scaffold(
    //     backgroundColor:Theme.of(context).colorScheme.background,
        
    //     body: Center(
          
    //       child: Container( 
    //         width: 400,
    //         height: 400,
    //         decoration: BoxDecoration(
    //           color: Colors.grey,
    //           border: Border.all(width: 2,),
    //           borderRadius: BorderRadius.vertical(top: Radius.circular(50),bottom: Radius.circular(10)),
    //         ),
    //         child: Column(
    //           children: [
    //             /// const Padding(padding: EdgeInsets.symmetric(horizontal: 100, vertical: 170)),
    //             const Text('Bienvenido', style: TextStyle(fontSize: 30),),
    //             ElevatedButton(
    //                 child: const Text('VOLVER'),
    //                 onPressed: () {
    //                   Navigator.push(
    //                     context,
    //                     MaterialPageRoute(builder: (context) => Adaptable()),
    //                   );
    //                 },
    //               ),
    //               const  SizedBox(height: 15,),
    //               Container(
    //                 width: 300,
    //                 child: TextFormField(
    //                   keyboardType: TextInputType.name,
    //                   decoration: const InputDecoration(
    //                     labelText: 'Nombre',
    //                     border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
    //                     prefixIcon: Icon(Icons.person_rounded),
    //                     contentPadding: EdgeInsets.all(10)
    //                   ),
    //                 ),
    //               ),
    //               const  SizedBox(height: 15,),
    //               Container( 
    //                 width: 300,
    //                 child: TextFormField(
    //                   keyboardType: TextInputType.text,
    //                   decoration: const InputDecoration(
    //                     labelText: 'Apellidos',
    //                     border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
    //                     prefixIcon: Icon(Icons.person_rounded),
    //                     contentPadding: EdgeInsets.all(10)
    //                   ),
    //                 ),
    //               ),
    //             const Row(children: [
    //               Padding(padding: EdgeInsets.symmetric(horizontal: 65, vertical: 10)),
    //               ElevatedButton(onPressed: null, child: Text('Ingresar'),),
    //               SizedBox(width: 20,),
    //               ElevatedButton(onPressed: null, child: Text('Ingresar'),),
    //             ],)
    //           ],
    //         ),
    //       ),
    //     ),
        
    //   )
    // );
    
  // }}
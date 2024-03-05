import 'package:adopta/src/constants/image_strings.dart';
import 'package:adopta/src/widgets/home.dart';
import 'package:adopta/src/widgets/login.dart';
import 'package:adopta/src/widgets/page_home.dart';
import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  @override

  Widget build(BuildContext context) {


    return Stack(children: [

      Container(
          color: const  Color.fromRGBO(61,45,164,1),
          width: double.infinity,
          height: double.infinity,
        ),

      Positioned(
          top: -60,
          left: -100,
          child: Container(
            height: 300,
            child: const Image(image: AssetImage(tSpash1), height: 250,),            
          ),
        ),
        Positioned(
          top: -80,
          right: -100,
          child: Container(
            height: 350,
            child: const Image(image: AssetImage(tSpash2), height: 250,),            
          ),
        ),

        Positioned(
          top: 800,
          right: -130,
          child: Container(
            height: 350,
            child: const Image(image: AssetImage(tSpash3), height: 250,),            
          ),
        ),

        Positioned(
          top: 800,
          right: 270,
          child: Container(
            height: 350,
            child: const Image(image: AssetImage(tSpash4), height: 250,),            
          ),
        ),

      Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: 900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(image: AssetImage(logoWelcome) ,height: 250,),
            const SizedBox(height: 0,),
            const Text(
              "AdoptifyPets",
              style: 
              TextStyle(
                fontSize: 40,
                color: Colors.white,
                decoration:TextDecoration.none
                ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            const Text(
              "Adopte su mascota ideal de forma fácil y sencilla con su dispositivo.",
              style: TextStyle(
                fontFamily: 'hint',
                fontSize: 20,
                color: Colors.white,
                decoration:TextDecoration.none
                ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeAPP()),
                );
              },
              child: const Text('ACCEDER', style: TextStyle(
                                fontWeight: FontWeight.bold,),)
            ),
              
          ],
        ),
      ),
    
    ]);
  }
}

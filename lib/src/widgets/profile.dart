
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _profile();
}

class _profile extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        const Text("Mi Perfil", 
          style: 
            TextStyle(
              fontSize: 30, 
              fontWeight: FontWeight.bold), 
              
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 80,

      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/bunny.png'),
                    ),
              )
            ),

            
            
          ],
        ),
      ),
    );
  }
}
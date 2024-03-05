import 'package:flutter/material.dart';
import 'package:adopta/src/widgets/ViewSearch.dart';


class ViewUser extends StatelessWidget {
  const ViewUser({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold( 
        //boton de exploración, no es necesario, borrar si se considera.
        appBar: AppBar(
          toolbarHeight: 80,
          title: const Text('Mi perfil', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold), ),
          automaticallyImplyLeading: false,
          centerTitle: true,
          ),
      body: ListView(
        padding: const EdgeInsets.only(left: 10,right: 10),
        children:  const <Widget> [
          Center(
            child: Icono(),
          ),
          Text('Usuario',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center),
          Text('usuario@gmail.com',
            style: TextStyle(
              fontFamily: 'Times New Roman',
              fontSize: 14,
              fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,),
          SizedBox(height: 25,),
          Text('Tus mascotas:',
            style: TextStyle(
              fontFamily: 'Mulish',
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 20,),
            ColumnaMascota(),
            ColumnaMascota(),
            
        ],
        
        )
      ),
      );
  }
  
}

class ColumnaMascota extends StatelessWidget {
  const ColumnaMascota({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MascotasRegistradas(),
          MascotasRegistradas(),
          ],
        ),
        ],
      ),
    );
  }
}

class MascotasRegistradas extends StatelessWidget {
  const MascotasRegistradas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:const  Color.fromRGBO(46, 27, 168, 0.5),
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
              Container(
                height: 80,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage("https://img.freepik.com/vector-gratis/personaje-dibujos-animados-perro-lindo_1308-135471.jpg?size=626&ext=jpg&ga=GA1.1.117944100.1709424000&semt=ais"),
                        fit: BoxFit.cover
                        ),
                ),
                
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Perro", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Times New Roman',
                          fontSize: 15,
                      ),),  
                  Text("Firulais", 
                  style: TextStyle(
                    fontSize: 10,
                    ),
                    ),
                ],
              ),
            IconButton(onPressed: (){
              
          }, 
          icon: const Icon(Icons.delete)),
            ],
          ),
        ],
      
      ),
    );
  }
}


//ESTO ES LA FOTO DE PERFIL

class Icono extends StatelessWidget {
  const Icono({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //tamaño y forma del container
      width: 120,
      height: 120,
      margin: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black,
          width: 6.0
        ),
        //imagen icono
        image: const DecorationImage(
          image: NetworkImage('https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png'),
          fit: BoxFit.cover
        ), 
      ),
      child: Container(
        //icono de huella
        margin: const EdgeInsets.only(top: 85,left: 40,right: 40),
        color: Colors.black,
        child: const Icon(
              Icons.pets,
              color: Colors.white,
              ),
              
      ),
      );
  }
}


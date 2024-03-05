import 'dart:async';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';




class MyUbication extends StatefulWidget {
  const MyUbication({super.key});

void main() async {
  // Solicitar permiso de ubicación
  var status = await Permission.location.request();
  
  if (status.isGranted) {
    // Permiso de ubicación concedido, puedes acceder a la ubicación del dispositivo.
    // ... Código adicional ...
  } else if (status.isDenied) {
    // Permiso de ubicación denegado, muestra un mensaje o realiza alguna acción alternativa.
  } else if (status.isPermanentlyDenied) {
    // El usuario ha denegado permanentemente el permiso de ubicación, generalmente se le debe solicitar al usuario que lo active manualmente en la configuración del dispositivo.
  }

}

  @override
  State<MyUbication> createState() => _ubication();
}

class _ubication extends State<MyUbication> {

final Completer<GoogleMapController>_controller = Completer();

static const LatLng sourceLocation = LatLng(-14.063666162045962, -75.7278575862504);
static const LatLng destination = LatLng(-14.070227677127328, -75.72564744973064);

  @override
  Widget build(BuildContext context)  {
      return const Scaffold(
        
        body :GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: 
          CameraPosition(
            target: sourceLocation,
            zoom: 15,

            ),
          ),
        
      );   
  }
}


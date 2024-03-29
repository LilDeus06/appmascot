// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD9Sv68JGULLnkq6muE9RCBdDNFFNBtheU',
    appId: '1:101229863953:web:3abecc8e04f218cc913db0',
    messagingSenderId: '101229863953',
    projectId: 'bdmascota-14318',
    authDomain: 'bdmascota-14318.firebaseapp.com',
    storageBucket: 'bdmascota-14318.appspot.com',
    measurementId: 'G-TR77PR3F7F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDJ3bIJK6CMWmix4NRvuT3WBXbAaOt2XXE',
    appId: '1:101229863953:android:51dcd995aa91bee1913db0',
    messagingSenderId: '101229863953',
    projectId: 'bdmascota-14318',
    storageBucket: 'bdmascota-14318.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD6AYbWt46V9oTlHdlaFP1BaTGpfgbD75I',
    appId: '1:101229863953:ios:9fa33c71273a5f4e913db0',
    messagingSenderId: '101229863953',
    projectId: 'bdmascota-14318',
    storageBucket: 'bdmascota-14318.appspot.com',
    iosBundleId: 'com.example.adopta',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD6AYbWt46V9oTlHdlaFP1BaTGpfgbD75I',
    appId: '1:101229863953:ios:53e520620c37a329913db0',
    messagingSenderId: '101229863953',
    projectId: 'bdmascota-14318',
    storageBucket: 'bdmascota-14318.appspot.com',
    iosBundleId: 'com.example.adopta.RunnerTests',
  );
}
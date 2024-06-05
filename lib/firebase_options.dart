// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCCsBy5IEjS5SSd4jjnzil6-WAwYCo9NcE',
    appId: '1:590092604381:web:1103c855816bd07a8a1c34',
    messagingSenderId: '590092604381',
    projectId: 'pizzaapplication-49472',
    authDomain: 'pizzaapplication-49472.firebaseapp.com',
    storageBucket: 'pizzaapplication-49472.appspot.com',
    measurementId: 'G-NGG9LTX51S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB6eS5FbBZCql5fFx7qmbunJ3K8s3HUjNU',
    appId: '1:590092604381:android:8a146318de68ae848a1c34',
    messagingSenderId: '590092604381',
    projectId: 'pizzaapplication-49472',
    storageBucket: 'pizzaapplication-49472.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBh6YVkHpVTdPwRXF0MnNbWso2MeI3_25s',
    appId: '1:590092604381:ios:7bacb8d57b6a580e8a1c34',
    messagingSenderId: '590092604381',
    projectId: 'pizzaapplication-49472',
    storageBucket: 'pizzaapplication-49472.appspot.com',
    iosBundleId: 'com.example.pizzaApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBh6YVkHpVTdPwRXF0MnNbWso2MeI3_25s',
    appId: '1:590092604381:ios:7bacb8d57b6a580e8a1c34',
    messagingSenderId: '590092604381',
    projectId: 'pizzaapplication-49472',
    storageBucket: 'pizzaapplication-49472.appspot.com',
    iosBundleId: 'com.example.pizzaApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCCsBy5IEjS5SSd4jjnzil6-WAwYCo9NcE',
    appId: '1:590092604381:web:c288a1b4e83e59c38a1c34',
    messagingSenderId: '590092604381',
    projectId: 'pizzaapplication-49472',
    authDomain: 'pizzaapplication-49472.firebaseapp.com',
    storageBucket: 'pizzaapplication-49472.appspot.com',
    measurementId: 'G-96RPE3HBF4',
  );

}
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
    apiKey: 'AIzaSyAV3AUyVZgSoUezxk5e8jg3qL6WOPT0qm8',
    appId: '1:549270975060:web:8f4d59bd75c137bba4b3c1',
    messagingSenderId: '549270975060',
    projectId: 'apptodoflutter',
    authDomain: 'apptodoflutter.firebaseapp.com',
    storageBucket: 'apptodoflutter.firebasestorage.app',
    measurementId: 'G-M80R8S5TCV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDY6fb9vQPyxtD__Y-dgr71oUouur_-5Xs',
    appId: '1:549270975060:android:f14085c7de3e8e98a4b3c1',
    messagingSenderId: '549270975060',
    projectId: 'apptodoflutter',
    storageBucket: 'apptodoflutter.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBpnwM2__HL6pjE6sWBiUpNzjGeHxeZenU',
    appId: '1:549270975060:ios:3a52692b69f6a7b4a4b3c1',
    messagingSenderId: '549270975060',
    projectId: 'apptodoflutter',
    storageBucket: 'apptodoflutter.firebasestorage.app',
    iosBundleId: 'com.example.appprogdispmoveis',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBpnwM2__HL6pjE6sWBiUpNzjGeHxeZenU',
    appId: '1:549270975060:ios:3a52692b69f6a7b4a4b3c1',
    messagingSenderId: '549270975060',
    projectId: 'apptodoflutter',
    storageBucket: 'apptodoflutter.firebasestorage.app',
    iosBundleId: 'com.example.appprogdispmoveis',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAV3AUyVZgSoUezxk5e8jg3qL6WOPT0qm8',
    appId: '1:549270975060:web:054454e086e83fe0a4b3c1',
    messagingSenderId: '549270975060',
    projectId: 'apptodoflutter',
    authDomain: 'apptodoflutter.firebaseapp.com',
    storageBucket: 'apptodoflutter.firebasestorage.app',
    measurementId: 'G-B6Z63ECHJP',
  );
}

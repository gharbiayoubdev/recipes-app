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
    apiKey: 'AIzaSyDZ8gqqKgSAsSjLw0SuiznWAO8xzOuoo5A',
    appId: '1:443773786639:web:8d21ed0339924ae675617a',
    messagingSenderId: '443773786639',
    projectId: 'foods-d1c95',
    authDomain: 'foods-d1c95.firebaseapp.com',
    storageBucket: 'foods-d1c95.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAQpz1oPT9pa5ctwbFVGKxdKms2wymhLtU',
    appId: '1:443773786639:android:a3aaecdf0353665e75617a',
    messagingSenderId: '443773786639',
    projectId: 'foods-d1c95',
    storageBucket: 'foods-d1c95.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyALkGHLDbzasKrU3feMhJ3VBndv4lHVN0A',
    appId: '1:443773786639:ios:8461f51e0a41199c75617a',
    messagingSenderId: '443773786639',
    projectId: 'foods-d1c95',
    storageBucket: 'foods-d1c95.appspot.com',
    iosClientId: '443773786639-qa2ssjmcdtu54132du66ui5kn8cnlkna.apps.googleusercontent.com',
    iosBundleId: 'com.example.foods',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyALkGHLDbzasKrU3feMhJ3VBndv4lHVN0A',
    appId: '1:443773786639:ios:8461f51e0a41199c75617a',
    messagingSenderId: '443773786639',
    projectId: 'foods-d1c95',
    storageBucket: 'foods-d1c95.appspot.com',
    iosClientId: '443773786639-qa2ssjmcdtu54132du66ui5kn8cnlkna.apps.googleusercontent.com',
    iosBundleId: 'com.example.foods',
  );
}
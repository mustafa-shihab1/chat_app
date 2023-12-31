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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCWZZWMgBsX3_EVeBPtVSEgvXqri4mWpD0',
    appId: '1:131974225173:web:2bb2704744f7131fe15d1c',
    messagingSenderId: '131974225173',
    projectId: 'chat-app-a5482',
    authDomain: 'chat-app-a5482.firebaseapp.com',
    storageBucket: 'chat-app-a5482.appspot.com',
    measurementId: 'G-JC452BPLHV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA6PfN85JRAET8uPISh1-VcOOy3B5OATWc',
    appId: '1:131974225173:android:62da4032a16cf19be15d1c',
    messagingSenderId: '131974225173',
    projectId: 'chat-app-a5482',
    storageBucket: 'chat-app-a5482.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCkTLYxnrJBV5OhPl9vnLEj9bE7eFmfJjU',
    appId: '1:131974225173:ios:cc4f92d0c87c4080e15d1c',
    messagingSenderId: '131974225173',
    projectId: 'chat-app-a5482',
    storageBucket: 'chat-app-a5482.appspot.com',
    iosClientId: '131974225173-an9qekil2heburijfbkjuvido8ugooqk.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}

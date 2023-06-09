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
    apiKey: 'AIzaSyBeSFpHyuimvLvH5Yqv5EWFiuM7ym84sko',
    appId: '1:512830578439:web:99667b86d839bff32cafa2',
    messagingSenderId: '512830578439',
    projectId: 'eccomerce-app-d777a',
    authDomain: 'eccomerce-app-d777a.firebaseapp.com',
    storageBucket: 'eccomerce-app-d777a.appspot.com',
    measurementId: 'G-RZ0TMBPZ0V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBo5tdjXnANecvA2kLJySgMsgAROAEiGPw',
    appId: '1:512830578439:android:cdc5a7860d702af22cafa2',
    messagingSenderId: '512830578439',
    projectId: 'eccomerce-app-d777a',
    storageBucket: 'eccomerce-app-d777a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQCuHqKRVsMj9_d1i7vNEcSamxjPgTw0w',
    appId: '1:512830578439:ios:7c1d0a4fc517596c2cafa2',
    messagingSenderId: '512830578439',
    projectId: 'eccomerce-app-d777a',
    storageBucket: 'eccomerce-app-d777a.appspot.com',
    iosClientId: '512830578439-ka04vodf3ni141p3kacric4ou99ratda.apps.googleusercontent.com',
    iosBundleId: 'com.example.furnitureApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAQCuHqKRVsMj9_d1i7vNEcSamxjPgTw0w',
    appId: '1:512830578439:ios:7c1d0a4fc517596c2cafa2',
    messagingSenderId: '512830578439',
    projectId: 'eccomerce-app-d777a',
    storageBucket: 'eccomerce-app-d777a.appspot.com',
    iosClientId: '512830578439-ka04vodf3ni141p3kacric4ou99ratda.apps.googleusercontent.com',
    iosBundleId: 'com.example.furnitureApp',
  );
}

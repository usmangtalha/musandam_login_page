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
    apiKey: 'AIzaSyD3FxcUVsei9kgTRQcPVabaU5Ni7p5PojQ',
    appId: '1:489550133772:web:4ea89842ff16fcf3494c29',
    messagingSenderId: '489550133772',
    projectId: 'musandam-login-authentication',
    authDomain: 'musandam-login-authentication.firebaseapp.com',
    storageBucket: 'musandam-login-authentication.firebasestorage.app',
    measurementId: 'G-95JBR50HR9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD7L5CbCTJKgmeMwQYTJiJMcAsWsd1Za2o',
    appId: '1:489550133772:android:2e11e54263e5e7da494c29',
    messagingSenderId: '489550133772',
    projectId: 'musandam-login-authentication',
    storageBucket: 'musandam-login-authentication.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB2Z55PvobzfeYoPV2lJ9P9GwCIBamQieo',
    appId: '1:489550133772:ios:8f7004661d3c6106494c29',
    messagingSenderId: '489550133772',
    projectId: 'musandam-login-authentication',
    storageBucket: 'musandam-login-authentication.firebasestorage.app',
    androidClientId: '489550133772-4bhov8hl52iboid2jfldbdpcrjt08n21.apps.googleusercontent.com',
    iosClientId: '489550133772-ndnipjk8rnljcpgobe5d9dk2vc2f81lp.apps.googleusercontent.com',
    iosBundleId: 'com.example.musandam1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB2Z55PvobzfeYoPV2lJ9P9GwCIBamQieo',
    appId: '1:489550133772:ios:8f7004661d3c6106494c29',
    messagingSenderId: '489550133772',
    projectId: 'musandam-login-authentication',
    storageBucket: 'musandam-login-authentication.firebasestorage.app',
    androidClientId: '489550133772-4bhov8hl52iboid2jfldbdpcrjt08n21.apps.googleusercontent.com',
    iosClientId: '489550133772-ndnipjk8rnljcpgobe5d9dk2vc2f81lp.apps.googleusercontent.com',
    iosBundleId: 'com.example.musandam1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD3FxcUVsei9kgTRQcPVabaU5Ni7p5PojQ',
    appId: '1:489550133772:web:9ff0948fa619adab494c29',
    messagingSenderId: '489550133772',
    projectId: 'musandam-login-authentication',
    authDomain: 'musandam-login-authentication.firebaseapp.com',
    storageBucket: 'musandam-login-authentication.firebasestorage.app',
    measurementId: 'G-2JP9PBRE67',
  );

}
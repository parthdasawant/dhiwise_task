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
    apiKey: 'AIzaSyANvq9NH9OM9PhLpS5SYKSGTqMGJiPJdeQ',
    appId: '1:565498080858:web:a569ca845407101be63263',
    messagingSenderId: '565498080858',
    projectId: 'dhiwise-task-b9e9b',
    authDomain: 'dhiwise-task-b9e9b.firebaseapp.com',
    storageBucket: 'dhiwise-task-b9e9b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyApIP1cV1jofiaGPtGdTDwgKh_bzoGPKKw',
    appId: '1:565498080858:android:9a461b5ddb823ad9e63263',
    messagingSenderId: '565498080858',
    projectId: 'dhiwise-task-b9e9b',
    storageBucket: 'dhiwise-task-b9e9b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAxoFI6w2NycCJQC89TKrlE_hFS2OC1Y9A',
    appId: '1:565498080858:ios:8000184fa71fc5dbe63263',
    messagingSenderId: '565498080858',
    projectId: 'dhiwise-task-b9e9b',
    storageBucket: 'dhiwise-task-b9e9b.appspot.com',
    iosBundleId: 'com.parthdasawant.task.dhiwiseTask',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAxoFI6w2NycCJQC89TKrlE_hFS2OC1Y9A',
    appId: '1:565498080858:ios:0746d44118ad6a4ee63263',
    messagingSenderId: '565498080858',
    projectId: 'dhiwise-task-b9e9b',
    storageBucket: 'dhiwise-task-b9e9b.appspot.com',
    iosBundleId: 'com.parthdasawant.task.dhiwiseTask.RunnerTests',
  );
}

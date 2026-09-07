// lib/firebase_options.dart
// هذا الملف يُنشأ تلقائياً بواسطة flutterfire CLI، لكن يمكن كتابته يدوياً

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show TargetPlatform, kIsWeb;

/// تكوينات Firebase لكل منصة
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
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  // ═══════════════════════════════════════════════════════════════════
  // 🔵 WEB - الإعدادات الخاصة بـ Web
  // ═══════════════════════════════════════════════════════════════════
  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyExampleWebApiKey',
    appId: '1:123456789:web:abcdef123456',
    messagingSenderId: '123456789',
    projectId: 'nomai-app',
    authDomain: 'nomai-app.firebaseapp.com',
    storageBucket: 'nomai-app.appspot.com',
    measurementId: 'G-ABCDEFGH',
  );

  // ═══════════════════════════════════════════════════════════════════
  // 📱 ANDROID - الإعدادات الخاصة بـ Android
  // ═══════════════════════════════════════════════════════════════════
  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyExampleAndroidApiKey',
    appId: '1:123456789:android:abcdef123456',
    messagingSenderId: '123456789',
    projectId: 'nomai-app',
    storageBucket: 'nomai-app.appspot.com',
  );

  // ═══════════════════════════════════════════════════════════════════
  // 🍏 iOS - الإعدادات الخاصة بـ iOS
  // ═══════════════════════════════════════════════════════════════════
  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyExampleIosApiKey',
    appId: '1:123456789:ios:abcdef123456',
    messagingSenderId: '123456789',
    projectId: 'nomai-app',
    storageBucket: 'nomai-app.appspot.com',
    iosClientId: '123456789-abcdef.apps.googleusercontent.com',
    iosBundleId: 'com.example.nomai',
  );

  // ═══════════════════════════════════════════════════════════════════
  // 💻 macOS - الإعدادات الخاصة بـ macOS
  // ═══════════════════════════════════════════════════════════════════
  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyExampleMacApiKey',
    appId: '1:123456789:macos:abcdef123456',
    messagingSenderId: '123456789',
    projectId: 'nomai-app',
    storageBucket: 'nomai-app.appspot.com',
    iosClientId: '123456789-abcdef.apps.googleusercontent.com',
    iosBundleId: 'com.example.nomai.macos',
  );

  // ═══════════════════════════════════════════════════════════════════
  // 🪟 Windows - الإعدادات الخاصة بـ Windows
  // ═══════════════════════════════════════════════════════════════════
  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyExampleWindowsApiKey',
    appId: '1:123456789:web:abcdef123456',
    messagingSenderId: '123456789',
    projectId: 'nomai-app',
    authDomain: 'nomai-app.firebaseapp.com',
    storageBucket: 'nomai-app.appspot.com',
  );

  // ═══════════════════════════════════════════════════════════════════
  // 🐧 Linux - الإعدادات الخاصة بـ Linux
  // ═══════════════════════════════════════════════════════════════════
  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'AIzaSyExampleLinuxApiKey',
    appId: '1:123456789:web:abcdef123456',
    messagingSenderId: '123456789',
    projectId: 'nomai-app',
    authDomain: 'nomai-app.firebaseapp.com',
    storageBucket: 'nomai-app.appspot.com',
  );
}

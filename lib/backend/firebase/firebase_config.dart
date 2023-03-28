import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCgsYpx6xdf6lVM-ygrPdERXnxyy6Ea-Jk",
            authDomain: "digital-healthcheck-results.firebaseapp.com",
            projectId: "digital-healthcheck-results",
            storageBucket: "digital-healthcheck-results.appspot.com",
            messagingSenderId: "834275123806",
            appId: "1:834275123806:web:d10481c9849e13ec7e4acf"));
  } else {
    await Firebase.initializeApp();
  }
}

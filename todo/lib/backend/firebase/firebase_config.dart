import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCv44uPyTiAaqoxzrHgA24Tmt1zy1DP1WI",
            authDomain: "todo-scxvrd.firebaseapp.com",
            projectId: "todo-scxvrd",
            storageBucket: "todo-scxvrd.appspot.com",
            messagingSenderId: "57828322430",
            appId: "1:57828322430:web:007af8a09ce9686c083c2f"));
  } else {
    await Firebase.initializeApp();
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBXMvxoRA1-5jnuU76tDKvg-jm8wBhEjh0",
            authDomain: "hostel-d7218.firebaseapp.com",
            projectId: "hostel-d7218",
            storageBucket: "hostel-d7218.appspot.com",
            messagingSenderId: "939597793930",
            appId: "1:939597793930:web:431c4d1f75d0cf2335fb73",
            measurementId: "G-P2058Y3XJ0"));
  } else {
    await Firebase.initializeApp();
  }
}

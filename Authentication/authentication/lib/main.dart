import 'package:authentication/otp.dart';
import 'package:authentication/phone.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDybKMlkaXV6rfDr3hXq76Msrw3H3anGLU",
          appId: "1:188087007663:android:e63d3f6a4500902f1bd75a",
          messagingSenderId: "188087007663",
          projectId: "otpauthentication-a3b4c"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'phone',
      routes: {
        'phone': (context) => const MyPhone(),
        'otp': (context) => const MyOtp()
      },
    );
  }
}

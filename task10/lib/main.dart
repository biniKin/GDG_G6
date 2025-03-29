import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:task10/firebase_options.dart';
import 'package:task10/presentation/Sign-in/sign_in.dart';
import 'package:task10/presentation/sign-up/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SignUpPage(),
    );
  }
}

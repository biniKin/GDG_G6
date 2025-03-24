import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task08/presentation/SigninPage/sign_in_page.dart';
import 'package:task08/presentation/bloc/togle_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TogleBloc(),
      child: MaterialApp(
        home: SignInPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

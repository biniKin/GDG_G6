import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task08/presentation/bloc/togle_bloc.dart';
import 'package:task08/presentation/bloc/togle_event.dart';
import 'package:task08/presentation/bloc/togle_state.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _HomeState();
}

class _HomeState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome",
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome Back!👋 \nSign in to continue your journey with us.",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              BlocBuilder<TogleBloc, TogleState>(
                builder: (context, state) {
                  return TextField(
                    onChanged: (value) {
                      context
                          .read<TogleBloc>()
                          .add(ShowEmailEvent(email: value));
                    },
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              BlocBuilder<TogleBloc, TogleState>(
                builder: (context, state) {
                  return TextField(
                    onChanged: (value) {
                      context
                          .read<TogleBloc>()
                          .add(ShowPasswordEvent(password: value));
                    },
                    obscureText: !state.isOn,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          context.read<TogleBloc>().add(TogleVisibilityEvent());
                        },
                        icon: state.isOn
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                      hintText: "Enter your password",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forget password",
                ),
              ),
              //display
              Column(
                children: [
                  //email
                  BlocBuilder<TogleBloc, TogleState>(
                    builder: (context, state) {
                      return Text("Email: ${state.email}");
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //password
                  BlocBuilder<TogleBloc, TogleState>(
                    builder: (context, state) {
                      return Text("password: ${state.password}");
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.deepPurpleAccent,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

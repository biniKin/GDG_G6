import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task10/auth_service.dart';
import 'package:task10/presentation/home/homePage.dart';
import 'package:task10/presentation/sign-up/sign_up.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _HomeState();
}

class _HomeState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService auth = AuthService();
  bool isObscure = true;

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
              TextField(
                controller: emailController,
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
              TextField(
                controller: passwordController,
                obscureText: isObscure,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: isObscure
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
                  onPressed: () async {
                    await auth.login(
                      emailController.text.trim(),
                      passwordController.text.trim(),
                    );
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "OR",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://i.pinimg.com/736x/89/73/d4/8973d4473f428cb78cca39f82c15af3e.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://i.pinimg.com/736x/4a/4c/22/4a4c224a0c6667178bebdfa3b6bdb92b.jpg',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignUpPage()));
                    },
                    child: Text(" Sign In"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

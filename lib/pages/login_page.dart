import 'package:firebase_app/pages/auth_controller.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Container(
                  width: w,
                  height: h * 0.2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/spoty.webp'),
                      ),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black),
                ),
              ),
              Container(
                width: w,
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Spotify',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 55,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'Sign into your account',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: emailController,
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey[800],
                          ),
                          labelText: 'Username/email',
                          prefixIcon: Icon(Icons.email)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          icon: Icon(_obscureText
                              ? Icons.visibility
                              : Icons.visibility),
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        GestureDetector(
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  AuthController.instance.login(emailController.text.trim(),
                      passwordController.text.trim());
                },
                child: Container(
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 100),
                  ),
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/signup_page'),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

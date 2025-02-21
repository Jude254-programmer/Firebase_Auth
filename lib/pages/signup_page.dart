import 'package:firebase_app/pages/auth_controller.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool _obsecureText = true;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // spotify image
              Container(
                height: h * 0.2,
                width: w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/spotify-logo.webp'),
                  ),
                ),
              ),

              Container(
                width: w,
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // some text
                    Text(
                      'Sign Up to Spotify Account',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[500],
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    // Textfield 1 email
                    TextField(
                      controller: emailController,
                      style: TextStyle(
                        color: Colors.grey[300],
                      ),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        labelText: 'Email Address',
                        prefixIcon: Icon(Icons.email),
                        hintStyle: TextStyle(color: Colors.grey[800]),
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    // Textfield 3 password
                    TextField(
                      obscureText: true,
                      controller: passwordController,
                      style: TextStyle(
                        color: Colors.grey[300],
                      ),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        labelText: 'Enter a password',
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obsecureText =
                                  !_obsecureText; // Toggle password visiblity
                            });
                          },
                          icon: Icon(_obsecureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 100,
              ),

              // Sign up container
              GestureDetector(
                onTap: () {
                  AuthController.instance.register(emailController.text.trim(),
                      passwordController.text.trim());
                },
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.green),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.grey[200],
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              // sign up with
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                  ),
                  Text(
                    'Sign Up with',
                    style: TextStyle(color: Colors.grey[500], fontSize: 16),
                  ),
                ],
              ),

              const SizedBox(
                height: 6,
              ),

              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 120)),
                  // facebook
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/fb.jpg'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  // google
                  Container(
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/g3.jpg'),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 70,
              ),

              // Text
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 80)),
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.grey[500], fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/login_page'),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
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

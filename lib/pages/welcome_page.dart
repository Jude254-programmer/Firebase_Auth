import 'package:firebase_app/pages/auth_controller.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  final String email;
   const WelcomePage({super.key, required this.email});

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
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      email,
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "example@gmail.com",
                      style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              GestureDetector(
                onTap: () {
                  AuthController.instance.logOut();
                },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Sign Out',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 35),
                    Text(
                      "Log in",
                      style: TextStyle(fontSize: 33),
                    ),
                    const SizedBox(height: 35),
                    Image.asset(
                      "images/mainLogin.jpeg",
                      width: 288,
                    ),
                    const SizedBox(height: 35),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66),
                      ),
                      width: 266,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.person, color: Colors.purple[800]),
                          hintText: "Your Email :",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 23),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66),
                      ),
                      width: 266,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          suffix:
                              Icon(Icons.visibility, color: Colors.purple[900]),
                          icon: Icon(Icons.lock,
                              color: Colors.purple[800], size: 19),
                          hintText: "Password :",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 17),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/task2");
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.purple),
                        padding: WidgetStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 106, vertical: 10),
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27),
                          ),
                        ),
                      ),
                      child: Text("login", style: TextStyle(fontSize: 24)),
                    ),
                    const SizedBox(height: 17),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/signup");
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                child: Image.asset("images/top.jpg", width: 111),
              ),
              Positioned(
                bottom: 0,
                child: Image.asset("images/bottom.jpg", width: 111),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

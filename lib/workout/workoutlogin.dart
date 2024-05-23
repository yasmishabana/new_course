import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:new_course/workout/workout_register.dart';

class WorkOutLogin extends StatelessWidget {
  const WorkOutLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xffff5ebe2),
      appBar: AppBar(
        backgroundColor: const Color(0xffff5ebe2),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Login Page',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
              ),
              const Text(
                "Enter your email address to sign in.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 15,
              ),
                  Container(
                height: MediaQuery.of(context).size.width/2,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/relax_image.png"))),
              ),
              
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      hintText: 'Enter valid mail id as abc@gmail.com'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your secure password'),
                ),
              ),
              InkWell(
                onTap: () {
                  log("usernamecontroller ==" + usernameController.text);
                  log("passwordcontroller ==" + passwordController.text);
                },
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xfff141e30),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Login",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                child: const Text('New User? Create Account',
                    style: TextStyle(
                        color: Color(0xfff141e30),
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WorkOutRegister()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

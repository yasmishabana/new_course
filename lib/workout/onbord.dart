import 'package:flutter/material.dart';
import 'package:new_course/workout/workout_register.dart';
import 'package:new_course/workout/workoutlogin.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffff5ebe2),
        appBar: AppBar(
        backgroundColor: const Color(0xffff5ebe2), 
      
      ),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/welcome.png"))),
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Stay organised and live stress-free \n with you-do app",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: InkWell(
                  onTap: () {
                     Navigator.push(
            context, MaterialPageRoute(builder: (context) => const WorkOutRegister()));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    //width: 100,
                    decoration: BoxDecoration(
                        color: const Color(0xfff141e30),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sign Up",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an Account?"),
                  InkWell(
                    onTap: () {
                        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const WorkOutLogin()));
                    },
                    child: const Text("Login",
                        style: TextStyle(
                            color: Color(0xfff141e30),
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}

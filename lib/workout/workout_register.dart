import 'dart:developer';

import 'package:flutter/material.dart';

class WorkOutRegister extends StatefulWidget {
  const WorkOutRegister({super.key});

  @override
  State<WorkOutRegister> createState() => _WorkOutRegisterState();
}

class _WorkOutRegisterState extends State<WorkOutRegister> {
     final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    // Default Radio Button Selected Item When App Starts.
    String radioButtonItem = '';

    // Group Value for Radio Button.
    int id = 1;
  @override
  Widget build(BuildContext context) {
 

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
              const Text("Sign Up",
                  style:
                      TextStyle(fontSize: 27, fontWeight: FontWeight.w500)),
              const Text(
                "Create a New Account.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      hintText: 'Enter your Name'),
                ),
              ),
              const SizedBox(height:8 ,),
             const Padding(
               padding: EdgeInsets.symmetric(horizontal: 15),
               child: Align(
                    alignment: Alignment.topLeft,
                    child:  Text("Gender",
                        style:
                            TextStyle(fontSize: 18)),
                    //  Text(
                    //   'Login Page',
                    //   style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
                    // ),
                  ),
             ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Radio(
                      value: 1,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'Male';
                          id = 1;
                        });
                      },
                    ),
                    Text(
                      'Male',
                      style: new TextStyle(fontSize: 17.0),
                    ),
                    // SizedBox(
                    //   width: 10,
                    //),
                    Radio(
                      value: 2,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'Female';
                          id = 2;
                        });
                      },
                    ),
                    Text(
                      'Female',
                      style: new TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    Radio(
                      value: 3,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'Others';
                          id = 3;
                        });
                      },
                    ),
                    Text(
                      'Others',
                      style: new TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mobile',
                      hintText: 'Enter valid Mobile No:'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
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
                        Text("Sign Up",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ],
                    ),
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

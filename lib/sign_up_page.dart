import 'package:flutter/material.dart';

import 'login_in_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isSignUpPage = false;
  void add() {
    setState(() {
      isSignUpPage = true;
    });
    print('Button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return isSignUpPage
        ? LogInPage()
        : Scaffold(
            appBar: AppBar(
             title: Text('DABBA'),
                  backgroundColor: Color.fromARGB(255, 239, 103, 6),
                ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      SizedBox(height: 80),
                      Text(
                        'Lets start this journey !',
                        style: 
                        TextStyle(
                            fontSize: 45, fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 209, 131, 75)),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(25),
                    height: 700,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('WELCOME'),
                        const SizedBox(height: 30),
                        TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.center,
                              labelText: '  Enter Your Full Name'),
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.all(25),
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.center,
                              labelText: '  Enter Your Email'),
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.all(25),
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.center,
                              labelText: '  Enter Your Mobile Number'),
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.all(25),
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.center,
                              labelText: '  Create Password'),
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.all(25),
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.center,
                              labelText: '  Confirm Entered Password'),
                        ),
                        const SizedBox(height: 16.0),
                        ElevatedButton(
                          style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                          Color.fromARGB(255, 239, 103, 6),
                                        ),
                                        minimumSize: MaterialStateProperty.all(
                                          Size(double.infinity, 50),
                                        ),
                                      ),
                          onPressed: () {},
                          child: const Text(' Sign Up '),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(iconColor: Colors.black),
                          child: const Text('Already have an account? Login'),
                          onPressed: add,
                        ),
                        const Text('@ DABBA'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}

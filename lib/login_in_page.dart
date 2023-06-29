import 'package:flutter/material.dart';
import 'package:dabba/sign_up_page.dart';

class LogInPage extends StatefulWidget {
  LogInPage();
  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool isLogInPage = false;
  void add() {
    setState(() {
      isLogInPage = true;
    });
    print('Button pressed');
  }

  @override
  Widget build(Buildcontext) {
    return MaterialApp(
        home: isLogInPage
            ? SignUpPage()
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
                            'Welcome Back !',
                            style: TextStyle(
                                fontSize: 45, fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 239, 103, 6)),
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
                                const Text('Fill Details'),
                                const SizedBox(height: 30),
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
                                      labelText: '  Enter Password'),
                                ),
                                const SizedBox(height: 16.0),
                                Column(
                                  children: [
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
                                      child: Text(
                                        'LOGIN',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors
                                              .white, // Set the desired text color
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16.0),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                          iconColor: Colors.black),
                                      child: Text(
                                          'Don\'t have an account? Sign-Up'),
                                      onPressed: add,
                                    ),
                                    Text('@ DABBA'),
                                  ],
                                ),
                              ]
                              )
                              )
                    ]
                    )
                    )
                    )
                    );
  }
}

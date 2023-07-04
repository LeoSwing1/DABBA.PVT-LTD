import 'package:flutter/material.dart';
import 'login_in_page.dart';
import 'package:dabba/pages/splashes/loading_home_splash.dart';
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
    return Container(
      child:isSignUpPage
        ? LogInPage()
        : Scaffold(
            appBar: AppBar(
             title: Text('NEW MEMBER'),
                  backgroundColor: Color.fromARGB(255, 239, 103, 6),
                ),
            body: SingleChildScrollView(
              child: Column(
                children:[
                  Image.asset(
                    'assets/images/DABBA_MAIN_OFFICIAL_TP.png',
                    width: 245,
                    height: 150,
                  ),
                SizedBox(height: 5),
                Padding(padding: EdgeInsets.all(25),
                child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
           
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Hi there! We\'re delighted to see you here Let\'s get started!'),
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
                           onPressed: () => {
                                   Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => LodingHomeSplash()),)},  
                          child: const Text(' Sign Up '),
                        ),
                        SizedBox(height: 16.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Divider(
                                      color: Colors.black,
                                      height: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Text(
                                      'OR',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      color: Colors.black,
                                      height: 20,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.0),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Colors.blue,
                                  ),
                                  minimumSize: MaterialStateProperty.all(
                                    Size(double.infinity, 50),
                                  ),
                                ),
                                onPressed: () {
                                
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.facebook,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Login via Facebook',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 16.0),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Colors.red,
                                  ),
                                  minimumSize: MaterialStateProperty.all(
                                    Size(double.infinity, 50),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.facebook_sharp,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Login via Google',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                        TextButton(
                          style: TextButton.styleFrom(iconColor: Colors.black),
                          child: const Text('Already have an account? Login'),
                          onPressed: add,
                        ),
                        const Text('@ DABBA'),
                      ],
                    ),
                ])
              ),
              ],
            ))));
          
  }
}


import 'package:flutter/material.dart';
import 'package:dabba/pages/SignUpPage.dart';
import 'package:dabba/pages/loading_home_splash.dart';


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
  Widget build(BuildContext context) {
    return  Container(
          child: isLogInPage
              ? SignUpPage()
              : Scaffold(
                  appBar: AppBar(
                    title: Text('WELCOME'),
                    backgroundColor: Color.fromARGB(255, 239, 103, 6),
                  ),
                    body: SingleChildScrollView(
                    child:Column(
                      children: [
                        Image.asset(
                          'assets/images/DABBA_MAIN_OFFICIAL_TP.png',
                          width: 245,
                          height: 150,
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Fill Details'),
                              const SizedBox(height: 15),
                              TextFormField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.all(25),
                                  floatingLabelAlignment:
                                      FloatingLabelAlignment.center,
                                  labelText: '  Enter Your Email',
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.all(25),
                                  floatingLabelAlignment:
                                      FloatingLabelAlignment.center,
                                  labelText: '  Enter Your Mobile Number',
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              TextFormField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.all(25),
                                  floatingLabelAlignment:
                                      FloatingLabelAlignment.center,
                                  labelText: '  Your Password',
                                ),
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
                                     child: Text(
                                       'LOGIN',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
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
                                style: TextButton.styleFrom(
                                  primary: Color.fromARGB(255, 135, 15, 221),
                                ),
                                child: Text('Don\'t have an account? Sign-Up'),
                                onPressed: add,
                              ),
                              Text('@ DABBA'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ));
        
      
    
  }
}

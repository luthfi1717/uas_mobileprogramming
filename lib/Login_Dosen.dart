import 'package:flutter/material.dart';
import 'package:uas_mobileprogramming/Home_Screen.dart';

class LoginDosen extends StatefulWidget {
  const LoginDosen({Key? key}) : super(key: key);

  @override
  State<LoginDosen> createState() => _LoginDosenState();
}

class _LoginDosenState extends State<LoginDosen> {
  final usernamecontrol = TextEditingController();
  final passwordcontrol = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  static String username = "dosen";
  static String password = "dosen123";
  int authentication = 0;
  var _isObscure = true;
  var _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Container(
          width: 3000,
          height: 900,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffffffff), Color(0xff00aec4)],
              begin: Alignment.center,
              end: Alignment.center,
            ),
          ),
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 150),
                  Container(
                    width: 350,
                    height: 550,
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 45),
                          Text('Login Dosen',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Acme',
                                  color: Colors.black.withOpacity(1.0)),
                              textAlign: TextAlign.center),
                          SizedBox(height: 60),
                          Padding(
                            //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  authentication = 0 + 0;
                                  return 'Please Input Username!';
                                } else if (usernamecontrol.text != username) {
                                  authentication = 0 + 0;
                                  print(authentication);
                                  return 'Username doesnt exist!';
                                }
                                return null;
                              },
                              controller: usernamecontrol,
                              decoration: InputDecoration(
                                hintText: 'Input Username',
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                      left: 0.0,
                                      right: 5.0,
                                      top: 0.0,
                                      bottom:
                                          8.0), // add padding to adjust icon
                                  child: Icon(Icons.person_outlined, size: 20),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  authentication = 0 + 0;
                                  return 'Please Input Password!';
                                } else if (passwordcontrol.text != password) {
                                  authentication = 0 + 0;
                                  print(authentication);
                                  return 'Wrong password!';
                                }
                                return null;
                              },
                              controller: passwordcontrol,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Input Password',
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                      left: 0.0,
                                      right: 5.0,
                                      top: 0.0,
                                      bottom:
                                          8.0), // add padding to adjust icon
                                  child: Icon(Icons.lock_outlined, size: 20),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          // Login Button
                          MaterialButton(
                            height: 35.0,
                            minWidth: 250,
                            color: Colors.lightBlueAccent,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            child: new Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 18, fontFamily: 'Montserrat'),
                            ),
                            onPressed: () {
                              final SnackBar failedNotif = SnackBar(
                                behavior: SnackBarBehavior.floating,
                                content: Text(
                                    'Username dan/atau password salah. Harap coba lagi.'),
                                action: SnackBarAction(
                                  label: 'Action',
                                  onPressed: () {},
                                ),
                              );

                              if (username == usernamecontrol.text &&
                                  password == passwordcontrol.text) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             HomePage()));
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(failedNotif);
                              }
                            },
                            splashColor: Colors.lightBlueAccent,
                          ),
                          SizedBox(height: 76),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

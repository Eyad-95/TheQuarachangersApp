import 'package:flutter/material.dart';
import 'home_page.dart';

class Login extends StatelessWidget {
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: media.size.height,
            width: media.size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(56, 103, 180, 1),
                  Color.fromRGBO(15, 148, 180, 1)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: media.size.height * 0.05,
                ),
                Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: media.size.height * 0.15,
                ),
                Form(
                  child: Container(
                    width: media.size.width * 0.80,
                    height: media.size.height * 0.70,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email/Mobile Number',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            fillColor: Colors.black.withOpacity(0.12),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                width: 0,
                                color: Colors.black.withOpacity(0.01),
                              ),
                            ),
                            contentPadding: const EdgeInsets.only(bottom: 55.0),
                          ),
                          obscureText: true,
                        ),
                        SizedBox(
                          height: media.size.height * 0.01,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            fillColor: Colors.black.withOpacity(0.12),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            contentPadding: const EdgeInsets.only(bottom: 55.0),
                          ),
                        ),
                        SizedBox(
                          height: media.size.height * 0.28,
                        ),
                        GestureDetector(
                          onTap: ()=> Navigator.of(context).pushReplacementNamed(HomePage.routeName),
                          child: Container(
                            width: media.size.width * 0.75,
                            height: media.size.height * 0.065,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: media.size.height * 0.01,
                        ),
                        Text(
                          "Forgot Your Password?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

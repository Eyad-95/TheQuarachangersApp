// import 'package:flutter/material.dart';
 import 'choose_screen.dart';

// class LoginScreen extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     final media = MediaQuery.of(context);
//     final controller = PageController(
//       initialPage: 1,
//     );

//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Container(
//               height: media.size.height * 0.25,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: Color.fromRGBO(38, 153, 251, 1),
//               ),
//               child: Container(
//                 child: Center(
//                   child: Image.asset("assets/HA-Logo-WH.png"),
//                 ),
//               ),
//             ),
//             //  bn o???N
//             SizedBox(height: media.size.height * 0.1),
//             Form(
//               child: Column(
//                 children: <Widget>[
//                   Row(
//                     children: <Widget>[
//                       SizedBox(width: media.size.width * 0.15),
//                       Text(
//                         "Email:",
//                         style: TextStyle(
//                           color: const Color.fromRGBO(38, 153, 251, 1),
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: media.size.height * 0.005),
//                   Row(
//                     children: <Widget>[
//                       SizedBox(width: media.size.width * 0.13),
//                       Container(
//                         width: media.size.width * 0.78,
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             hintText: "Enter Your Email",
//                             enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(100.0),
//                               ),
//                               borderSide: BorderSide(
//                                 color: Color.fromRGBO(188, 224, 253, 1),
//                               ),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(100.0),
//                               ),
//                               borderSide: BorderSide(color: Colors.blue),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: media.size.height * 0.023),
//                   Row(
//                     children: <Widget>[
//                       SizedBox(width: media.size.width * 0.15),
//                       Text(
//                         "Password:",
//                         style: TextStyle(
//                           color: const Color.fromRGBO(38, 153, 251, 1),
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: media.size.height * 0.005),
//                   Row(
//                     children: <Widget>[
//                       SizedBox(width: media.size.width * 0.13),
//                       Container(
//                         width: media.size.width * 0.78,
//                         child: TextFormField(
//                           obscureText: true,
//                           decoration: InputDecoration(
//                             hintText: "Enter Your Password",
//                             enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(100.0),
//                               ),
//                               borderSide: BorderSide(
//                                 color: Color.fromRGBO(188, 224, 253, 1),
//                               ),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(100.0),
//                               ),
//                               borderSide: BorderSide(
//                                 color: Colors.blue,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: media.size.height * 0.08),
//                   InkWell(
//                     onTap:()=> Navigator.pushNamed(context,ChooseScreen.routeName),
//                     child: Container(
//                       height: 70,
//                       width: 300,
//                       child: Center(
//                         child: Text(
//                           "Login",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 30.0,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(100),
//                         color: Color.fromRGBO(38, 153, 251, 1),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: media.size.height * 0.008),
//                   InkWell(
//                     child: Container(
//                       height: 70,
//                       width: 300,
//                       child: Center(
//                         child: Text(
//                           "Login With Facebook",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 15.0,
//                             color: Color.fromRGBO(38, 153, 251, 1),
//                           ),
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(100),
//                         border: Border.all(
//                           color: Color.fromRGBO(38, 153, 251, 1),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: media.size.height * 0.015),
//                   Row(
//                     children: <Widget>[
//                       SizedBox(width: media.size.width * 0.25),
//                       Text(
//                         "Doesn't Have An Account?",
//                         style: TextStyle(
//                           fontSize: 12.0,
//                           color: Color.fromRGBO(38, 153, 251, 1),
//                         ),
//                       ),
//                       Text(
//                         "Sign Up",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 12.0,
//                           color: Color.fromRGBO(38, 153, 251, 1),
//                         ),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: media.size.height,
          width: media.size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/Hospitals Around/v.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                width: media.size.width * 0.133,
                height: media.size.height * 0.07,
              ),
              Container(
                width: media.size.width * 0.74,
                height: media.size.height * 0.71,
                child: Image.asset(
                  "assets/images/Group 2.png",
                ),
              ),
              SizedBox(
                width: media.size.width * 0.133,
                height: media.size.height * 0.007,
              ),
              GestureDetector(
                onTap:() => Navigator.of(context).pushNamed(ChooseScreen.routeName),
                child: Container(
                  width: media.size.width * 0.74,
                  height: media.size.height * 0.075,
                  child: Image.asset(
                    "assets/images/Group 4.png",
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

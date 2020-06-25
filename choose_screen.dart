// import 'package:flutter/material.dart';

// class ChooseScreen extends StatelessWidget {
//   static const routeName = '/selectedpage';
//   @override
//   Widget build(BuildContext context) {
//     final media = MediaQuery.of(context);
//     return Scaffold(
//       body: SafeArea(
//               child: Container(
//           width: media.size.width,
//           height: media.size.height,
//           child: Column(
//             children: <Widget>[
//               Card(
//                 elevation: 2,
//                 child: Container(
//                   width: media.size.width ,
//                   height: media.size.height  * 0.3,
//                   decoration: BoxDecoration(
//                     color: Colors.greenAccent[100],
//                     image: DecorationImage(
//                       colorFilter: ColorFilter.mode(
//                           Colors.black.withOpacity(0.1), BlendMode.dstATop),
//                       image: AssetImage(
//                         "assets/thumbs_b_c_e6402bd2e8eddd783ad76d4c69200c47.jpg",
//                       ),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               Divider(
//                 thickness: 5,
//               ),
//               Card(
//                 elevation: 2,
//                 child: Container(
//                   width: media.size.width ,
//                   height: media.size.height * 0.4,
//                   decoration: BoxDecoration(
//                     color: Colors.redAccent[100],
//                     image: DecorationImage(
//                       colorFilter: ColorFilter.mode(
//                           Colors.black.withOpacity(0.1), BlendMode.dstATop),
//                       image: AssetImage(
//                         "assets/shutterstock_102226078.jpg",
//                       ),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login.dart';
import 'sign_up.dart';

class ChooseScreen extends StatelessWidget {
  static const routeName = '/choose-screen';

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
                width: media.size.width * 0.0001,
                height: media.size.height * 0.07,
              ),
              Container(
                width: media.size.width * 0.66,
                height: media.size.height * 0.42,
                child: Image.asset(
                  "assets/images/Group 2.png",
                ),
              ),
              Container(
                width: media.size.width * 0.66,
                height: media.size.height * 0.12,
                child: Image.asset(
                  "assets/images/Group 1612.png",
                ),
              ),
              SizedBox(
                width: media.size.width * 0.0001,
                height: media.size.height * 0.05,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).pushNamed(Login.routeName),
                child: Container(
                  width: media.size.width * 0.74,
                  height: media.size.height * 0.049,
                  child: Image.asset(
                    "assets/images/Group 1441.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: media.size.width * 0.0001,
                height: media.size.height * 0.01,
              ),
              Container(
                width: media.size.width * 0.74,
                height: media.size.height * 0.049,
                child: Image.asset(
                  "assets/images/Group 1442.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: media.size.width * 0.0001,
                height: media.size.height * 0.005,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: media.size.width * 0.29,
                  ),
                  Container(
                    width: media.size.width * 0.39,
                    height: media.size.height * 0.02,
                    child: Image.asset(
                      "assets/images/Don't have an account.png",
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed(SignUpPage.routeName),
                    child: Container(
                      width: media.size.width * 0.1,
                      height: media.size.height * 0.02,
                      child: Image.asset(
                        "assets/images/Register.png",
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

import 'dart:async';

import 'package:chat/constants.dart';
import 'package:chat/screens/signinOrSignUp/signin_or_signup_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay of 2 seconds before navigating to the main screen.
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => SigninOrSignupScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kContentColorLightTheme,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            Center(
              child: Container(
                width: 80,
                height: 80,
                child: Image.asset("assets/images/Logo.png"),
              ),
            ),
            const Spacer(flex: 3),
            const Text(
              "from",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: kSecondaryColor,
                // color: Theme.of(context)
                //     .textTheme
                //     .bodyLarge!
                //     .color!
                //     .withOpacity(0.64),
              ),
            ),
            Container(
              width: 100,
              height: 50,
              child: Image.asset("assets/images/meta_logo.png"),
            ),
            // const Spacer(flex: 2),
            // Image.asset("assets/images/welcome_image.png"),
            // const Spacer(flex: 3),
            // Text(
            //   "Welcome to our XYZNamed \nmessaging app",
            //   textAlign: TextAlign.center,
            //   style: Theme.of(context)
            //       .textTheme
            //       .headlineSmall!
            //       .copyWith(fontWeight: FontWeight.bold),
            // ),
            // const Spacer(),
            // Text(
            //   "Empowering Conversations, Simplifying Connections, \n All Through One App.",
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     color: Theme.of(context)
            //         .textTheme
            //         .bodyLarge!
            //         .color!
            //         .withOpacity(0.64),
            //   ),
            // ),
            // const Spacer(flex: 3),
            // FittedBox(
            //   child: TextButton(
            //       onPressed: () => Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //               builder: (context) => SigninOrSignupScreen(),
            //             ),
            //           ),
            //       child: Row(
            //         children: [
            //           Text(
            //             "Skip",
            //             style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            //                   color: Theme.of(context)
            //                       .textTheme
            //                       .bodyLarge!
            //                       .color!
            //                       .withOpacity(0.8),
            //                 ),
            //           ),
            //           const SizedBox(width: kDefaultPadding / 4),
            //           Icon(
            //             Icons.arrow_forward_ios,
            //             size: 16,
            //             color: Theme.of(context)
            //                 .textTheme
            //                 .bodyLarge!
            //                 .color!
            //                 .withOpacity(0.8),
            //           )
            //         ],
            //       )),
            // )
          ],
        ),
      ),
    );
  }
}

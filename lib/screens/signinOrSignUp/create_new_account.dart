import 'package:chat/components/primary_button.dart';
import 'package:chat/components/secondary_button.dart';
// import 'package:chat/components/secondary_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/screens/chats/chats_screen.dart';
import 'package:chat/screens/signinOrSignUp/forgot_password.dart';
import 'package:chat/screens/signinOrSignUp/searchbyemail.dart';
import 'package:chat/screens/signinOrSignUp/user_name.dart';
import 'package:flutter/material.dart';

class CreateNewAccount extends StatelessWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                // padding: EdgeInsets.all(0),
                icon: const Icon(Icons.arrow_back), // Use any icon you prefer.
                onPressed: () {
                  Navigator.pop(
                      context); // This will pop the current screen and return to the previous screen.
                },
              ),
              const Text(
                "Join Facebook to use \nMessenger",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Image.asset("assets/images/createnewaccount.jpg"),
              const SizedBox(height: kDefaultPadding / 2),
              const SizedBox(height: 10),
              const Text(
                "You will need a Facebook account to use \nMessenger. Create account to connect \nwith friends, family and people who share your interests",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 10),
              PrimaryButton(
                text: "Get Started",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserName(),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SecondaryButton(
                text: "I already have an account",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgotPassword(),
                  ),
                ),
              ),
              const Spacer(flex: 20),
            ],
          ),
        ),
      ),
    );
  }
}

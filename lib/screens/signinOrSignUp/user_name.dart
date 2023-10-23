import 'package:chat/components/primary_button.dart';
import 'package:chat/components/secondary_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/screens/chats/chats_screen.dart';
import 'package:chat/screens/signinOrSignUp/forgot_password.dart';
import 'package:chat/screens/signinOrSignUp/searchbyemail.dart';
import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  UserName({Key? key}) : super(key: key);

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

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
                icon: Icon(Icons.arrow_back), // Use any icon you prefer.
                onPressed: () {
                  Navigator.pop(
                      context); // This will pop the current screen and return to the previous screen.
                },
              ),
              const Text(
                "What's your name?",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              const Text("Enter the name you use in real life."),
              Spacer(flex: 1),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: firstNameController,
                      decoration: InputDecoration(
                        labelText: 'First name',
                        labelStyle: const TextStyle(
                            color: Colors.black45, fontWeight: FontWeight.w500),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        // hintText: 'Mobile number or email',
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: lastNameController,
                      decoration: InputDecoration(
                        labelText: 'Last name',
                        labelStyle: const TextStyle(
                            color: Colors.black45, fontWeight: FontWeight.w500),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        // hintText: 'Mobile number or email',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: kDefaultPadding / 2),
              const SizedBox(height: 10),
              PrimaryButton(
                text: "Next",
                press: () {},
                // press: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const ChatsScreen(),
                //   ),
                // ),
              ),
              const Spacer(flex: 18),
              TextButton(
                onPressed: () {
                  // Navigate to ScreenB
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                },
                child: const Center(
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(color: kPrimaryColor),
                  ),
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}

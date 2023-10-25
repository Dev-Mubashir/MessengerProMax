import 'package:chat/components/primary_button.dart';
import 'package:chat/components/secondary_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/screens/chats/chats_screen.dart';
import 'package:chat/screens/signinOrSignUp/create_new_account.dart';
import 'package:chat/screens/signinOrSignUp/forgot_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'checkbox.dart';

class SigninOrSignupScreen extends StatelessWidget {
  SigninOrSignupScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              const Spacer(flex: 2),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? "assets/images/Logo.png"
                    : "assets/images/Logo.png",
                // ? "assets/images/Logo_light.png"
                // : "assets/images/Logo_dark.png",
                height: 130,
              ),
              const SizedBox(height: 40),
              const Text(
                "Login with your phone number \nor Email",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kwhite,
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Phone number or email',
                  filled: true,
                  fillColor: kgreylight,
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),

                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  // hintText: 'Mobile number or email',
                ),
              ),
              const SizedBox(height: 2),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  filled: true,
                  fillColor: kgreylight,
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  // hintText: 'Enter your Password',
                ),
              ),
              const SizedBox(height: kDefaultPadding / 1.5),
              Row(
                children: <Widget>[
                  CustomCircularCheckbox(
                      // activeColor: kPrimaryColor,
                      // value:
                      //     true, // Set the initial value as true if you want it to be checked initially
                      // onChanged: (bool? value) {
                      //   // Handle checkbox state changes here
                      //   // You can update your data or perform actions when the checkbox is clicked
                      // },
                      ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Save login info',
                    style: TextStyle(
                        fontSize: 16, color: kgrey, fontWeight: FontWeight.w500
                        // You can customize the text's style as needed
                        ),
                  ),
                ],
              ),
              const SizedBox(height: kDefaultPadding / 1.5),
              PrimaryButton(
                text: "Log In",
                press: () {},
                // press: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const ChatsScreen(),
                //   ),
                // ),
              ),
              const SizedBox(height: kDefaultPadding / 1.5),
              PrimaryButton(
                // color: Theme.of(context).colorScheme.secondary,
                text: "Create new account",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateNewAccount(),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Navigate to ScreenB
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                },
                child: Text("Forgotten your Password?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w700)),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

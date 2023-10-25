import 'package:chat/components/primary_button.dart';
import 'package:chat/components/secondary_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/screens/chats/chats_screen.dart';
import 'package:chat/screens/signinOrSignUp/create_new_account.dart';
import 'package:chat/screens/signinOrSignUp/forgot_password.dart';
import 'package:flutter/material.dart';

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
              const Spacer(flex: 1),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? "assets/images/Logo.png"
                    : "assets/images/Logo.png",
                // ? "assets/images/Logo_light.png"
                // : "assets/images/Logo_dark.png",
                height: 120,
              ),
              SizedBox(height: 20),
              Text(
                "Login with your phone number or email",
                style:
                    TextStyle(color: Theme.of(context).colorScheme.secondary),
              ),
              SizedBox(height: 20),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Mobile number or email',
                  labelStyle: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w500),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  // hintText: 'Mobile number or email',
                ),
              ),
              const SizedBox(height: kDefaultPadding / 2),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w500),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  // hintText: 'Enter your Password',
                ),
              ),
              const SizedBox(height: kDefaultPadding * 1.5),
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
              const SizedBox(height: kDefaultPadding / 2),
              TextButton(
                onPressed: () {
                  // Navigate to ScreenB
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                },
                child: Text("Forgot Password?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    )),
              ),
              const Spacer(
                flex: 2,
              ),
              SecondaryButton(
                // color: Theme.of(context).colorScheme.secondary,
                text: "Create new account",
                color: Theme.of(context).colorScheme.secondary,
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateNewAccount(),
                  ),
                ),
              ),
              const SizedBox(height: kDefaultPadding * 1.5),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:chat/components/primary_button.dart';
import 'package:chat/components/secondary_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/screens/chats/chats_screen.dart';
import 'package:chat/screens/signinOrSignUp/searchbyemail.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);

  final TextEditingController numberController = TextEditingController();

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
                "Find your account",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              const Text("Enter your mobile number"),
              Spacer(flex: 1),
              TextField(
                keyboardType: TextInputType.number,
                controller: numberController,
                decoration: InputDecoration(
                  labelText: 'Mobile number',
                  labelStyle: const TextStyle(
                      color: Colors.black45, fontWeight: FontWeight.w500),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  // hintText: 'Mobile number or email',
                ),
              ),
              const SizedBox(height: kDefaultPadding / 2),
              const SizedBox(height: 10),
              PrimaryButton(
                text: "Find account",
                press: () {},
                // press: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const ChatsScreen(),
                //   ),
                // ),
              ),
              TextButton(
                onPressed: () {
                  // Navigate to ScreenB
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchByEmail()),
                  );
                },
                child: const Center(
                  child: Text(
                    "Search by email instead",
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
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

import 'package:flutter/material.dart';

import '../../../constants.dart';

class ChatInputField extends StatelessWidget {
  ChatInputField({
    Key? key,
  }) : super(key: key);

  final TextEditingController chatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: kblack,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 32,
            color: const Color(0xFF087949).withOpacity(0.08),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.add_circle,
              color: kPrimaryColor,
              // color: Theme.of(context)
              //     .textTheme
              //     .bodyLarge!
              //     .color!
              //     .withOpacity(0.64),
            ),
            const SizedBox(width: kDefaultPadding / 2),
            const Icon(
              Icons.camera_alt,
              color: kPrimaryColor,
              // color: Theme.of(context)
              //     .textTheme
              //     .bodyLarge!
              //     .color!
              //     .withOpacity(0.64),
            ),
            const SizedBox(width: kDefaultPadding / 2),
            const Icon(
              Icons.image_outlined,
              color: kPrimaryColor,
              // color: Theme.of(context)
              //     .textTheme
              //     .bodyLarge!
              //     .color!
              //     .withOpacity(0.64),
            ),
            const SizedBox(width: kDefaultPadding / 2),
            const Icon(Icons.mic, color: kPrimaryColor),
            // const SizedBox(width: kDefaultPadding / 5),
            Expanded(
              child: TextField(
                controller: chatController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Aa",
                    // border: InputBorder.none,
                    filled: true,
                    fillColor: kgreydark,
                    suffixIcon: Icon(
                      Icons.emoji_emotions,
                      color: kPrimaryColor,
                    )),
              ),
            ),
            // const Icon(
            //   Icons.emoji_emotions,
            //   color: kPrimaryColor,
            //   // color: Theme.of(context)
            //   //     .textTheme
            //   //     .bodyLarge!
            //   //     .color!
            //   //     .withOpacity(0.64),
            // ),
            SizedBox(width: kDefaultPadding / 4),
            const Icon(
              Icons.thumb_up,
              color: kPrimaryColor,
            ),
            // Expanded(
            //   child: Container(
            //     padding: const EdgeInsets.symmetric(
            //       horizontal: kDefaultPadding * 0.75,
            //     ),
            //     // decoration: BoxDecoration(
            //     //   color: kPrimaryColor.withOpacity(0.05),
            //     //   borderRadius: BorderRadius.circular(40),
            //     // ),
            //     child: Row(
            //       children: [],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

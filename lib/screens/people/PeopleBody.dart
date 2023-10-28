import 'package:chat/constants.dart';
import 'package:chat/models/Chat.dart';
import 'package:chat/models/peopleonline.dart';
import 'package:chat/screens/chats/components/chat_card.dart';
import 'package:chat/screens/messages/message_screen.dart';
import 'package:chat/screens/people/people_card.dart';
import 'package:flutter/material.dart';

class PeopleBody extends StatelessWidget {
  const PeopleBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.3,
                vertical: kDefaultPadding / 2),
            child: Text(
              "Active now (7)",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: peopleData.length,
              itemBuilder: (context, index) => PeopleCard(
                People: peopleData[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MessagesScreen(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

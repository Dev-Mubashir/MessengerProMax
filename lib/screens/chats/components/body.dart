import 'package:chat/components/filled_outline_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/models/Chat.dart';
import 'package:chat/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';

import 'chat_card.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding / 3),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.05,
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: kgreydark,
                label: Text("Search"),
                // labelText: 'Search',
                // hintText: 'Search for something...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide.none,
                ),
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(15.0),
                // ),
              ),
              onChanged: (value) {
                // Handle search logic here
                print('Searching for: $value');
              },
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
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
    );
  }
}

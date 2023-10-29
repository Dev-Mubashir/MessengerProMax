import 'package:chat/constants.dart';
import 'package:chat/screens/calls/calls.dart';
import 'package:chat/screens/people/people.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: buildAppBar(),
      body: Body(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: kPrimaryColor,
      //   child: const Icon(
      //     Icons.person_add_alt_1,
      //     color: Colors.white,
      //   ),
      // ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: kblack,
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (int index) {
        // value == _selectedIndex;
        if (index == 1) {
          _showCallsPopup(context);
        }
        if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const People(),
            ),
          );
        }
        // setState(() {
        //   _selectedIndex = index;
        // });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.video_call), label: "Calls"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "Stories"),
        // BottomNavigationBarItem(
        //   icon: CircleAvatar(
        //     radius: 14,
        //     backgroundImage: AssetImage("assets/images/user_2.png"),
        //   ),
        //   label: "Profile",
        // ),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: const Icon(
        Icons.menu,
        color: kPrimaryColor,
      ),
      backgroundColor: kblack,
      automaticallyImplyLeading: false,
      title: Center(child: const Text("Chats")),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.new_releases,
            color: kPrimaryColor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

void _showCallsPopup(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true, // Makes the bottom sheet a bit taller
    builder: (BuildContext context) {
      return Container(
        // This is where you can customize the content of the bottom sheet
        height: MediaQuery.sizeOf(context).height * 0.8,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: const Column(
          children: [
            Text("Your Calls List"),
            // Add your list of call items and buttons here
          ],
        ),
      );
    },
  );
}

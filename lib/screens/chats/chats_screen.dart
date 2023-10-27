import 'package:chat/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selectedIndex = 1;
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
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.video_call), label: "Calls"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
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

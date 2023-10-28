import 'package:chat/constants.dart';
import 'package:chat/screens/messages/components/body.dart';
import 'package:chat/screens/people/PeopleBody.dart';
import 'package:flutter/material.dart';

class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: buildAppBar(),
      body: PeopleBody(),
      // bottomNavigationBar: buildBottomNavigationBar(),
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
      title: Center(child: const Text("People")),
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

  // BottomNavigationBar buildBottomNavigationBar() {
  //   return BottomNavigationBar(
  //     backgroundColor: kblack,
  //     type: BottomNavigationBarType.fixed,
  //     currentIndex: _selectedIndex,
  //     onTap: (value) {
  //       setState(() {
  //         _selectedIndex = value;
  //       });
  //     },
  //     items: const [
  //       BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chats"),
  //       BottomNavigationBarItem(icon: Icon(Icons.video_call), label: "Calls"),
  //       BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
  //       BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
  //       // BottomNavigationBarItem(
  //       //   icon: CircleAvatar(
  //       //     radius: 14,
  //       //     backgroundImage: AssetImage("assets/images/user_2.png"),
  //       //   ),
  //       //   label: "Profile",
  //       // ),
  //     ],
  //   );
  // }
}

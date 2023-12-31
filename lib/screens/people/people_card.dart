// import 'package:People/models/Chat.dart';
// import 'package:People/models/peopleonline.dart';
import 'package:chat/models/peopleonline.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class PeopleCard extends StatelessWidget {
  const PeopleCard({
    Key? key,
    required this.People,
    required this.press,
  }) : super(key: key);

  final peopleOnline People;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.65),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(People.image),
                ),
                if (People.isActive)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            width: 3),
                      ),
                    ),
                  )
              ],
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      People.name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 8),
                    // Opacity(
                    //   opacity: 0.64,
                    //   child: Text(
                    //     People.lastMessage,
                    //     maxLines: 1,
                    //     overflow: TextOverflow.ellipsis,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            // Opacity(
            //   opacity: 0.64,
            //   child: Text(People.time),
            // ),
          ],
        ),
      ),
    );
  }
}

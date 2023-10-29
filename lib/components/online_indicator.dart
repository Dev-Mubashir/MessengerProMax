import 'package:flutter/material.dart';

class OnlineIndicator extends StatelessWidget {
  final String imageUrl;
  final bool isOnline;

  OnlineIndicator({required this.imageUrl, this.isOnline = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 40.0, 
          backgroundImage:
              NetworkImage(imageUrl),
        ),
        if (isOnline)
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 16, 
              height: 16, 
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green, 
              ),
            ),
          ),
      ],
    );
  }
}

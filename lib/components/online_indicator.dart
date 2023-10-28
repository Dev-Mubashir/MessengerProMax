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
          radius: 40.0, // Adjust the size as needed
          backgroundImage:
              NetworkImage(imageUrl), // Replace with your image source
        ),
        if (isOnline)
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 16, // Adjust the size as needed
              height: 16, // Adjust the size as needed
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green, // You can customize the color
              ),
            ),
          ),
      ],
    );
  }
}

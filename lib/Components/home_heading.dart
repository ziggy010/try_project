import 'package:flutter/material.dart';

class VideosHeading extends StatelessWidget {
  final String specificHeading;

  VideosHeading({required this.specificHeading});

  @override
  Widget build(BuildContext context) {
    return Text(
      specificHeading,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'poppins',
      ),
    );
  }
}

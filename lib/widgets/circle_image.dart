import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    super.key,
    this.imageProvider,
    this.imageRadious = 20,
  });

  final double imageRadious;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadious,
      child: CircleAvatar(
        radius: imageRadious - 5,
        backgroundImage: imageProvider,
      ),
    );
  }
}

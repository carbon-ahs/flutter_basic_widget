// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../ahsan_theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    super.key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadious: 28,
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: AhsanTheme.lightTextThemeAh.bodyMedium,
                  ),
                  Text(
                    title,
                    style: AhsanTheme.lightTextThemeAh.bodyMedium,
                  ),
                ],
              )
            ],
          ),
          IconButton(
            onPressed: () {
              _onPressIconBtn(context);
            },
            icon: Icon(Icons.favorite_border),
            iconSize: 30,
          )
        ],
      ),
    );
  }

  void _onPressIconBtn(context) {
    const snackBar = SnackBar(content: Text('Fevorite Pressed'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

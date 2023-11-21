// ignore_for_file: prefer_const_constructors

import 'dart:core';

import 'package:flutter/material.dart';

import 'ahsan_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  final catagory = 'Editor\'s Choice';
  final title = 'The Art of Dough';
  final descreption = 'Learn to make the perfect bread.';
  final chef = 'One and Only Sobuz vai';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          margin: const EdgeInsets.all(12.0),
          constraints: const BoxConstraints.expand(
            width: 350,
            height: 450,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/mag1.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            // Stack of text
          ),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 10,
                child: Text(
                  catagory,
                  style: AhsanTheme.darkTextThemeAh.bodyLarge,
                ),
              ),
              Positioned(
                top: 30,
                left: 10,
                child: Text(
                  title,
                  style: AhsanTheme.darkTextThemeAh.displayLarge,
                ),
              ),
              Positioned(
                bottom: 30,
                right: 10,
                child: Text(
                  descreption,
                  style: AhsanTheme.darkTextThemeAh.displaySmall,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Text(
                  chef,
                  style: AhsanTheme.darkTextThemeAh.displaySmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';
import 'main.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            //  dark overlay BoxDecoration
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            // Container, Column, Icon and Text
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.book,
                      color: Colors.white,
                      size: 40,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Recipe Trends',
                      style: FooderlichTheme.darkTextTheme.displaySmall,
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 12,
                        runSpacing: 12,
                        children: [
                          Chip(
                            label: Text(
                              'Healthty',
                              style: FooderlichTheme.darkTextTheme.displaySmall,
                            ),
                            backgroundColor: Colors.black.withOpacity(0.7),
                            onDeleted: () => log('deleted'),
                          ),
                          Chip(
                            label: Text(
                              'Vegan',
                              style: FooderlichTheme.darkTextTheme.displaySmall,
                            ),
                            backgroundColor: Colors.black.withOpacity(0.7),
                            onDeleted: () => log('deleted'),
                          ),
                          Chip(
                            label: Text(
                              'Carrot',
                              style: FooderlichTheme.darkTextTheme.displaySmall,
                            ),
                            backgroundColor: Colors.black.withOpacity(0.7),
                            onDeleted: () => log('deleted'),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),

// TODO: Add Center widget with Chip widget children
          ],
        ),
      ),
    );
  }
}

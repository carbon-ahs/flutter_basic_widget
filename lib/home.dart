import 'package:flutter/material.dart';

import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List pages = [
    Container(
      color: const Color.fromARGB(255, 202, 225, 237),
      child: Card1(),
    ),
    Container(
      color: Color.fromARGB(255, 109, 160, 187),
      child: Card2(),
    ),
    Container(
      color: Color.fromARGB(255, 202, 225, 237),
      child: Card3(),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Theme',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          selectedItemColor: // Colors.white,
              Theme.of(context).textSelectionTheme.selectionColor,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card3',
            )
          ]),
      body: pages[_selectedIndex],

      // Center(
      //     child: Text('Let\'s get cooking ! ',
      //         style: Theme.of(context).textTheme.displayLarge))
    );
  }
}

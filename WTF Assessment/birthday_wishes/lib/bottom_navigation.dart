import 'package:birthday_wishes/message.dart';
import 'package:birthday_wishes/wishes.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigtionState();
}

class _BottomNavigtionState extends State<BottomNavigation> {
  int indexToBeShown = 0;

  var pages = [Message(), Wishes()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[indexToBeShown],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexToBeShown,
        onTap: (newIndex) {
          setState(() {
            indexToBeShown = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(label: "Message", icon: Icon(Icons.message)),
          BottomNavigationBarItem(label: "Wishes", icon: Icon(Icons.star)),
        ],
      ),
    );
  }
}

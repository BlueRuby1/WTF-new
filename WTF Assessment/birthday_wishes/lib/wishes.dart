import 'package:flutter/material.dart';

class Wishes extends StatelessWidget {
  const Wishes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade200,
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.auto_awesome,
                        size: 15,
                        color: Colors.yellow.shade400,
                      ),
                      Text(
                        "BIRTHDAY WISHES",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.purple.shade500,
                        ),
                      ),
                      Icon(
                        Icons.auto_awesome,
                        size: 15,
                        color: Colors.yellow.shade400,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(12),
                  ),
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " Happy Birthday My Love,\n \nI was thinking of what to give you or do for you on your birthday and I could think of anything because i don't have any money. but then, I was given an assignment and I thought that this could work. at least you will know that I was thinking of you and I really really love you. Happy birthday to the best sister ever, thank you for all you do and I hope you know that I do not take anything for granted. I hope you have the best day ever and that next year I can get you something better or build you something better. i love you soooooooooooooooooo much .",
                      style: TextStyle(color: Colors.blueGrey.shade800),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.favorite, color: Colors.red.shade900),
                    Icon(Icons.celebration, color: Colors.yellow.shade800),
                    Icon(Icons.cake, color: Colors.brown.shade600),
                    Icon(Icons.card_giftcard, color: Colors.green.shade700),
                    Icon(Icons.star, color: Colors.amber.shade500),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

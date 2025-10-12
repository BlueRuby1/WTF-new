import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink.shade50,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.cake, size: 100, color: Colors.teal[300]),
              SizedBox(height: 15),
              Text(
                "HAPPY BIRTHDAY",
                style: TextStyle(
                  color: Colors.pink.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 6),
              Text("To", style: TextStyle(color: Colors.pink.shade800)),
              SizedBox(height: 6),
              Text(
                "The Best Sister Ever",
                style: TextStyle(
                  color: Colors.pink.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.celebration,
                    color: Colors.green.shade300,
                    size: 24,
                  ),
                  Icon(
                    Icons.card_giftcard,
                    color: Colors.blue.shade400,
                    size: 24,
                  ),
                  Icon(Icons.favorite, color: Colors.red.shade900, size: 24),
                  Icon(Icons.star, color: Colors.yellow.shade700, size: 24),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.cake, size: 100, color: Colors.purple.shade500),
            SizedBox(height: 15),
            Text("HAPPY BIRTHDAY", style: TextStyle(color: Colors.purple.shade900, fontWeight: FontWeight.bold, fontSize: 30),),
            SizedBox(height: 6,),
            Text("To", style: TextStyle(color: Colors.pink.shade800),),
            SizedBox(height: 6,),
            Text("The Best Sister Ever", style: TextStyle(color: Colors.blue.shade500, fontWeight: FontWeight.bold, fontSize: 30),),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.celebration, color: Colors.yellow.shade300, size: 24,), Icon(Icons.card_giftcard, color: Colors.red.shade400, size: 24,), Icon(Icons.favorite, color: Colors.red.shade900, size: 24,), Icon(Icons.star, color: Colors.yellow.shade700, size: 24,)
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
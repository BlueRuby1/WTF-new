import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 10,
          children: [
            Text(
              "Welcome",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            Text(
              "Start by entering your phone number to continue",
              style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
            ),
            SizedBox(height: 10),
            Text(
              "Phone Number",
              style: TextStyle(fontSize: 15, letterSpacing: 0.7),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                hintText: "+234 800 000 0000",
                hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.grey.shade600,
                fixedSize: Size.fromHeight(52),
              ),
              onPressed: () {},
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: "By Continuing, you agree to our",
                style: TextStyle(color: Colors.grey),
                children: [
                  TextSpan(
                    text: " Terms & Privacy Policy",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

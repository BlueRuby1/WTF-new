import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstwtf_app/widgets/custom_button.dart';
import 'package:myfirstwtf_app/widgets/custom_textfield.dart';
import 'package:myfirstwtf_app/widgets/password_textfield.dart';
import 'package:myfirstwtf_app/widgets/social_signin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool agreeToProcessData = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 16, right: 16, top: 100),

        children: [
          Text(
            "Welcome Back",
            style: GoogleFonts.playfairDisplay(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          Text(
            "Been a While",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),
          CustomTexfield(label: "Email"),
          SizedBox(height: 20),
          PasswordTextfield(),
          SizedBox(height: 20),
          // Row(
          //   children: [
          //     Checkbox(
          //       value: agreeToProcessData,
          //       activeColor: Colors.blueAccent,
          //       onChanged: (value) {
          //         setState(() {
          //           agreeToProcessData = value!;
          //         });
          //       },
          //     ),

          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           "I agree to the processing of",
          //           style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          //         ),
          //         Text(
          //           "Personal data",
          //           style: TextStyle(
          //             color: Colors.blue,
          //             fontWeight: FontWeight.w600,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          SizedBox(height: 25),
          CustomButton(
            text: "Login",
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("/home");
            },
          ),
          SizedBox(height: 20),
          SocialSignin(),

          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed("/signup");
                },
                child: Text(
                  " Sign up",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

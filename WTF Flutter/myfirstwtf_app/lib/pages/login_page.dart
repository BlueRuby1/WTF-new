import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstwtf_app/provider/user_notifier.dart';
import 'package:myfirstwtf_app/widgets/custom_button.dart';
import 'package:myfirstwtf_app/widgets/custom_textfield.dart';
import 'package:myfirstwtf_app/widgets/password_textfield.dart';
import 'package:myfirstwtf_app/widgets/social_signin.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var userNotifier = Provider.of<UserNotifier>(context);

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
          CustomTextfield(
            label: "Email",
            textEditingController: emailController,
          ),
          SizedBox(height: 20),
          PasswordTextfield(textEditingController: passwordController),
          SizedBox(height: 20),

          SizedBox(height: 25),
          CustomButton(
            text: "Login",
            onPressed: () {
              /*calling the login in the notifier class
              */
              userNotifier.login(
                context,
                emailController.text,
                passwordController.text,
              );
            },
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/forgot");
            },
            child: Text("Forgot password?"),
          ),
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



//check email
              // if isn't valid return and show message
              //check password
              // if isn't valid return and show message
              // else login
              // if (emailController.text != "annelady@gmail.com") {
              //   ScaffoldMessenger.of(context).showSnackBar(
              //     SnackBar(content: Text("Not a valid email. Try again")),
              //   );
              //   return;
              // }
              // if (passwordController.text != "23456") {
              //   ScaffoldMessenger.of(context).showSnackBar(
              //     SnackBar(content: Text("Not a valid password. Try again")),
              //   );
              //   return;
              // }
              //
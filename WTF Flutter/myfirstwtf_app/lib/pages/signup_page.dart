import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstwtf_app/provider/user_cubit.dart';
import 'package:myfirstwtf_app/widgets/custom_button.dart';
import 'package:myfirstwtf_app/widgets/custom_textfield.dart';
import 'package:myfirstwtf_app/widgets/password_textfield.dart';
import 'package:myfirstwtf_app/widgets/social_signin.dart';
import 'package:provider/provider.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var userNotifier = Provider.of<UserCubit>(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 80),
            Text(
              "Get Started",
              style: GoogleFonts.play(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            Text(
              "Create an account to continue",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            CustomTextfield(label: "Username"),
            CustomTextfield(label: "Email"),
            PasswordTextfield(),
            PasswordTextfield(),
            CustomButton(
              text: "Sign up",
              onPressed: () {
                // userNotifier.signup(
                //   context,
                //   usernameController.text,
                //   emailController.text,
                // );
              },
            ),
            SocialSignin(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed("/login");
                  },
                  child: Text(
                    " Login",
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
      ),
    );
  }
}

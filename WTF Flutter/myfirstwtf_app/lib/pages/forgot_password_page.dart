import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myfirstwtf_app/widgets/custom_button.dart';
import 'package:myfirstwtf_app/widgets/custom_textfield.dart';
import 'package:otp_input/otp_input.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  bool showOtp = false;
  late Timer timer;
  var seconds = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enter the email address you will like to recieve your recovery pin.",
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            CustomTextfield(label: "Email Address"),
            showOtp
                ? _buildOtpView()
                : Column(
                    children: [
                      CustomButton(
                        onPressed: () {
                          setState(() {
                            showOtp = true;
                          });
                          timer = Timer.periodic(Duration(seconds: 1), (timer) {
                            print("ticked");
                            if (seconds <= 1) {
                              timer.cancel();
                            }
                            setState(() {
                              seconds--;
                            });                           
                          });
                        },
                        text: "Get OTP",
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  Widget _buildOtpView() {
    return Column(
      children: [
        Text("Check your email address and enter the OTP you recieved"),
        OtpInputField(
          otpInputFieldCount: 5,
          fieldStyle: OtpFieldStyle.circle,
          onOtpEntered: (otp) {
            print('Entered OTP: $otp');
            if (otp == "23456") {
              Navigator.pushNamed(context, "/home");
            } else {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text("Invalid OTP")));
            }
            // Perform actions with the entered OTP
          },
        ),
        SizedBox(height: 8),
        Text("$seconds Seconds to request again"),
      ],
    );
  }
}

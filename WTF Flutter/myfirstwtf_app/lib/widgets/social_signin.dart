import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialSignin extends StatelessWidget {
  const SocialSignin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          spacing: 8,
          children: [
            Expanded(child: Divider(color: Colors.black38)),
            Text(
              "Sign in with",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            Expanded(child: Divider(color: Colors.black38)),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.google),
              color: Colors.red,
              iconSize: 28,
            ),
            // InkWell(
            //   onTap: (){},
            //   child: Image.asset("assets/icons8-facebook-96.png", width: 50, height: 50,),
            // ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.facebook),
              color: Colors.blue,
              iconSize: 28,
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.linkedin),
              color: Color(0xFF0A66C2),
              iconSize: 28,
            ),
          ],
        ),
        
      ],
    );
  }
}
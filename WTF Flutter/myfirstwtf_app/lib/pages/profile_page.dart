import 'package:flutter/material.dart';
import 'package:myfirstwtf_app/pages/about_us_page.dart';
import 'package:myfirstwtf_app/pages/notification_page.dart';
import 'package:myfirstwtf_app/pages/payment_method_page.dart';
import 'package:myfirstwtf_app/pages/personal_information_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildProfilePics(),
          _buildDetails(),
          SizedBox(height: 16),

          _buildAccountSection(),
          SizedBox(height: 16),

          _buildSupportSection(),
          SizedBox(height: 56),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red.shade100,
              foregroundColor: Colors.red.shade900,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            icon: Icon(Icons.logout),
            label: Text("Logout"),
          ),
        ],
      ),
    );
  }

  Column _buildSupportSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Support",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return AboutUsPage();
                },
              ),
            );
          },
          title: Text("About Us", style: TextStyle(fontSize: 16)),
          trailing: Icon(Icons.arrow_forward_ios_outlined, size: 16),
        ),
        Divider(),
        ListTile(
          title: Text("Contact Us", style: TextStyle(fontSize: 16)),
          trailing: Icon(Icons.arrow_forward_ios_outlined, size: 16),
        ),
      ],
    );
  }

  Column _buildAccountSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Account",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return PersonalInformationPage();
                },
              ),
            );
          },
          title: Text("Personal Information", style: TextStyle(fontSize: 16)),
          trailing: Icon(Icons.arrow_forward_ios_outlined, size: 16),
        ),
        Divider(),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => PaymentMethodPage()),
            );
          },
          title: Text("Payment Method", style: TextStyle(fontSize: 16)),
          trailing: Icon(Icons.arrow_forward_ios_outlined, size: 16),
        ),
        Divider(),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return NotificationPage();
                },
              ),
            );
          },
          title: Text("Notifications", style: TextStyle(fontSize: 16)),
          trailing: Icon(Icons.arrow_forward_ios_outlined, size: 16),
        ),
        Divider(),
      ],
    );
  }

  Container _buildProfilePics() {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle),
      clipBehavior: Clip.hardEdge,
      child: Image.asset("assets/profile_pic.jpg", width: 100, height: 100),
    );
  }

  Column _buildDetails() {
    return Column(
      children: [
        Text(
          "Hannah Micheal",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        Text(
          "hannahmail@gmail.com",
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13),
        ),
      ],
    );
  }
}

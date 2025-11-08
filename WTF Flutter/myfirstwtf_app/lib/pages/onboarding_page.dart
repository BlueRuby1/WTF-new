import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstwtf_app/model/onboarding_item.dart';

import '../widgets/custom_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int activeIndex = 0;

  List<OnboardingItem> items = [
    OnboardingItem(
      title: "Welcome to Medicall",
      subtitle:
          "We help you take ambulance request for emergency and other purposes",
      asset: "assets/onboardingpage.png",
    ),
    OnboardingItem(
      title: "Get emergency medical help fast",
      subtitle:
          "Wherever you are. Need urgent help? we'll connect you to the nearest hospital.",
      asset: "assets/onboardingpage.png",
    ),
    OnboardingItem(
      title: "Meet Worldclass Respondents",
      subtitle: "We'll connect you to world class respondents",
      asset: "assets/onboardingpage.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var onboardingItemToShow = items[activeIndex];

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          CustomIndicator(
            indicatorCount: items.length,
            activeIndex: activeIndex,
          ),
          Image.asset(onboardingItemToShow.asset, width: 250, height: 250),
          Text(
            onboardingItemToShow.title,
            style: GoogleFonts.aDLaMDisplay(
              fontWeight: FontWeight.w600,
              fontSize: 36,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              onboardingItemToShow.subtitle,
              style: GoogleFonts.k2d(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            activeIndex <= 0
                ? SizedBox(height: 0, width: 0)
                : ElevatedButton(
                    onPressed: () {
                      setState(() {
                        activeIndex = activeIndex - 1;
                      });
                    },
                    child: Text("Back"),
                  ),
            ElevatedButton(
              onPressed: () {
                if (activeIndex < items.length - 1) {
                  setState(() {
                    activeIndex = activeIndex + 1;
                  });
                } else {
                  Navigator.of(context).pushReplacementNamed("/login");
                }
              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}



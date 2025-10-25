import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          CustomIndicator(indicatorCount: 3, activeIndex: activeIndex),
          Image.asset('assets/onboardingpage.png', width: 300, height: 300),
          Text(
            "Welcome to Medicall",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          Text(
            "We help you take ambulance request for emergenccy and other purposes",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
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
                setState(() {
                  activeIndex = activeIndex + 1;
                });
              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({
    super.key,
    required this.indicatorCount,
    required this.activeIndex,
  });
  final int indicatorCount;
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 2,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(indicatorCount, (index) {
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: activeIndex == index ? Colors.blue : Colors.blue.shade200,
          ),
          height: 10,
          width: 10,
        );
      }),
    );
  }
}

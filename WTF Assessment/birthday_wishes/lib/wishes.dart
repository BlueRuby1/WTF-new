import 'package:flutter/material.dart';

class Wishes extends StatelessWidget {
  const Wishes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  " ✨ BIRTHDAY WISHES ✨",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.blue.shade500,
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(12),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Happy, happy, happiest of birthdays to you. \n Today is not just another day; it is a magnificent celebration of you. \n It's a day the universe decided to become a little brighter, a little kinder, and a whole lot more interesting by bringing you into it. \n On this day, a brand new star lit up the sky, and that star was you. I hope you feel, from the moment you wake up until your head hits the pillow tonight, the incredible amount of love, admiration, and joy that surrounds you, not just from those near you, but from everyone whose life you have touched. \n Take a moment to look back on the incredible journey of the past year. Think of the 365 days that have woven together to create the beautiful and intricate tapestry of your life since your last birthday. \n It was a year of laughter that made your sides ache and tears that cleansed your soul. It was a year of challenges that you met with a strength you might not have known you possessed, and triumphs, both big and small, that deserve to be celebrated all over again today. \n You learned, you grew, you evolved. You overcame hurdles, you reached for new heights, and through it all, you remained unapologetically you.\n Every single experience, every lesson, every memory has shaped you into the even more amazing person you are today, and that is something truly worth honoring.I hope you know how much you mean to the people around you.\n You are a source of unwavering light in a world that can sometimes feel dim. You have a kindness that soothes, a strength that inspires, and a wisdom that guides.\n  Your laughter is a melody that can lift the heaviest of spirits, and your presence is a gift that brings comfort and joy. You possess a unique blend of resilience and tenderness, of fierce determination and gentle compassion. You're the person who remembers the little things, who offers a hand without being asked, and who sees the best in others, even when they can't see it in themselves. Your impact is more profound than you could ever possibly realize, rippling outwards and making the world a genuinely better place. Never, ever doubt the wonderful mark you are leaving on this world and in the hearts of those who are lucky enough to know you.As you step into this new chapter, this fresh year of your life, my wishes for you are boundless. I wish you more than just happiness; I wish you profound, soul-deep joy that bubbles up from within and makes you smile for no reason at all. I wish you health and boundless energy to chase every single one of your dreams. I wish you success, not just in your career, but in all your passions and endeavors, may you see your hard work blossom into something truly magnificent.May your coming year be filled with beautiful surprises and delightful adventures. May you travel to places you've only dreamed of, whether they are across the globe or just down a new, unfamiliar road. May you learn a new skill, read a book that changes your perspective, and have conversations that open your mind. May you be surrounded by love that is pure, supportive, and unconditional. May you find peace in the quiet moments and excitement in the loud ones. May you have the courage to take risks, the grace to handle whatever comes your way, and the wisdom to cherish every single moment.So today, please celebrate yourself to the fullest. Eat the cake—the biggest slice!—and don't worry about a thing. Dance to your favorite songs, even if it's just in your living room. Sing at the top of your lungs. Answer every call, read every message, and let the wave of love wash over you. You deserve every compliment, every gift, every hug, and every single good wish coming your way. This day is a tribute to your existence, a festival in your honor.Thank you for being you. The world is immeasurably richer with you in it. May the year ahead be your best one yet, filled with health, love, prosperity, and endless moments of pure, unadulterated happiness.Wishing you the most spectacular, wonderful, and unforgettable birthday imaginable!",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.favorite, color: Colors.red.shade900),
                  Icon(Icons.celebration, color: Colors.yellow.shade800),
                  Icon(Icons.cake, color: Colors.brown.shade600),
                  Icon(Icons.card_giftcard, color: Colors.green.shade700),
                  Icon(Icons.star, color: Colors.amber.shade500),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

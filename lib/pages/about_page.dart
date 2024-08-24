import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'lib/images/nike.png',
              color: Colors.white,
            ),
            const Text(
              "Welcome to Sneaker Shop!",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 30, bottom: 200),
              child: Text(
                "Discover the latest and greatest in sneaker fashion. Whether you're looking for iconic classics, limited-edition releases, or the hottest new drops, we've got you covered. Explore our curated selection and find the perfect pair to step up your style. Your sneaker journey starts here.",
                style: TextStyle(color: Colors.white54, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

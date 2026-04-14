import 'package:flutter/material.dart';

class BrutalHero extends StatelessWidget {
  const BrutalHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFD23E),
      body: Stack(
        children: [
          // 🔥 LEFT SIDE BRUTAL ELEMENT
          Positioned(
            left: -40,
            top: 120,
            child: Transform.rotate(
              angle: -0.3,
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 12),
                color: const Color(0xFF272723),
                child: const Text(
                  "FLUTTER DEV",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
          ),

          // 🔥 RIGHT SIDE BLOCK
          Positioned(
            right: -30,
            bottom: 140,
            child: Transform.rotate(
              angle: 0.25,
              child: Container(
                width: 120,
                height: 120,
                color: const Color(0xFF272723),
              ),
            ),
          ),

          // 🔥 RANDOM SMALL TAG
          Positioned(
            right: 20,
            top: 100,
            child: Transform.rotate(
              angle: -0.2,
              child: Text(
                "UI/UX",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
          ),

          // 🎯 CENTER CONTENT
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // 👋 Small intro
                  Text(
                    "Hello, I'm",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.6),
                      letterSpacing: 1.2,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // 🔥 BIG NAME
                  const Text(
                    "Majid Mehboob",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF272723),
                      height: 1.1,
                    ),
                  ),

                  const SizedBox(height: 14),

                  // 💻 ROLE
                  Text(
                    "Flutter Developer crafting bold digital experiences",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.7),
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // 🎯 CTA BUTTON
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 28, vertical: 16),
                      decoration: BoxDecoration(
                        color: const Color(0xFF272723),
                        border: Border.all(
                          color: const Color(0xFF272723),
                          width: 2,
                        ),
                      ),
                      child: const Text(
                        "VIEW PROJECTS",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 🔥 BOTTOM TEXT STRIP
          Positioned(
            bottom: 40,
            left: -20,
            child: Transform.rotate(
              angle: 0.1,
              child: Container(
                color: const Color(0xFFFAC302),
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: const Text(
                  "AVAILABLE FOR FREELANCE",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF272723),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
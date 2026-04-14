import 'package:flutter/material.dart';

class AboutBentoSection extends StatelessWidget {
  const AboutBentoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFFFD23E),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "ABOUT ME",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Color(0xFF272723),
            ),
          ),

          const SizedBox(height: 20),

          SizedBox(
            height: 420,
            child: Row(
              children: [
                // 🧠 MAIN CARD
                Expanded(
                  flex: 12,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    color: const Color(0xFF272723),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hi, I'm Majid Mehboob 👋",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Flutter Developer crafting high-performance apps with modern UI systems, animations and scalable architecture.",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                // 🧩 RIGHT SIDE (FULL HEIGHT BENTO STACK)
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      // 💻 SKILLS (big white card)
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                          color: Colors.white,
                          padding: const EdgeInsets.all(12),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.code, color: Color(0xFF272723)),
                              SizedBox(height: 8),
                              Text(
                                "Flutter • Dart • Firebase",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF272723),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                      // 🚀 EXPERIENCE
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                          color: Colors.white,
                          padding: const EdgeInsets.all(12),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.work, color: Color(0xFF272723)),
                              SizedBox(height: 8),
                              Text(
                                "2.5+ Years Experience",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                      // 📦 FULL WIDTH WHITE INFO CARD (FIX EMPTY SPACE)
                      Expanded(
                        flex: 3,
                        child: Container(
                          width: double.infinity,
                          color: Colors.white,
                          padding: const EdgeInsets.all(12),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.analytics,
                                  color: Color(0xFF272723)),
                              SizedBox(height: 8),
                              Text(
                                "UI • UX • Animations • Clean Architecture",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF272723),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
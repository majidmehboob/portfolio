import 'package:flutter/material.dart';

class ContactNextLevel extends StatelessWidget {
  const ContactNextLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFFFD23E),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔥 TITLE
          const Text(
            "LET'S WORK TOGETHER",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Color(0xFF272723),
              letterSpacing: 1.5,
            ),
          ),

          const SizedBox(height: 20),

          // 🧩 MAIN LAYOUT
          LayoutBuilder(
            builder: (context, constraints) {
              return Flex(
                direction: constraints.maxWidth > 700
                    ? Axis.horizontal
                    : Axis.vertical,
                children: [
                  // 📇 LEFT INFO PANEL
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(20),
                      color: const Color(0xFF272723),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "MAJID MEHBOOB",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),

                          const SizedBox(height: 10),

                          Text(
                            "Flutter Developer\nUI/UX Engineer\nFreelancer",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              height: 1.5,
                            ),
                          ),

                          const SizedBox(height: 20),

                          _infoTile("📧", "majid@example.com"),
                          _infoTile("📍", "Faisalabad, Pakistan"),
                          _infoTile("⚡", "Available for Freelance"),

                          const SizedBox(height: 30),

                          // 🔥 SMALL BRUTAL CTA
                          Container(
                            padding: const EdgeInsets.all(12),
                            color: const Color(0xFFFAC302),
                            child: const Text(
                              "FAST RESPONSE ⚡",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF272723),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // 🧾 RIGHT FORM PANEL
                  Expanded(
                    flex: 6,
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(20),
                      color: const Color(0xFF1E1E1E),
                      child: Column(
                        children: [
                          _field("Your Name"),
                          const SizedBox(height: 12),
                          _field("Your Email"),
                          const SizedBox(height: 12),
                          _field("Project Details", maxLines: 5),

                          const SizedBox(height: 20),

                          // 🚀 SEND BUTTON
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFAC302),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Center(
                              child: Text(
                                "SEND MESSAGE",
                                style: TextStyle(
                                  color: Color(0xFF272723),
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _field(String hint, {int maxLines = 1}) {
    return TextField(
      maxLines: maxLines,
      style: const TextStyle(color: Colors.white),
      cursorColor: const Color(0xFFFAC302),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white.withOpacity(0.4)),
        filled: true,
        fillColor: Colors.black,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _infoTile(String icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(icon, style: const TextStyle(fontSize: 16)),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
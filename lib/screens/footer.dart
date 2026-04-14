import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF272723),
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        children: [
          // 🔥 NAME
          const Text(
            "MAJID MEHBOOB",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            "Flutter Developer • UI Engineer • Freelancer",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontSize: 12,
            ),
          ),

          const SizedBox(height: 20),

          // 🔗 SOCIAL LINKS (PLACEHOLDER)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _icon(Icons.code),
              const SizedBox(width: 15),
              _icon(Icons.email),
              const SizedBox(width: 15),
              _icon(Icons.link),
            ],
          ),

          const SizedBox(height: 20),

          // ⚡ COPYRIGHT
          Text(
            "© 2026 All Rights Reserved",
            style: TextStyle(
              color: Colors.white.withOpacity(0.4),
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  Widget _icon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.white, size: 16),
    );
  }
}
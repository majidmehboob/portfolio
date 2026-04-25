import 'package:flutter/material.dart';

class ModernNavBar extends StatefulWidget {
  final ScrollController scrollController;
  const ModernNavBar({super.key,required this.scrollController});

  @override
  State<ModernNavBar> createState() => _ModernNavBarState();
}

class _ModernNavBarState extends State<ModernNavBar> {
   bool isScrolled = false;

  @override
  Widget build(BuildContext context) {
    widget.scrollController.addListener(() {
       isScrolled = widget.scrollController.offset > 50;

      if (mounted) {
        setState(() {
          // pass state to navbar later (or use provider)
        });
      }
    });
    return LayoutBuilder(
      builder: (context,constraints) {
        return AnimatedOpacity(
          duration: const Duration(milliseconds: 300),
          opacity: isScrolled
              ? 1.0
              : 0.0,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            decoration: BoxDecoration(
              color: isScrolled
                  ? const Color(0xFF272723)
                  : Colors.transparent,
              border: isScrolled
                  ? Border(
                bottom: BorderSide(
                  color: Colors.white.withOpacity(0.1),
                ),
              )
                  : null,
            ),
            child: SafeArea(
              bottom: false,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 🔥 LOGO
                  const Text(
                    "MAJID.",
                    style: TextStyle(
                      color: Color(0xFFFFD23E),
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2,
                    ),
                  ),

                  // 🧭 MENU
                  if(constraints.maxWidth<=600)
                    SizedBox.shrink()
                  else
                  Row(
                    children: [
                      _navItem("Home"),
                      const SizedBox(width: 20),
                      _navItem("About"),
                      const SizedBox(width: 20),
                      _navItem("Projects"),
                      const SizedBox(width: 20),
                      _navItem("Contact"),
                    ],
                  ),

                  // ⚡ CTA BUTTON
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFD23E),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      "Hire Me",
                      style: TextStyle(
                        color: Color(0xFF272723),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }

  Widget _navItem(String text) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
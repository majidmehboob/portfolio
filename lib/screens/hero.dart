import 'package:flutter/material.dart';

class BrutalHero extends StatelessWidget {
  const BrutalHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFD23E),
      body: LayoutBuilder(
        builder: (context,constraints) {
          return
            constraints.maxWidth > 600?
            Stack(
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
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 750,),
                  child: Container(

                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/splash.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        /// 🔥 LOGO
                        Transform.translate(
                          offset: Offset(40, -20),
                          child: Image.asset(
                            'assets/images/logo.jpg',
                            width: 200,
                            height: 200,
                          ),
                        ),

                        const SizedBox(width: 60),

                     Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  /// NAME
                                  const Text(
                                   "FLUTTER BIRD",// "Majid Mehboob",
                                    style: TextStyle(
                                      fontSize: 50,
                                      fontFamily: 'Knewave',
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xFF272723),
                                      height: 1.1,
                                    ),
                                  ),

                                  const SizedBox(height: 14),

                                  /// ROLE
                                  Text(
                                    "BUILDING BEAUTIFULL APPS \n WITH PERCISION AND DESIGN",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black.withOpacity(0.7),
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                      ],
                    ),
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
          ):
            Stack(
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
                  child: Container(

                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/splash.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        /// 🔥 LOGO
                        Transform.translate(
                          offset: Offset(25, 0),
                          child: Image.asset(
                            'assets/images/logo.jpg',
                            width: 80,
                            height: 80,
                          ),
                        ),

                        const SizedBox(width: 40),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                /// NAME
                                const Text(
                                  "FLUTTER BIRD",// "Majid Mehboob",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Knewave',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFF272723),
                                    height: 1.1,
                                  ),
                                ),

                                const SizedBox(height: 10),

                                /// ROLE
                                Text(
                                  "BUILDING BEAUTIFULL APPS \n WITH PERCISION AND DESIGN",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black.withOpacity(0.7),
                                    height: 1.2,
                                  ),
                                ),
                              ],
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
            );
        }
      ),
    );
  }
}
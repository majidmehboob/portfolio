import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class ProjectCarousel extends StatefulWidget {
  const ProjectCarousel({super.key});

  @override
  State<ProjectCarousel> createState() => _ProjectCarouselState();
}

class _ProjectCarouselState extends State<ProjectCarousel> {
  final PageController _controller =
  PageController(viewportFraction: 0.62, initialPage: 1000);

  Timer? _timer;
  bool isUserInteracting = false;

  final List<String> images = [
    "assets/images/app1.png",
    "assets/images/app2.png",
    "assets/images/app3.png",
  ];

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 3), (_) {
      if (_controller.hasClients && !isUserInteracting) {
        _controller.nextPage(
          duration: const Duration(milliseconds: 900),
          curve: Curves.easeInOutCubic,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanDown: (_) => setState(() => isUserInteracting = true),
      onPanCancel: () => setState(() => isUserInteracting = false),
      onPanEnd: (_) {
        Future.delayed(const Duration(seconds: 2), () {
          setState(() => isUserInteracting = false);
        });
      },
      child: Container(
        height: 600,
        width: double.infinity,
        color: const Color(0xFFFFD23E),
        child: PageView.builder(
          controller: _controller,
          itemBuilder: (context, index) {
            final image = images[index % images.length];

            return AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                double value = 1.0;

                if (_controller.position.haveDimensions) {
                  value = (_controller.page! - index).abs();
                  value = (1 - (value * 0.35)).clamp(0.75, 1.0);
                }

                final isActive = value > 0.95;

                return Center(
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..scale(value)
                      ..setEntry(3, 2, 0.001) // perspective
                      ..rotateY((1 - value) * (index.isEven ? 0.25 : -0.25)),

                    child: Container(
                      width: 270,
                      height: 540,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: isActive
                                ? Colors.black.withOpacity(0.35)
                                : Colors.black.withOpacity(0.15),
                            blurRadius: isActive ? 30 : 15,
                            offset: const Offset(0, 18),
                          ),
                        ],
                      ),
                      child: _buildPhone(image, isActive),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildPhone(String image, bool isActive) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: isActive
              ? const Color(0xFFFAC302)
              : Colors.white24,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: Stack(
            children: [
              // 📱 PARALLAX SCREEN
              AnimatedBuilder(
                animation: _controller,
                builder: (context, _) {
                  double offset = 0;

                  if (_controller.hasClients && _controller.page != null) {
                    offset = (_controller.page! % images.length) * 10;
                  }

                  return Transform.translate(
                    offset: Offset(0, offset * 0.5),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  );
                },
              ),

              // 🔝 NOTCH
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: const EdgeInsets.only(top: 8),
                  width: 90,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              // ✨ ACTIVE GLOW
              if (isActive)
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    gradient: RadialGradient(
                      colors: [
                        const Color(0xFFFAC302).withOpacity(0.15),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'dart:async';
// import 'package:flutter/material.dart';
//
// class ProjectCarousel extends StatefulWidget {
//   const ProjectCarousel({super.key});
//
//   @override
//   State<ProjectCarousel> createState() => _ProjectCarouselState();
// }
//
// class _ProjectCarouselState extends State<ProjectCarousel> {
//   final PageController _controller =
//   PageController(viewportFraction: 0.6, initialPage: 1000);
//
//   Timer? _timer;
//
//   final List<String> images = [
//     "assets/images/app1.png",
//     "assets/images/app2.png",
//     "assets/images/app3.png",
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//
//     _timer = Timer.periodic(const Duration(seconds: 3), (_) {
//       if (_controller.hasClients) {
//         _controller.nextPage(
//           duration: const Duration(milliseconds: 800),
//           curve: Curves.easeInOut,
//         );
//       }
//     });
//   }
//
//   @override
//   void dispose() {
//     _timer?.cancel();
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 560,
//       color: const Color(0xFFFFD23E),
//       child: PageView.builder(
//         controller: _controller,
//         itemBuilder: (context, index) {
//           final image = images[index % images.length];
//
//           return AnimatedBuilder(
//             animation: _controller,
//             builder: (context, child) {
//               double value = 1.0;
//
//               if (_controller.position.haveDimensions) {
//                 value = (_controller.page! - index).abs();
//                 value = (1 - (value * 0.25)).clamp(0.7, 1.0);
//               }
//
//               return Center(
//                 child: Transform.scale(
//                   scale: value,
//                   child: Transform.rotate(
//                     angle: (1 - value) * 0.2, // 🔥 slight tilt
//                     child: _buildPhone(image),
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
//
//   Widget _buildPhone(String image) {
//     return Container(
//       width: 260,
//       height: 520,
//       decoration: BoxDecoration(
//         color: Colors.black,
//         borderRadius: BorderRadius.circular(40),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.3),
//             blurRadius: 25,
//             offset: const Offset(0, 15),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(10),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(30),
//           child: Stack(
//             children: [
//               // 📱 APP SCREENSHOT
//               Positioned.fill(
//                 child: Image.asset(
//                   image,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//
//               // 🔝 NOTCH
//               Align(
//                 alignment: Alignment.topCenter,
//                 child: Container(
//                   margin: const EdgeInsets.only(top: 6),
//                   width: 80,
//                   height: 18,
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/screens/footer.dart';
import 'package:portfolio/screens/hero.dart';
import 'package:portfolio/screens/navbar.dart';
import 'package:portfolio/screens/projects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final ScrollController scrollController = ScrollController();

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // scaffoldBackgroundColor:Color(0xFFFDFFDA),
         scaffoldBackgroundColor:Colors.white,
        appBarTheme: AppBarThemeData(
          backgroundColor: Color(0xFFffd23e)
        ),

      ),

      themeMode: ThemeMode.light,
      home: Scaffold(
        body: Stack(
          children: [
            CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: const BrutalHero(),
                  ),
                ),
                const SliverToBoxAdapter(child: AboutBentoSection()),
                const SliverToBoxAdapter(child: ProjectCarousel()),
                const SliverToBoxAdapter(child: ContactNextLevel()),
                const SliverToBoxAdapter(child: FooterSection()),
              ],
            ),

            // 🔥 NAVBAR ON TOP
             Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: ModernNavBar(scrollController:scrollController),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leadingWidth:MediaQuery.sizeOf(context).width * 0.35,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text("Majid Mehboob"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height,//320,
              padding: EdgeInsets.all(20),
              // margin: EdgeInsets.fromLTRB(20,0,20,20),
              decoration: BoxDecoration(
                color: Color(0xFFffd23e),
                shape: BoxShape.rectangle
              ),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                        'assets/images/logo.png',
                      width: 300,
                      height: 300,
                    ),
                  ),
                  CustomPaint(
                    size: Size(double.infinity, 200),
                    painter: BrushPainter(),
                  )
                ],
              ),
            ),
            // Text("Majid Mehboob",style: TextStyle(fontSize: 100),)
          ],
        ),
      ),

    );
  }
}

class BrushPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 12
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final path = Path();

    path.moveTo(20, 100);
    path.quadraticBezierTo(150, 50, 300, 120);
    path.quadraticBezierTo(350, 200, 400, 100);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
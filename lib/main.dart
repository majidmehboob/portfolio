import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:Color(0xFFFDFFDA),
        appBarTheme: AppBarThemeData(
          backgroundColor: Colors.transparent
        ),

      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor:Color(0xFF131410),
        appBarTheme: AppBarThemeData(
            backgroundColor: Colors.transparent
        ),
      ),
      themeMode: ThemeMode.dark,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.35,//320,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(20,0,20,20),
            decoration: BoxDecoration(
              color: Color(0xFFffd23e),
              shape: BoxShape.rectangle
            ),
          ),
          Text("Majid Mehboob",style: TextStyle(fontSize: 100),)
        ],
      ),

    );
  }
}
